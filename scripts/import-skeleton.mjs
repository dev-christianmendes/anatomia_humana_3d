import { mkdir, readFile, writeFile } from 'node:fs/promises'
import { createHash } from 'node:crypto'
import { execFileSync, spawn } from 'node:child_process'
import { PassThrough } from 'node:stream'
import { fileURLToPath } from 'node:url'
import path from 'node:path'
import unzipper from 'unzipper'
import { Document, NodeIO } from '@gltf-transform/core'
import { ALL_EXTENSIONS } from '@gltf-transform/extensions'
import { dedup, weld, meshopt } from '@gltf-transform/functions'
import { MeshoptEncoder } from 'meshoptimizer'
import { OBJLoader } from '../frontend/node_modules/three/examples/jsm/loaders/OBJLoader.js'

const root = fileURLToPath(new URL('../', import.meta.url))
const base = 'https://dbarchive.biosciencedbc.jp/data/bodyparts3d/LATEST/'
const archiveUrl = `${base}partof_BP3D_4.0_obj_99.zip`
const cache = path.join(root, 'assets/original')
await mkdir(cache, { recursive: true })

async function cachedText(name) {
  const target = path.join(cache, name)
  try { return await readFile(target, 'utf8') } catch {
    execFileSync('curl', ['-fLsS', '--max-time', '120', `${base}${name}`, '-o', target])
    return readFile(target, 'utf8')
  }
}

const elements = (await cachedText('partof_element_parts.txt')).trim().split(/\r?\n/).slice(1).map((line) => line.split('\t'))
const catalog = (await cachedText('partof_parts_list_e.txt')).trim().split(/\r?\n/).slice(1).map((line) => line.split('\t'))
const limbBoneName = /^(right |left )?(.*bone.*|.*phalanx.*|humerus|radius|ulna|femur|tibia|fibula|talus|patella|calcaneus|scaphoid|lunate|triquetral|pisiform|trapezium|trapezoid|capitate|hamate|clavicle|scapula)$/
const concepts = new Set(['FMA23876', ...catalog.filter((row) => limbBoneName.test(row[2])).map((row) => row[0])])
const ids = new Set(elements.filter(([concept]) => concepts.has(concept)).map((row) => row[2]))
if (!ids.size) throw new Error('Official skeleton mapping is empty')
const source = {
  size: async () => {
    const headers = execFileSync('curl', ['-fsSI', '--max-time', '60', archiveUrl], { encoding: 'utf8' })
    const length = Number(headers.match(/content-length:\s*(\d+)/i)?.[1])
    if (!length) throw new Error('Archive size unavailable')
    return length
  },
  stream: (offset, length) => {
    const output = new PassThrough()
    const end = length ? offset + length - 1 : ''
    const request = spawn('curl', ['-fLsS', '--max-time', '120', '--range', `${offset}-${end}`, archiveUrl])
    request.stdout.pipe(output)
    request.on('error', (error) => output.destroy(error))
    request.on('close', (code) => { if (code && !output.destroyed) output.destroy(new Error(`Range request failed: ${code}`)) })
    output.on('close', () => request.kill())
    return output
  },
}
console.log('Reading official ZIP directory...')
const archive = process.argv[2] ? await unzipper.Open.file(process.argv[2]) : await unzipper.Open.custom(source)
const files = archive.files.filter((file) => ids.has(path.basename(file.path, '.obj')) && file.path.endsWith('.obj'))
if (files.length !== ids.size) throw new Error(`Expected ${ids.size} meshes, found ${files.length}`)
let completed = 0
const pending = [...files]
await Promise.all(Array.from({ length: 6 }, async () => {
  while (pending.length) {
    const file = pending.shift()
    const target = path.join(cache, path.basename(file.path))
    try { await readFile(target) } catch { await writeFile(target, await file.buffer()) }
    completed += 1
    if (completed % 20 === 0) console.log(`Downloaded ${completed}/${files.length} meshes`)
  }
}))

const document = new Document()
const buffer = document.createBuffer()
const scene = document.createScene('BodyParts3D skeleton')
const material = document.createMaterial('Bone').setBaseColorFactor([0.78, 0.7, 0.61, 1]).setRoughnessFactor(0.65)
const loader = new OBJLoader()
const manifest = []
let previousManifest = []
try { previousManifest = JSON.parse(await readFile(path.join(root, 'assets/structure-map.json'), 'utf8')) } catch (error) {
  if (error.code !== 'ENOENT') throw error
}
const previousIds = new Map(previousManifest.map((entry) => [entry.sourceId, entry.structureId]))
let nextId = Math.max(0, ...previousManifest.map((entry) => Number(entry.structureId.split('-').at(-1)))) + 1
let triangles = 0
for (const file of files.sort((first, second) => first.path.localeCompare(second.path))) {
  const sourceId = path.basename(file.path, '.obj')
  const content = await readFile(path.join(cache, path.basename(file.path)), 'utf8')
  const object = loader.parse(content)
  const structureId = previousIds.get(sourceId) ?? `STR-ESQ-${String(nextId++).padStart(4, '0')}`
  const mesh = document.createMesh(structureId)
  object.traverse((child) => {
    if (!child.isMesh) return
    const geometry = child.geometry.clone().rotateX(-Math.PI / 2)
    const position = geometry.getAttribute('position')
    const normal = geometry.getAttribute('normal')
    const primitive = document.createPrimitive().setMaterial(material)
      .setAttribute('POSITION', document.createAccessor().setType('VEC3').setArray(new Float32Array(position.array)).setBuffer(buffer))
      .setAttribute('NORMAL', document.createAccessor().setType('VEC3').setArray(new Float32Array(normal.array)).setBuffer(buffer))
    mesh.addPrimitive(primitive)
    triangles += position.count / 3
    geometry.dispose()
  })
  scene.addChild(document.createNode(structureId).setMesh(mesh).setExtras({ structureId, sourceId }))
  manifest.push({ structureId, sourceId, sourceConcepts: elements.filter((row) => row[2] === sourceId).map(([id, name]) => ({ id, name })) })
}
const output = path.join(root, 'frontend/public/models/bodyparts3d-skeleton.glb')
await mkdir(path.dirname(output), { recursive: true })
await MeshoptEncoder.ready
await document.transform(dedup(), weld(), meshopt({ encoder: MeshoptEncoder, level: 'high' }))
await new NodeIO().registerExtensions(ALL_EXTENSIONS).registerDependencies({ 'meshopt.encoder': MeshoptEncoder }).write(output, document)
const binary = await readFile(output)
const license = {
  asset: 'bodyparts3d-skeleton.glb', source: 'BodyParts3D 4.0', author: 'The Database Center for Life Science',
  sourceUrl: archiveUrl, license: 'CC BY 4.0', licenseUrl: 'https://creativecommons.org/licenses/by/4.0/',
  verificationUrl: 'https://dbarchive.biosciencedbc.jp/en/bodyparts3d/lic.html',
  obtainedAt: new Date().toISOString().slice(0, 10),
  attribution: 'BodyParts3D, © The Database Center for Life Science licensed under CC Attribution 4.0 International.',
  modifications: ['Skeleton FMA23876 plus limb bone concepts from official catalog', 'OBJ to glTF 2.0 binary conversion', 'Z-up to Y-up rotation', 'Shared display material', 'Vertex welding, quantization and Meshopt compression', 'Local structureId and original sourceId metadata'],
  permissions: ['Redistribution with attribution', 'Adaptation with attribution'],
  sha256: createHash('sha256').update(binary).digest('hex'), bytes: binary.length, meshes: files.length, triangles,
}
await writeFile(path.join(root, 'assets/licenses.json'), `${JSON.stringify([license], null, 2)}\n`)
await writeFile(path.join(root, 'assets/structure-map.json'), `${JSON.stringify(manifest, null, 2)}\n`)
console.log(JSON.stringify({ output, bytes: binary.length, meshes: files.length, triangles, sha256: license.sha256 }, null, 2))