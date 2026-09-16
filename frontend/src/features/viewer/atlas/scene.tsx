import { useEffect, useRef } from 'react'
import * as T from 'three'
import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls.js'
import { RoomEnvironment } from 'three/examples/jsm/environments/RoomEnvironment.js'
import { mergeGeometries } from 'three/examples/jsm/utils/BufferGeometryUtils.js'
import { structureNamePt } from '../../../data/catalogV2'
import { createExplosionLayout } from './explosionLayout'
import { decodeModelResponse } from './modelDownload'
import { PointerTap } from './pointerTap'
import { SYSTEM_COLORS } from './systems'
import type { Atlas, SceneState } from './types'

interface Props {
  atlas: Atlas
  state: SceneState
  onSelect: (id: string) => void
  onProgress: (n: number) => void
  onError: (s: string) => void
}

export default function AtlasScene({ atlas, state, onSelect, onProgress, onError }: Props) {
  const host = useRef<HTMLDivElement>(null)
  const latest = useRef(state)
  const select = useRef(onSelect)
  const callbacks = useRef({ onProgress, onError })

  useEffect(() => {
    latest.current = state
    select.current = onSelect
    callbacks.current = { onProgress, onError }
  }, [state, onSelect, onProgress, onError])

  useEffect(() => {
    const el = host.current
    if (!el) return
    let disposed = false
    let frame = 0
    let dirty = true
    let ready = false
    let lastView = ''
    let lastReset = -1
    let lastIsolate = ''
    let layoutKey = ''
    let amount = 0
    let lastState: SceneState | null = null
    const abort = new AbortController()

    let renderer: T.WebGLRenderer
    try {
      renderer = new T.WebGLRenderer({ antialias: true, alpha: false, powerPreference: 'high-performance' })
    } catch {
      callbacks.current.onError('Este navegador não conseguiu iniciar o visualizador 3D. Experimente um navegador com WebGL habilitado.')
      return
    }
    renderer.setPixelRatio(Math.min(devicePixelRatio, innerWidth < 768 ? 1.5 : 2))
    renderer.setClearColor('#f2f3f3')
    renderer.outputColorSpace = T.SRGBColorSpace
    renderer.toneMapping = T.ACESFilmicToneMapping
    renderer.toneMappingExposure = 1.12
    el.appendChild(renderer.domElement)
    renderer.domElement.setAttribute(
      'aria-label',
      'Anatomia humana interativa. Arraste para orbitar, use a pinça ou a rolagem para aproximar e toque uma estrutura para inspecioná-la.',
    )

    const scene = new T.Scene()
    const camera = new T.PerspectiveCamera(34, 1, 0.005, 100)
    const controls = new OrbitControls(camera, renderer.domElement)
    camera.position.set(1.4, 1.05, 3.6)
    controls.target.set(0, 0.85, 0)
    controls.enableDamping = true
    controls.dampingFactor = 0.085
    controls.minDistance = 0.07
    controls.maxDistance = 40
    controls.maxPolarAngle = Math.PI * 0.96
    controls.addEventListener('change', () => {
      dirty = true
    })

    const pmrem = new T.PMREMGenerator(renderer)
    const room = new RoomEnvironment()
    const env = pmrem.fromScene(room, 0.04)
    scene.environment = env.texture
    room.dispose()
    pmrem.dispose()
    scene.add(new T.HemisphereLight(0xffffff, 0xa7acb2, 1.05))
    const key = new T.DirectionalLight(0xfffaf4, 2.3)
    key.position.set(-2, 4, 3)
    scene.add(key)
    const rim = new T.DirectionalLight(0xe9f0ff, 1.8)
    rim.position.set(2, 2, -3)
    scene.add(rim)

    const ground = new T.Mesh(
      new T.CircleGeometry(30, 96),
      new T.MeshStandardMaterial({ color: 0xd5d9dc, roughness: 1 }),
    )
    ground.rotation.x = -Math.PI / 2
    ground.position.y = -0.019
    scene.add(ground)
    const platform = new T.Mesh(
      new T.CylinderGeometry(0.68, 0.7, 0.028, 100),
      new T.MeshStandardMaterial({ color: 0xeeeeec, metalness: 0.12, roughness: 0.67 }),
    )
    platform.position.y = -0.016
    scene.add(platform)
    const ring = new T.Mesh(
      new T.RingGeometry(0.63, 0.632, 128),
      new T.MeshBasicMaterial({ color: 0x8c969f, transparent: true, opacity: 0.4, side: T.DoubleSide }),
    )
    ring.rotation.x = -Math.PI / 2
    ring.position.y = 0.001
    scene.add(ring)
    const innerRing = new T.Mesh(
      new T.RingGeometry(0.55, 0.551, 128),
      new T.MeshBasicMaterial({ color: 0xa4aeb8, transparent: true, opacity: 0.16, side: T.DoubleSide }),
    )
    innerRing.rotation.x = -Math.PI / 2
    innerRing.position.y = 0.001
    scene.add(innerRing)

    const width = T.MathUtils.ceilPowerOfTwo(atlas.parts.length)
    const data = new Float32Array(width * 4)
    const partTexture = new T.DataTexture(data, width, 1, T.RGBAFormat, T.FloatType)
    partTexture.needsUpdate = true
    const selectedData = new Uint8Array(width * 4)
    const selectionTexture = new T.DataTexture(selectedData, width, 1)
    selectionTexture.needsUpdate = true

    const materials: T.Material[] = []
    const geometries: T.BufferGeometry[] = []
    const pickers: (T.Mesh | undefined)[] = []
    const bounds = atlas.parts.map(() => new T.Box3())
    const centers = atlas.parts.map(() => new T.Vector3())
    const offsets: T.Vector3[] = []
    let packingWidth = 1
    let packingHeight = 1

    const markerPositions = new Float32Array(atlas.parts.length * 3)
    const markerGeometry = new T.BufferGeometry()
    markerGeometry.setAttribute('position', new T.BufferAttribute(markerPositions, 3))
    const markerMaterial = new T.PointsMaterial({
      color: 0x64748b,
      size: 5,
      sizeAttenuation: false,
      transparent: true,
      opacity: 0.72,
      depthTest: false,
    })
    markerMaterial.onBeforeCompile = (shader) => {
      shader.fragmentShader = shader.fragmentShader.replace(
        '#include <clipping_planes_fragment>',
        '#include <clipping_planes_fragment>\nif (distance(gl_PointCoord, vec2(0.5)) > 0.5) discard;',
      )
    }
    const markers = new T.Points(markerGeometry, markerMaterial)
    markers.frustumCulled = false
    markers.renderOrder = 10
    markers.visible = false
    scene.add(markers)

    const hover = document.createElement('div')
    hover.className = 'part-hover'
    hover.setAttribute('role', 'tooltip')
    hover.hidden = true
    el.appendChild(hover)

    type Target = {
      index: number
      x: number
      y: number
      left: number
      right: number
      top: number
      bottom: number
    }
    let targets: Target[] = []
    const projected = new T.Vector3()
    const findTarget = (x: number, y: number, radius: number) => {
      let best = -1
      let score = Infinity
      for (const t of targets) {
        const dx = Math.max(t.left - x, 0, x - t.right)
        const dy = Math.max(t.top - y, 0, y - t.bottom)
        const distance = Math.hypot(dx, dy)
        if (distance > radius) continue
        const candidate = distance + Math.hypot(t.x - x, t.y - y) * 0.025
        if (candidate < score) {
          score = candidate
          best = t.index
        }
      }
      return best
    }

    const materialForSystem = (system: string) => {
      const m = new T.MeshStandardMaterial({
        color: SYSTEM_COLORS[system as keyof typeof SYSTEM_COLORS] ?? '#aebbb8',
        metalness: 0.08,
        roughness: 0.53,
        side: T.DoubleSide,
        transparent: system === 'SYS-INT',
        opacity: system === 'SYS-INT' ? 0.1 : 1,
        depthWrite: system !== 'SYS-INT',
      })
      m.onBeforeCompile = (shader) => {
        shader.uniforms.partState = { value: partTexture }
        shader.uniforms.selectionState = { value: selectionTexture }
        shader.uniforms.stateWidth = { value: width }
        shader.vertexShader = `attribute float partIndex; uniform sampler2D partState; uniform sampler2D selectionState; uniform float stateWidth; varying float partVisible; varying float partSelected;\n${shader.vertexShader}`
        shader.vertexShader = shader.vertexShader.replace(
          '#include <begin_vertex>',
          `#include <begin_vertex>\nvec2 stateUv = vec2((partIndex + 0.5) / stateWidth, 0.5); vec4 state = texture2D(partState, stateUv); transformed += state.xyz; partVisible = state.w; partSelected = texture2D(selectionState, stateUv).r;`,
        )
        shader.fragmentShader = 'varying float partVisible; varying float partSelected;\n' + shader.fragmentShader
        shader.fragmentShader = shader.fragmentShader.replace(
          '#include <clipping_planes_fragment>',
          '#include <clipping_planes_fragment>\nif (partVisible < 0.5) discard;',
        )
        shader.fragmentShader = shader.fragmentShader.replace(
          '#include <color_fragment>',
          '#include <color_fragment>\ndiffuseColor.rgb = mix(diffuseColor.rgb, vec3(0.42, 0.85, 0.78), partSelected * 0.75);',
        )
      }
      materials.push(m)
      return m
    }

    const mats = new Map<string, T.Material>()
    for (const partDef of atlas.systems) {
      const key = partDef.code
      if (!mats.has(key)) mats.set(key, materialForSystem(key))
    }

    let loaded = 0
    const loadChunk = async (ci: number) => {
      const chunk = atlas.chunks[ci]
      const compressed = !!chunk.gzip && typeof DecompressionStream !== 'undefined'
      const response = await fetch(compressed ? chunk.gzip! : chunk.url, { signal: abort.signal })
      const buffer = await decodeModelResponse(response, chunk.bytes, compressed)
      if (disposed) return
      const groups = new Map<string, T.BufferGeometry[]>()
      const chunkParts = atlas.parts.filter((p) => p.chunk === ci)
      const positionBytes = Math.max(...chunkParts.map((p) => p.positions + p.vertexCount * 3 * 4))
      const positions = new Float32Array(positionBytes / 4)
      positions.set(new Float32Array(buffer, 0, positionBytes / 4))
      for (let index = 0; index < positions.length; index += 1) positions[index] *= 0.001
      atlas.parts.forEach((p, i) => {
        if (p.chunk !== ci) return
        const g = new T.BufferGeometry()
        g.setAttribute(
          'position',
          new T.BufferAttribute(positions.subarray(p.positions / 4, p.positions / 4 + p.vertexCount * 3), 3),
        )
        g.setAttribute(
          'normal',
          new T.BufferAttribute(new Int16Array(buffer, p.normals, p.vertexCount * 3), 3, true),
        )
        g.setIndex(new T.BufferAttribute(new Uint32Array(buffer, p.indices, p.indexCount), 1))
        g.computeBoundingBox()
        if (!g.boundingBox) throw new Error('Não foi possível calcular os limites da peça.')
        g.boundingSphere = g.boundingBox.getBoundingSphere(new T.Sphere())
        const pick = new T.Mesh(g)
        pick.matrixAutoUpdate = false
        pickers[i] = pick
        geometries.push(g)
        bounds[i] = g.boundingBox.clone()
        centers[i] = g.boundingBox.getCenter(new T.Vector3())
        g.setAttribute('partIndex', new T.BufferAttribute(new Float32Array(p.vertexCount).fill(i), 1))
        const list = groups.get(p.system) ?? []
        list.push(g)
        groups.set(p.system, list)
      })
      groups.forEach((gs, system) => {
        const geometry = mergeGeometries(gs, false)
        if (!geometry) throw new Error('Não foi possível montar a geometria da anatomia.')
        geometries.push(geometry)
        const mesh = new T.Mesh(geometry, mats.get(system))
        mesh.frustumCulled = false
        scene.add(mesh)
      })
      lastState = null
      loaded += 1
      callbacks.current.onProgress(Math.round((loaded / atlas.chunks.length) * 100))
      dirty = true
    }
    void (async () => {
      try {
        let cursor = 0
        await Promise.all(
          Array.from({ length: 3 }, async () => {
            while (cursor < atlas.chunks.length) {
              const i = cursor++
              await loadChunk(i)
            }
          }),
        )
        if (!disposed) {
          ready = true
          dirty = true
        }
      } catch (e) {
        if (!disposed) callbacks.current.onError(e instanceof Error ? e.message : 'Não foi possível carregar a anatomia.')
      }
    })()

    const fit = (view: string, extent = 0) => {
      const mobile = el.clientWidth < 768
      const normalDistance = mobile
        ? Math.max(4.5, (1.8 * el.clientHeight) / Math.max(160, el.clientHeight - 350) / (2 * Math.tan(T.MathUtils.degToRad(camera.fov / 2))))
        : 4
      const reservedHeight = mobile ? 350 : 270
      const availableAspect = Math.max(
        0.35,
        (el.clientWidth - (mobile ? 40 : 340)) / Math.max(160, el.clientHeight - reservedHeight),
      )
      const atlasDistance =
        (Math.max(packingHeight, packingWidth / availableAspect) / (2 * Math.tan(T.MathUtils.degToRad(camera.fov / 2)))) *
        (el.clientHeight / Math.max(160, el.clientHeight - reservedHeight)) *
        1.08
      const distance = T.MathUtils.lerp(normalDistance, Math.max(0.2, atlasDistance), extent)
      if (extent > 0.8) view = 'front'
      const direction =
        view === 'front'
          ? new T.Vector3(0, 0.02, 1)
          : view === 'back'
            ? new T.Vector3(0, 0.02, -1)
            : view === 'side'
              ? new T.Vector3(1, 0.02, 0)
              : new T.Vector3(0.35, 0.06, 1).normalize()
      controls.target.set(
        extent > 0.1 && el.clientWidth > 767 ? -packingWidth * 0.12 : 0,
        extent > 0.1 || mobile ? 0.85 : 0.68,
        0,
      )
      camera.position.copy(controls.target).addScaledVector(direction, distance)
      controls.update()
      dirty = true
    }

    const resize = () => {
      layoutKey = ''
      lastState = null
      renderer.setPixelRatio(Math.min(devicePixelRatio, el.clientWidth < 768 || el.clientHeight < 600 ? 1.5 : 2))
      camera.aspect = el.clientWidth / el.clientHeight
      camera.updateProjectionMatrix()
      renderer.setSize(el.clientWidth, el.clientHeight)
      fit(latest.current.view, amount)
    }
    const observer = new ResizeObserver(resize)
    observer.observe(el)

    const raycaster = new T.Raycaster()
    const pointer = new T.Vector2()
    const tap = new PointerTap()
    const worldBox = new T.Box3()
    const hitPoint = new T.Vector3()

    const down = (e: PointerEvent) => {
      hover.hidden = true
      tap.down(e.pointerId, e.clientX, e.clientY, e.pointerType === 'touch' ? 12 : 5)
    }
    const move = (e: PointerEvent) => {
      tap.move(e.pointerId, e.clientX, e.clientY)
      if (e.buttons || amount < 0.5 || e.pointerType === 'touch') {
        hover.hidden = true
        return
      }
      const rect = el.getBoundingClientRect()
      const x = e.clientX - rect.left
      const y = e.clientY - rect.top
      const index = findTarget(x, y, 12)
      hover.hidden = index < 0
      renderer.domElement.style.cursor = index < 0 ? 'grab' : 'pointer'
      if (index >= 0) {
        hover.textContent = structureNamePt(atlas.parts[index].id)
        hover.style.left = `${Math.max(8, Math.min(x + 14, el.clientWidth - 260))}px`
        hover.style.top = `${Math.max(8, Math.min(y + 18, el.clientHeight - 55))}px`
      }
    }
    const cancel = (e: PointerEvent) => tap.cancel(e.pointerId)
    const up = (e: PointerEvent) => {
      const validTap = tap.up(e.pointerId, e.clientX, e.clientY)
      if (!validTap || !ready) return
      const rect = renderer.domElement.getBoundingClientRect()
      pointer.set(((e.clientX - rect.left) / rect.width) * 2 - 1, -((e.clientY - rect.top) / rect.height) * 2 + 1)
      raycaster.setFromCamera(pointer, camera)
      let nearest = Infinity
      let found = -1
      const hasSolid = atlas.parts.some((p, i) => p.system !== 'SYS-INT' && data[i * 4 + 3] > 0.5)
      pickers.forEach((mesh, i) => {
        if (!mesh || data[i * 4 + 3] < 0.5 || (hasSolid && atlas.parts[i].system === 'SYS-INT')) return
        worldBox.copy(bounds[i]).translate(mesh.position)
        if (!raycaster.ray.intersectBox(worldBox, hitPoint)) return
        const hits = raycaster.intersectObject(mesh, false)
        if (hits[0] && hits[0].distance < nearest) {
          nearest = hits[0].distance
          found = i
        }
      })
      if (found < 0 && amount > 0.45)
        found = findTarget(e.clientX - rect.left, e.clientY - rect.top, e.pointerType === 'touch' ? 24 : 16)
      if (found >= 0) {
        hover.hidden = true
        select.current(atlas.parts[found].id)
      }
    }
    renderer.domElement.addEventListener('pointerdown', down)
    renderer.domElement.addEventListener('pointermove', move)
    renderer.domElement.addEventListener('pointerup', up)
    renderer.domElement.addEventListener('pointercancel', cancel)

    const clock = new T.Clock()
    let lastExtent = -1
    const animate = () => {
      if (disposed) return
      frame = requestAnimationFrame(animate)
      const dt = Math.min(clock.getDelta(), 0.05)
      const s = latest.current
      const changed = lastState?.visible !== s.visible || lastState?.selected !== s.selected || lastState?.isolate !== s.isolate
      const moving = Math.abs(amount - s.explode) > 0.0001
      if (moving) {
        amount = T.MathUtils.damp(amount, s.explode, 8, dt)
        dirty = true
      }
      if (changed || moving || lastExtent < 0) {
        const visible = new Set(s.visible)
        const selection = new Set(s.selected)
        const visibleParts = atlas.parts.filter((p) => (s.isolate ? selection.has(p.id) : visible.has(p.system) || selection.has(p.id)))
        const nextLayoutKey = visibleParts.map((p) => p.id).join(',') + ':' + camera.aspect.toFixed(3)
        if (nextLayoutKey !== layoutKey) {
          const layout = createExplosionLayout(visibleParts, camera.aspect)
          packingWidth = layout.width
          packingHeight = layout.height
          atlas.parts.forEach((p, i) => {
            const cell = layout.cells.get(p.id)
            offsets[i] = cell ? new T.Vector3(cell.x, cell.y + 0.85, 0) : centers[i].clone()
          })
          layoutKey = nextLayoutKey
          if (amount > 0.05 && !s.isolate) fit(s.view, Math.max(0, (amount - 0.3) / 0.7))
        }

        atlas.parts.forEach((p, i) => {
          const c = centers[i]
          const destination = offsets[i]
          let dx: number
          let dy: number
          let dz: number
          if (amount <= 0.45) {
            const t = amount / 0.45
            const group = atlas.systems.findIndex((sys) => sys.code === p.system)
            const angle = (group / atlas.systems.length) * Math.PI * 2
            dx = Math.sin(angle) * t * 0.48
            dy = (c.y - 0.85) * t * 0.28
            dz = Math.cos(angle) * t * 0.48
          } else {
            const t = (amount - 0.45) / 0.55
            const group = atlas.systems.findIndex((sys) => sys.code === p.system)
            const angle = (group / atlas.systems.length) * Math.PI * 2
            dx = T.MathUtils.lerp(Math.sin(angle) * 0.48, destination.x - c.x, t)
            dy = T.MathUtils.lerp((c.y - 0.85) * 0.28, destination.y - c.y, t)
            dz = T.MathUtils.lerp(Math.cos(angle) * 0.48, -c.z, t)
          }
          const selected = selection.has(p.id)
          data.set([dx, dy, dz, s.isolate ? (selected ? 1 : 0) : visible.has(p.system) || selected ? 1 : 0], i * 4)
          selectedData[i * 4] = selected ? 255 : 0
          markerPositions.set(data[i * 4 + 3] > 0.5 ? [c.x + dx, c.y + dy, c.z + dz] : [10000, 10000, 10000], i * 3)
          const mesh = pickers[i]
          if (mesh) {
            mesh.position.set(dx, dy, dz)
            mesh.updateMatrix()
            mesh.updateMatrixWorld(true)
          }
        })
        partTexture.needsUpdate = true
        selectionTexture.needsUpdate = true
        markerGeometry.attributes.position.needsUpdate = true
        lastState = s
        lastExtent = amount
        dirty = true
      }
      if (s.view !== lastView || s.reset !== lastReset) {
        fit(s.view, amount)
        lastView = s.view
        lastReset = s.reset
      }
      if (moving && !s.isolate) fit(amount > 0.5 ? 'front' : s.view, Math.max(0, (amount - 0.3) / 0.7))
      const isolateKey = s.isolate ? s.selected.join(',') + ':' + s.reset + ':' + s.inspectorOpen + ':' + camera.aspect : ''
      if (isolateKey !== lastIsolate || (s.isolate && moving)) {
        if (s.isolate) {
          const box = new T.Box3()
          atlas.parts.forEach((p, i) => {
            if (s.selected.includes(p.id)) box.union(bounds[i].clone().translate(new T.Vector3(data[i * 4], data[i * 4 + 1], data[i * 4 + 2])))
          })
          if (!box.isEmpty()) {
            const center = box.getCenter(new T.Vector3())
            const size = box.getSize(new T.Vector3())
            const w = el.clientWidth
            const h = el.clientHeight
            const mobile = w < 768
            const landscape = w > h && h <= 600
            let left = 20
            let right = w - 20
            let top = mobile ? 175 : 110
            let bottom = h - 170
            if (s.inspectorOpen) {
              if (landscape) {
                right = w - 335
                top = 100
                bottom = h - 125
              } else if (mobile) {
                const sheet = document.querySelector('.detail-sheet')?.getBoundingClientRect()
                const header = document.querySelector('.identity')?.getBoundingClientRect()
                top = (header?.bottom ?? 94) + 16
                bottom = (sheet?.top ?? h * 0.58 - 139) - 16
              } else {
                right = w - 370
                left = w > 1100 ? 285 : 25
              }
            }
            const availableWidth = Math.max(150, right - left)
            const availableHeight = Math.max(40, bottom - top)
            camera.setViewOffset(w, h, w / 2 - (left + right) / 2, h / 2 - (top + bottom) / 2, w, h)
            const distance = Math.max(
              0.07,
              (Math.max((size.y * h) / availableHeight, (size.x * w) / availableWidth / camera.aspect, size.z) /
                (2 * Math.tan(T.MathUtils.degToRad(camera.fov / 2)))) *
                1.35,
            )
            controls.maxDistance = Math.max(40, distance * 2)
            controls.target.copy(center)
            camera.position.copy(center).add(new T.Vector3(0.2, 0.1, 1).normalize().multiplyScalar(distance))
            controls.update()
            dirty = true
          }
        } else if (lastIsolate) {
          camera.clearViewOffset()
          fit(s.view, amount)
        }
        lastIsolate = isolateKey
      }
      controls.enableRotate = amount < 0.8
      controls.mouseButtons.LEFT = amount < 0.8 ? T.MOUSE.ROTATE : T.MOUSE.PAN
      controls.touches.ONE = amount < 0.8 ? T.TOUCH.ROTATE : T.TOUCH.PAN
      ground.visible = platform.visible = ring.visible = innerRing.visible = amount < 0.5 && !s.isolate
      markers.visible = amount > 0.75
      controls.autoRotate = s.rotate && !s.isolate && amount < 0.4
      controls.autoRotateSpeed = 0.65
      controls.update()
      if (controls.autoRotate) dirty = true
      if (dirty) {
        renderer.render(scene, camera)
        targets = []
        if (amount > 0.45) {
          const hasSolid = atlas.parts.some((p, i) => p.system !== 'SYS-INT' && data[i * 4 + 3] > 0.5)
          atlas.parts.forEach((p, i) => {
            if (data[i * 4 + 3] < 0.5 || (hasSolid && p.system === 'SYS-INT')) return
            let left = Infinity
            let right = -Infinity
            let top = Infinity
            let bottom = -Infinity
            for (let corner = 0; corner < 8; corner += 1) {
              projected
                .set(
                  p.bounds[(corner & 1) ? 1 : 0][0],
                  p.bounds[(corner & 2) ? 1 : 0][1],
                  p.bounds[(corner & 4) ? 1 : 0][2],
                )
                .multiplyScalar(0.001)
                .add(new T.Vector3(data[i * 4], data[i * 4 + 1], data[i * 4 + 2]))
                .project(camera)
              const x = ((projected.x + 1) * el.clientWidth) / 2
              const y = ((1 - projected.y) * el.clientHeight) / 2
              left = Math.min(left, x)
              right = Math.max(right, x)
              top = Math.min(top, y)
              bottom = Math.max(bottom, y)
            }
            projected
              .copy(centers[i])
              .add(new T.Vector3(data[i * 4], data[i * 4 + 1], data[i * 4 + 2]))
              .project(camera)
            if (projected.z < -1 || projected.z > 1) return
            targets.push({
              index: i,
              x: ((projected.x + 1) * el.clientWidth) / 2,
              y: ((1 - projected.y) * el.clientHeight) / 2,
              left,
              right,
              top,
              bottom,
            })
          })
        }
        dirty = false
      }
    }
    animate()

    const contextLost = (e: Event) => {
      e.preventDefault()
      callbacks.current.onError('A sessão 3D foi pausada pelo seu dispositivo. Recarregue para continuar.')
    }
    renderer.domElement.addEventListener('webglcontextlost', contextLost)

    return () => {
      disposed = true
      abort.abort()
      cancelAnimationFrame(frame)
      observer.disconnect()
      controls.dispose()
      geometries.forEach((g) => g.dispose())
      materials.forEach((m) => m.dispose())
      scene.traverse((o) => {
        if (o instanceof T.Mesh && !geometries.includes(o.geometry)) {
          o.geometry.dispose()
          const ms = Array.isArray(o.material) ? o.material : [o.material]
          ms.forEach((m) => m.dispose())
        }
      })
      env.dispose()
      partTexture.dispose()
      selectionTexture.dispose()
      markerGeometry.dispose()
      markerMaterial.dispose()
      hover.remove()
      renderer.dispose()
      renderer.domElement.remove()
    }
  }, [atlas])

  return <div className="scene" ref={host} />
}