// Monta o GLB dos musculos da Z-Anatomy a partir do dump binario gerado por
// scripts/export-zanatomy-muscles.py, no mesmo espaco do esqueleto BodyParts3D
// (milimetros, Y-up). Grava frontend/public/models/z-anatomy-muscles.glb,
// assets/z-anatomy-map.json e atualiza assets/licenses.json.
// Uso: node scripts/build-zanatomy-muscles.mjs
import { readFileSync, writeFileSync, mkdirSync } from 'node:fs'
import { createHash } from 'node:crypto'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import * as THREE from '../frontend/node_modules/three/build/three.module.js'
import { mergeVertices } from '../frontend/node_modules/three/examples/jsm/utils/BufferGeometryUtils.js'
import { Document, NodeIO } from '@gltf-transform/core'
import { ALL_EXTENSIONS } from '@gltf-transform/extensions'
import { dedup, weld, meshopt } from '@gltf-transform/functions'
import { MeshoptEncoder } from 'meshoptimizer'

const root = fileURLToPath(new URL('../', import.meta.url))
const sourceDir = path.join(root, 'assets/original/z-anatomy')
const mapPath = path.join(root, 'assets/z-anatomy-map.json')

const manifest = JSON.parse(readFileSync(path.join(sourceDir, 'manifest.json'), 'utf8'))
const excluded = new Set(JSON.parse(readFileSync(path.join(root, 'assets/z-anatomy-excluded.json'), 'utf8')).excludedConcepts)
const raw = readFileSync(path.join(sourceDir, 'muscles.bin'))
const dataView = new DataView(raw.buffer, raw.byteOffset, raw.byteLength)
const entries = []
let offset = 0
for (const meta of manifest) {
  const nameLen = dataView.getUint32(offset, true); offset += 4
  const name = new TextDecoder().decode(raw.subarray(offset, offset + nameLen)); offset += nameLen
  const count = dataView.getUint32(offset, true); offset += 4
  const byteStart = raw.byteOffset + offset
  const positions = new Float32Array(raw.buffer.slice(byteStart, byteStart + count * 12)); offset += count * 3 * 4
  entries.push({ ...meta, name, positions })
}
console.log('manifest', manifest.length, '| dump lido', entries.length)

const OVERRIDES = {
  'trapezius muscle': 'REG-TRUNK', 'serratus anterior muscle': 'REG-TRUNK',
  'serratus posterior inferior muscle': 'REG-TRUNK', 'serratus posterior superior muscle': 'REG-TRUNK',
  'pectoralis major muscle': 'REG-TRUNK', 'pectoralis minor muscle': 'REG-TRUNK',
  'subclavius muscle': 'REG-TRUNK', 'latissimus dorsi muscle': 'REG-TRUNK',
  'rhomboid major muscle': 'REG-TRUNK', 'rhomboid minor muscle': 'REG-TRUNK',
  'teres major muscle': 'REG-UPPER-LIMB', 'teres minor muscle': 'REG-UPPER-LIMB',
  'coracobrachialis muscle': 'REG-UPPER-LIMB',
  'extensor digitorum brevis': 'REG-LOWER-LIMB', 'extensor digitorum longus': 'REG-LOWER-LIMB',
  'flexor digitorum brevis': 'REG-LOWER-LIMB', 'flexor digitorum longus': 'REG-LOWER-LIMB',
  'extensor hallucis longus': 'REG-LOWER-LIMB', 'extensor hallucis brevis': 'REG-LOWER-LIMB',
  'flexor hallucis longus': 'REG-LOWER-LIMB', 'flexor hallucis brevis': 'REG-LOWER-LIMB',
  'diaphragm': 'REG-TRUNK', 'quadratus lumborum muscle': 'REG-TRUNK',
  'psoas major': 'REG-TRUNK', 'iliacus muscle': 'REG-TRUNK',
  'levator scapulae': 'REG-NECK',
}
const HEAD = /orbi|masseter|temporalis|buccinator|bucinator|zygomaticus|levator labii|levator anguli|levator nasolabialis|depressor labii|depressor anguli|depressor septi|risorius|mentalis|procerus|nasalis|corrugator|frontalis|occipitalis|temporoparietalis|pterygoid|rectus muscle|inferior oblique|superior oblique|genioglossus|hyoglossus|palatopharyngeus|stylopharyngeus|pharyngeal constrictor|levator palpebrae/
const NECK = /capitis|colli|scalenus|platysma|hyoid|sternocleidomastoid|arytenoid|cricothyroid|crico-arytenoid|thyro-arytenoid|ary-epiglottic|thyro-epiglottic|levator scapulae|digastric/
const LOWER = /gluteus|sartorius|vastus|rectus femoris|tensor fasciae latae|pectineus|gracilis|obturator|piriformis|gemellus|quadratus femoris|semitendinosus|semimembranosus|popliteus|gastrocnemius|soleus|plantaris|tibialis|hallucis|fibularis|perone|plantar|plantae|of foot|biceps femoris|adductor (longus|brevis|magnus|minimus)/

function muscleRegion(concept) {
  const key = concept.toLowerCase()
  if (OVERRIDES[key]) return OVERRIDES[key]
  if (HEAD.test(key)) return 'REG-HEAD'
  if (NECK.test(key)) return 'REG-NECK'
  if (LOWER.test(key)) return 'REG-LOWER-LIMB'
  if (/(deltoid|biceps|triceps|brachi|brachioradialis|pronator|supinator|anconeus|carpi|palmaris|pollicis|extensor digit|digiti minimi of hand|palmar interossei|dorsal interossei muscles of hand|extensor indicis|lumbrical muscles of hand|teres|flexor digitorum (profundus|superficialis)|supraspinatus|infraspinatus|subscapularis|scapular spinal part)/.test(key)) return 'REG-UPPER-LIMB'
  return 'REG-TRUNK'
}

const kept = entries.filter((e) => !excluded.has(e.concept))
  // ordem deterministica para estruturaIds estaveis
  .sort((a, b) => a.concept.localeCompare(b.concept) || a.side.localeCompare(b.side))
const dropped = entries.length - kept.length
let previousMap = []
try { previousMap = JSON.parse(readFileSync(mapPath, 'utf8')) } catch (error) { if (error.code !== 'ENOENT') throw error }
const previousById = new Map(previousMap.map((e) => [e.concept + '|' + e.side, e]))
let nextId = Math.max(0, ...previousMap.map((e) => Number(e.structureId.split('-').at(-1)))) + 1

const document = new Document()
const buffer = document.createBuffer()
const scene = document.createScene('Z-Anatomy musculature')
const material = document.createMaterial('Muscle').setBaseColorFactor([0.75, 0.32, 0.27, 1]).setRoughnessFactor(0.62)
const map = []
let triangles = 0

for (const entry of kept) {
  const prev = previousById.get(entry.concept + '|' + entry.side)
  const structureId = prev ? prev.structureId : `STR-MUS-${String(nextId++).padStart(4, '0')}`
  const number = structureId.split('-').at(-1)
  const sourceId = `ZAN-${number}`

  let geometry = new THREE.BufferGeometry()
  geometry.setAttribute('position', new THREE.BufferAttribute(new Float32Array(entry.positions), 3))
  geometry = mergeVertices(geometry)
  geometry.computeVertexNormals()
  const position = geometry.getAttribute('position')
  const normal = geometry.getAttribute('normal')

  const pa = new Float32Array(position.array)
  for (let i = 0; i < pa.length; i += 3) {
    const x = pa[i], y = pa[i + 1], z = pa[i + 2]
    pa[i] = x * 1000
    pa[i + 1] = z * 1000
    pa[i + 2] = -y * 1000
  }
  const normalX = new Float32Array(normal.array)
  const nFinal = new Float32Array(normalX.length)
  for (let i = 0; i < nFinal.length; i += 3) {
    nFinal[i] = normalX[i]
    nFinal[i + 1] = normalX[i + 2]
    nFinal[i + 2] = -normalX[i + 1]
  }

  const primitive = document.createPrimitive().setMaterial(material)
    .setAttribute('POSITION', document.createAccessor().setType('VEC3').setArray(pa).setBuffer(buffer))
    .setAttribute('NORMAL', document.createAccessor().setType('VEC3').setArray(nFinal).setBuffer(buffer))
  const index = geometry.getIndex()
  if (index) {
    primitive.setIndices(document.createAccessor().setType('SCALAR').setArray(new Uint32Array(index.array)).setBuffer(buffer))
  }
  const mesh = document.createMesh(structureId)
  mesh.addPrimitive(primitive)
  scene.addChild(document.createNode(structureId)
    .setMesh(mesh)
    .setExtras({ structureId, sourceId, concept: entry.concept, side: entry.side === '-' ? 'midline' : entry.side }))
  triangles += position.count / 3
  geometry.dispose()
  map.push({ structureId, sourceId, concept: entry.concept, side: entry.side === '-' ? 'midline' : entry.side, region: muscleRegion(entry.concept), meshes: [entry.name], vertices: entry.vertices })
}

const output = path.join(root, 'frontend/public/models/z-anatomy-muscles.glb')
mkdirSync(path.dirname(output), { recursive: true })
await MeshoptEncoder.ready
await document.transform(dedup(), meshopt({ encoder: MeshoptEncoder, level: 'high' }))
await new NodeIO().registerExtensions(ALL_EXTENSIONS).registerDependencies({ 'meshopt.encoder': MeshoptEncoder }).write(output, document)

map.sort((a, b) => a.structureId.localeCompare(b.structureId))
writeFileSync(mapPath, `${JSON.stringify(map, null, 2)}\n`)

const binary = readFileSync(output)
const sha = createHash('sha256').update(binary).digest('hex')
const licenses = JSON.parse(readFileSync(path.join(root, 'assets/licenses.json'), 'utf8'))
const muscLicense = {
  asset: 'z-anatomy-muscles.glb', source: 'Z-Anatomy — Models of human anatomy', author: 'Z-Anatomy contributors',
  sourceUrl: 'https://github.com/Z-Anatomy/Models-of-human-anatomy',
  license: 'CC BY-SA 4.0', licenseUrl: 'https://creativecommons.org/licenses/by-sa/4.0/',
  verificationUrl: 'https://github.com/Z-Anatomy/Models-of-human-anatomy/blob/main/LICENSE',
  obtainedAt: '2026-09-13',
  attribution: 'Z-Anatomy (derivado de BodyParts3D, © DBCLS) — licensed under CC BY-SA 4.0 International.',
  modifications: ['Extracao do sistema muscular (colecao "4: Muscular system") do Startup.blend oficial', 'Exclusao de tecidos conjuntivos (assets/z-anatomy-excluded.json)', 'Conversao de metros (Z-up) para milimetros (Y-up)', 'Vertex welding, quantization e Meshopt compression', 'structureId e sourceId locais por malha'],
  permissions: ['Redistribution with attribution', 'Adaptation with attribution'],
  sha256: sha, bytes: binary.length, meshes: map.length, structures: map.length, triangles: Math.round(triangles),
}
const existing = licenses.findIndex((l) => l.asset === 'z-anatomy-muscles.glb')
if (existing >= 0) licenses[existing] = muscLicense
else licenses.push(muscLicense)
writeFileSync(path.join(root, 'assets/licenses.json'), `${JSON.stringify(licenses, null, 2)}\n`)
console.log(JSON.stringify({ output, bytes: binary.length, structures: map.length, dropped, triangles: Math.round(triangles), sha256: sha }, null, 2))