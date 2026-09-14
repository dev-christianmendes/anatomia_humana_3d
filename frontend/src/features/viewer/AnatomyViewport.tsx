import { Component, Suspense, useCallback, useEffect, useMemo, useRef, useState } from 'react'
import type { MutableRefObject, ReactNode } from 'react'
import { Canvas, useThree } from '@react-three/fiber'
import type { ThreeEvent } from '@react-three/fiber'
import { Html, OrbitControls, Points, useGLTF } from '@react-three/drei'
import { Box3, Mesh, MeshStandardMaterial, MOUSE, Object3D, Sphere, Vector3 } from 'three'
import type { OrbitControls as OrbitControlsImpl } from 'three-stdlib'
import { cameraDistance, cameraPosition } from './camera'
import type { AnatomicalView } from './camera'
import { computeExplosionWorldOffsets, computeInventoryWorldOffsets, explosionPhase, EXPLODE_RADIAL_MAX, INVENTORY_SIDE_X, inventoryCameraRadius } from './explosion'
import { combinedFraming, computeModelOffsets } from './viewport'
import { getStructure, systemColor } from '../structure/catalog'
import { systemVisible, useAtlas } from '../../store/atlas'

const MODEL_PATH = 'models/bodyparts3d-skeleton.glb'
const MUSCLE_MODEL_PATH = 'models/z-anatomy-muscles.glb'
const HOVER_COLOR = '#eec39a'
const SELECTED_COLOR = '#1f7a5b'
const HOVER_GLOW = '#b06a1c'
const SELECTED_GLOW = '#0e5c44'
const EMISSIVE_INTENSITY = 0.5
useGLTF.preload(MODEL_PATH)
useGLTF.preload(MUSCLE_MODEL_PATH)

export type CameraCommand = { action: 'reset' | 'in' | 'out' | 'focus'; sequence: number; structureId?: string }
type StructureBoxes = MutableRefObject<Map<string, Box3>>
type ViewerProps = {
  view: AnatomicalView
  command: CameraCommand
  rotating: boolean
  onLoaded: (meshes: number, triangles: number) => void
}

type StructureId = string | null

function resolveStructureId(event: ThreeEvent<PointerEvent>): StructureId {
  for (const hit of event.intersections) {
    const id = hit.object.userData?.structureId
    if (typeof id === 'string' && id) return id
  }
  return null
}

function fitTransform(scene: Object3D) {
  const bounds = new Box3().setFromObject(scene)
  const center = bounds.getCenter(new Vector3())
  const scale = 3 / bounds.getSize(new Vector3()).y
  return { center, scale }
}

function framingFilter(visibility: { skeleton: boolean; muscles: boolean }) {
  return (id: string) => id.startsWith('STR-ESQ-')
    ? visibility.skeleton
    : id.startsWith('STR-MUS-')
      ? visibility.muscles
      : visibility.skeleton
}

function SceneModel({ scene, fit, color, visible, offsetX, inventoryX, boxesRef, onLoaded, onFraming }: {
  scene: Object3D
  fit: { center: Vector3; scale: number }
  color: string
  visible: boolean
  offsetX: number
  inventoryX: number
  boxesRef: StructureBoxes
  onLoaded: (meshes: number, triangles: number) => void
  onFraming: () => void
}) {
  const invalidate = useThree((state) => state.invalidate)
  const hovered = useAtlas((state) => state.hoveredStructureId)
  const selected = useAtlas((state) => state.selectedStructureId)
  const isolated = useAtlas((state) => state.isolatedStructureId)
  const systemVisibility = useAtlas((state) => state.systemVisibility)
  const explosionProgress = useAtlas((state) => state.explosionProgress)

  const model = useMemo(() => {
    const copy = scene.clone(true)
    copy.traverse((object) => {
      if (object instanceof Mesh) {
        object.material = new MeshStandardMaterial({ color, roughness: 0.55, emissive: '#000000', emissiveIntensity: EMISSIVE_INTENSITY })
      }
    })
    copy.position.copy(fit.center).multiplyScalar(-fit.scale)
    copy.position.x += offsetX
    copy.scale.setScalar(fit.scale)
    return copy
  }, [scene, fit.center, fit.scale, color, offsetX])

  const materialsByStructure = useMemo(() => {
    const refs = new Map<string, MeshStandardMaterial[]>()
    model.traverse((object) => {
      if (!(object instanceof Mesh)) return
      const id = object.userData?.structureId
      if (typeof id !== 'string' || !id) return
      const list = refs.get(id) ?? []
      list.push(object.material as MeshStandardMaterial)
      refs.set(id, list)
    })
    return refs
  }, [model])

  const structureBoxes = useMemo(() => {
    const boxes = new Map<string, Box3>()
    model.updateWorldMatrix(true, true)
    model.traverse((object) => {
      if (!(object instanceof Mesh)) return
      const id = object.userData?.structureId
      if (typeof id !== 'string' || !id) return
      const box = boxes.get(id) ?? new Box3()
      boxes.set(id, box.union(new Box3().setFromObject(object)))
    })
    return boxes
  }, [model])

  useEffect(() => {
    for (const [structureId, box] of structureBoxes) boxesRef.current.set(structureId, box)
  }, [boxesRef, structureBoxes])

  useEffect(() => {
    onFraming()
  }, [onFraming, structureBoxes])

  const basePositions = useMemo(() => {
    const base = new Map<Mesh, Vector3>()
    model.traverse((object) => {
      if (object instanceof Mesh) base.set(object, object.position.clone())
    })
    return base
  }, [model])

  const worldExplosionOffsets = useMemo(() => computeExplosionWorldOffsets(structureBoxes), [structureBoxes])
  const inventoryCenter = useMemo(() => new Vector3(inventoryX, 0, 0), [inventoryX])
  const worldInventoryOffsets = useMemo(
    () => computeInventoryWorldOffsets(structureBoxes, inventoryCenter),
    [structureBoxes, inventoryCenter],
  )

  const phase = explosionPhase(explosionProgress)
  const progressRatio = explosionProgress / 100

  const explosionTargets = useMemo(() => {
    const targets = new Map<string, Vector3>()
    for (const [structureId, box] of structureBoxes) {
      const radial = worldExplosionOffsets.get(structureId) ?? new Vector3()
      let offset: Vector3
      if (phase === 'inventory') {
        const start = radial.clone()
        const inventory = worldInventoryOffsets.get(structureId) ?? radial.clone()
        offset = start.lerp(inventory, (progressRatio - EXPLODE_RADIAL_MAX / 100) / (1 - EXPLODE_RADIAL_MAX / 100))
      } else {
        const factor = phase === 'radial' ? progressRatio / (EXPLODE_RADIAL_MAX / 100) : 0
        offset = radial.clone().multiplyScalar(factor)
      }
      targets.set(structureId, box.getCenter(new Vector3()).add(offset))
    }
    return targets
  }, [structureBoxes, worldExplosionOffsets, worldInventoryOffsets, phase, progressRatio])

  const dotPositions = useMemo(() => {
    const ids = [...structureBoxes.keys()].filter((id) =>
      systemVisible(systemVisibility, getStructure(id)?.system ?? 'SYS-ESQ'),
    )
    const positions = new Float32Array(ids.length * 3)
    for (let index = 0; index < ids.length; index += 1) {
      const world = explosionTargets.get(ids[index])
      if (!world) continue
      positions[index * 3] = world.x
      positions[index * 3 + 1] = world.y
      positions[index * 3 + 2] = world.z
    }
    return positions
  }, [structureBoxes, systemVisibility, explosionTargets])

  useEffect(() => {
    for (const [mesh, base] of basePositions) {
      const id = mesh.userData?.structureId
      const target = typeof id === 'string' ? explosionTargets.get(id) : undefined
      if (target && mesh.parent) {
        mesh.position.copy(mesh.parent.worldToLocal(target.clone()))
      } else {
        mesh.position.copy(base)
      }
    }
    invalidate()
  }, [explosionProgress, basePositions, explosionTargets, invalidate])

  useEffect(() => {
    let meshes = 0
    let triangles = 0
    model.traverse((object) => {
      if (object instanceof Mesh) {
        meshes += 1
        triangles += (object.geometry.index?.count ?? object.geometry.attributes.position.count) / 3
      }
    })
    onLoaded(meshes, triangles)
  }, [model, onLoaded])

  useEffect(() => {
    model.traverse((object) => {
      if (!(object instanceof Mesh)) return
      const id = object.userData?.structureId
      object.visible = visible && (isolated === null
        ? systemVisible(systemVisibility, getStructure(id)?.system ?? 'SYS-ESQ')
        : isolated === id)
    })
    invalidate()
  }, [model, visible, systemVisibility, isolated, invalidate])

  useEffect(() => {
    for (const [structureId, materials] of materialsByStructure) {
      const isSelected = selected === structureId || isolated === structureId
      const isHovered = hovered === structureId
      for (const material of materials) {
        material.color.set(isSelected ? SELECTED_COLOR : isHovered ? HOVER_COLOR : color)
        material.emissive.set(isSelected ? SELECTED_GLOW : isHovered ? HOVER_GLOW : '#000000')
      }
    }
    invalidate()
  }, [materialsByStructure, selected, hovered, isolated, invalidate, color])

  useEffect(() => () => {
    model.traverse((object) => {
      if (object instanceof Mesh) (object.material as MeshStandardMaterial).dispose()
    })
  }, [model])

  function hoverStructure(event: ThreeEvent<PointerEvent>) {
    event.stopPropagation()
    const id = resolveStructureId(event)
    const native = event.nativeEvent
    const rect = (native.target as HTMLElement).getBoundingClientRect()
    useAtlas.getState().hover(id, { x: native.clientX - rect.left, y: native.clientY - rect.top })
    document.body.style.cursor = id ? 'pointer' : 'auto'
  }

  function selectStructure(event: ThreeEvent<PointerEvent>) {
    event.stopPropagation()
    useAtlas.getState().select(resolveStructureId(event))
  }

  return <group>
    <primitive object={model}
      onPointerMove={hoverStructure}
      onPointerOut={() => {
        useAtlas.getState().hover(null)
        document.body.style.cursor = 'auto'
      }}
      onPointerDown={selectStructure} />
    {phase === 'inventory' && visible && (
      <Points positions={dotPositions}>
        <pointsMaterial color={color} size={0.045} sizeAttenuation transparent opacity={0.9} depthWrite={false} />
      </Points>
    )}
  </group>
}

function Controls({ view, command, rotating, framingTick, boxes }: Omit<ViewerProps, 'onLoaded'> & { framingTick: number; boxes: StructureBoxes }) {
  const controls = useRef<OrbitControlsImpl>(null)
  const { camera, size, invalidate } = useThree()
  const applied = useRef(-1)
  const modelVisibility = useAtlas((state) => state.modelVisibility)
  const layout = useAtlas((state) => state.layout)
  const explosionProgress = useAtlas((state) => state.explosionProgress)
  const appliedKey = useRef<string | null>(null)
  const phase = explosionPhase(explosionProgress)
  const previousInventory = useRef(false)

  useEffect(() => {
    if (!controls.current || applied.current === command.sequence) return
    applied.current = command.sequence
    if (explosionPhase(useAtlas.getState().explosionProgress) === 'inventory') return
    if (command.action === 'in' || command.action === 'out') {
      const offset = camera.position.clone().sub(controls.current.target)
      offset.multiplyScalar(command.action === 'in' ? 0.8 : 1.25).clampLength(0.6, 30)
      camera.position.copy(controls.current.target).add(offset)
    } else if (command.action === 'focus' && command.structureId) {
      const box = boxes.current.get(command.structureId)
      if (box) {
        const center = box.getCenter(new Vector3())
        const radius = box.getBoundingSphere(new Sphere()).radius
        const direction = camera.position.clone().sub(controls.current.target)
        if (direction.lengthSq() < 1e-6) direction.set(0, 0, 1)
        direction.normalize()
        const distance = Math.max(cameraDistance(size.width / size.height, Math.max(radius * 1.25, 0.15)), 0.6)
        camera.position.copy(center).addScaledVector(direction, distance)
        controls.current.target.copy(center)
      }
    } else {
      const framing = combinedFraming(boxes.current, framingFilter(useAtlas.getState().modelVisibility))
      const target = framing?.center ?? new Vector3(0, 0, 0)
      const radius = Math.max(framing?.radius ?? 1.7, 0.6)
      camera.position.set(...cameraPosition(view, cameraDistance(size.width / size.height, radius)))
      camera.up.set(0, 1, 0)
      camera.updateProjectionMatrix()
      controls.current.target.copy(target)
    }
    controls.current.update()
    invalidate()
  }, [boxes, camera, command, invalidate, size.width, size.height, view])

  useEffect(() => {
    if (!controls.current) return
    if (explosionPhase(useAtlas.getState().explosionProgress) === 'inventory') return
    const key = `${layout}|${modelVisibility.skeleton !== false}|${modelVisibility.muscles !== false}`
    if (appliedKey.current === key) return
    const known = appliedKey.current !== null
    appliedKey.current = key
    if (!known) return
    const framing = combinedFraming(boxes.current, framingFilter(modelVisibility))
    if (!framing) return
    const distance = Math.max(cameraDistance(size.width / size.height, framing.radius), 0.6)
    camera.position.set(...cameraPosition(view, distance))
    camera.up.set(0, 1, 0)
    camera.updateProjectionMatrix()
    controls.current.target.copy(framing.center)
    controls.current.update()
    invalidate()
  }, [boxes, camera, framingTick, invalidate, layout, modelVisibility, size.width, size.height, view])

  useEffect(() => {
    if (!controls.current) return
    const isInventory = phase === 'inventory'
    if (isInventory === previousInventory.current) return
    previousInventory.current = isInventory
    if (isInventory) {
      const distance = Math.max(cameraDistance(size.width / size.height, inventoryCameraRadius()), 0.6)
      camera.position.set(...cameraPosition('front', distance))
      camera.up.set(0, 1, 0)
      camera.updateProjectionMatrix()
      controls.current.target.set(0, 0, 0)
      controls.current.update()
      invalidate()
      return
    }
    const framing = combinedFraming(boxes.current, framingFilter(useAtlas.getState().modelVisibility))
    const target = framing?.center ?? new Vector3(0, 0, 0)
    const distance = Math.max(cameraDistance(size.width / size.height, Math.max(framing?.radius ?? 1.7, 0.6)), 0.6)
    camera.position.set(...cameraPosition(view, distance))
    camera.up.set(0, 1, 0)
    camera.updateProjectionMatrix()
    controls.current.target.copy(target)
    controls.current.update()
    invalidate()
  }, [phase, boxes, camera, invalidate, size.width, size.height, view])

  return <OrbitControls ref={controls} makeDefault enableDamping dampingFactor={0.08}
    enableRotate={phase !== 'inventory'}
    autoRotate={rotating && phase !== 'inventory'} autoRotateSpeed={0.65}
    mouseButtons={phase === 'inventory'
      ? { LEFT: MOUSE.PAN, MIDDLE: MOUSE.DOLLY, RIGHT: MOUSE.ROTATE }
      : { LEFT: MOUSE.ROTATE, MIDDLE: MOUSE.DOLLY, RIGHT: MOUSE.PAN }}
    minDistance={0.6} maxDistance={30} />
}

class ViewerBoundary extends Component<{ children: ReactNode }, { failed: boolean }> {
  state = { failed: false }
  static getDerivedStateFromError() { return { failed: true } }
  render() {
    if (this.state.failed) return <div className="viewer-message" role="alert">
      <h2>Modelo indisponível</h2>
      <p>Não foi possível carregar a cena 3D.</p>
      <button onClick={() => location.reload()}>Tentar novamente</button>
    </div>
    return this.props.children
  }
}

function SceneContent({ boxesRef, onLoaded, onMusclesLoaded, onFraming }: {
  boxesRef: StructureBoxes
  onLoaded: (meshes: number, triangles: number) => void
  onMusclesLoaded: (meshes: number, triangles: number) => void
  onFraming: () => void
}) {
  const skeleton = useGLTF(MODEL_PATH)
  const muscles = useGLTF(MUSCLE_MODEL_PATH)
  const layout = useAtlas((state) => state.layout)
  const modelVisibility = useAtlas((state) => state.modelVisibility)
  const fit = useMemo(() => fitTransform(skeleton.scene), [skeleton.scene])

  const offsets = useMemo(() => {
    if (layout === 'overlay') return { skeleton: 0, muscles: 0 }
    const width = (scene: Object3D) => new Box3().setFromObject(scene).getSize(new Vector3()).x * fit.scale
    return computeModelOffsets(width(skeleton.scene), width(muscles.scene))
  }, [layout, fit.scale, skeleton.scene, muscles.scene])

  return <group>
    <SceneModel scene={skeleton.scene} fit={fit} color={systemColor('SYS-ESQ')} visible={modelVisibility.skeleton !== false} offsetX={offsets.skeleton} inventoryX={-INVENTORY_SIDE_X} boxesRef={boxesRef} onLoaded={onLoaded} onFraming={onFraming} />
    <SceneModel scene={muscles.scene} fit={fit} color={systemColor('SYS-MUS')} visible={modelVisibility.muscles !== false} offsetX={offsets.muscles} inventoryX={INVENTORY_SIDE_X} boxesRef={boxesRef} onLoaded={onMusclesLoaded} onFraming={onFraming} />
  </group>
}

export default function AnatomyViewport(props: ViewerProps) {
  const { onLoaded } = props
  const [framingTick, setFramingTick] = useState(0)
  const onFraming = useCallback(() => setFramingTick((tick) => tick + 1), [])
  const [supported] = useState(() => {
    const canvas = document.createElement('canvas')
    const context = canvas.getContext('webgl2', { failIfMajorPerformanceCaveat: false })
    context?.getExtension('WEBGL_lose_context')?.loseContext()
    return Boolean(context)
  })
  const metrics = useRef<Partial<Record<'skeleton' | 'muscles', { meshes: number; triangles: number }>>>({})
  const boxesRef = useRef<Map<string, Box3>>(new Map())
  const reportTotals = useCallback(() => {
    const total = { meshes: 0, triangles: 0 }
    for (const value of Object.values(metrics.current)) {
      if (value) {
        total.meshes += value.meshes
        total.triangles += value.triangles
      }
    }
    onLoaded(total.meshes, total.triangles)
  }, [onLoaded])
  const skeletonLoaded = useCallback((meshes: number, triangles: number) => {
    metrics.current.skeleton = { meshes, triangles }
    reportTotals()
  }, [reportTotals])
  const musclesLoaded = useCallback((meshes: number, triangles: number) => {
    metrics.current.muscles = { meshes, triangles }
    reportTotals()
  }, [reportTotals])
  if (!supported) return <div className="viewer-message" role="alert">
    <h2>WebGL indisponível</h2>
    <p>Não foi possível iniciar a aceleração gráfica (WebGL 2) nesta área. Verifique se o navegador permite acelerar por hardware e recarregue a página.</p>
  </div>
  return <ViewerBoundary>
    <Canvas className="viewport-canvas"
      frameloop={props.rotating ? 'always' : 'demand'}
      camera={{ position: [0, 0, 5], fov: 45, near: 0.01, far: 100 }}
      dpr={[1, 1.75]} gl={{ antialias: true }}
      onPointerMissed={() => {
        useAtlas.getState().hover(null)
        useAtlas.getState().select(null)
      }}
      fallback={<div className="viewer-message" role="alert">WebGL indisponível neste navegador.</div>}
      aria-label="Modelo anatômico tridimensional">
      <ambientLight intensity={0.4} />
      <directionalLight position={[4, 5, 6]} intensity={1.2} />
      <directionalLight position={[-4, 2, -3]} intensity={0.6} color="#c4e5df" />
      <Suspense fallback={<Html center><div className="loading" role="status">Carregando modelos…</div></Html>}>
        <SceneContent boxesRef={boxesRef} onLoaded={skeletonLoaded} onMusclesLoaded={musclesLoaded} onFraming={onFraming} />
      </Suspense>
      <Controls view={props.view} command={props.command} rotating={props.rotating} framingTick={framingTick} boxes={boxesRef} />
    </Canvas>
  </ViewerBoundary>
}