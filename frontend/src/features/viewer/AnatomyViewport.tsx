import { Component, Suspense, useCallback, useEffect, useMemo, useRef, useState } from 'react'
import type { ReactNode } from 'react'
import { Canvas, useThree } from '@react-three/fiber'
import type { ThreeEvent } from '@react-three/fiber'
import { Html, OrbitControls, useGLTF } from '@react-three/drei'
import { Box3, Mesh, MeshStandardMaterial, Object3D, Vector3 } from 'three'
import type { OrbitControls as OrbitControlsImpl } from 'three-stdlib'
import { cameraDistance, cameraPosition } from './camera'
import type { AnatomicalView } from './camera'
import { getStructure } from '../structure/catalog'
import { systemVisible, useAtlas } from '../../store/atlas'

const MODEL_PATH = 'models/bodyparts3d-skeleton.glb'
const MUSCLE_MODEL_PATH = 'models/z-anatomy-muscles.glb'
const HOVER_COLOR = '#eec39a'
const SELECTED_COLOR = '#1f7a5b'
useGLTF.preload(MODEL_PATH)
useGLTF.preload(MUSCLE_MODEL_PATH)

export type CameraCommand = { action: 'reset' | 'in' | 'out'; sequence: number }
type ViewerProps = {
  view: AnatomicalView
  command: CameraCommand
  rotating: boolean
  wireframe: boolean
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

function SceneModel({ scene, fit, color, wireframe, onLoaded }: {
  scene: Object3D
  fit: { center: Vector3; scale: number }
  color: string
  wireframe: boolean
  onLoaded: (meshes: number, triangles: number) => void
}) {
  const invalidate = useThree((state) => state.invalidate)
  const hovered = useAtlas((state) => state.hoveredStructureId)
  const selected = useAtlas((state) => state.selectedStructureId)
  const isolated = useAtlas((state) => state.isolatedStructureId)
  const systemVisibility = useAtlas((state) => state.systemVisibility)

  const [model] = useState(() => {
    const copy = scene.clone(true)
    copy.traverse((object) => {
      if (object instanceof Mesh) {
        object.material = new MeshStandardMaterial({ color, roughness: 0.55 })
      }
    })
    copy.position.copy(fit.center).multiplyScalar(-fit.scale)
    copy.scale.setScalar(fit.scale)
    return copy
  })

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

  useEffect(() => {
    let meshes = 0
    let triangles = 0
    model.traverse((object) => {
      if (object instanceof Mesh) {
        meshes += 1
        triangles += (object.geometry.index?.count ?? object.geometry.attributes.position.count) / 3
        ;(object.material as MeshStandardMaterial).wireframe = wireframe
      }
    })
    onLoaded(meshes, triangles)
  }, [model, onLoaded, wireframe])

  useEffect(() => {
    model.traverse((object) => {
      if (!(object instanceof Mesh)) return
      const id = object.userData?.structureId
      object.visible = isolated === null
        ? systemVisible(systemVisibility, getStructure(id)?.system ?? 'SYS-ESQ')
        : isolated === id
    })
    invalidate()
  }, [model, systemVisibility, isolated, hovered, selected, invalidate])

  useEffect(() => {
    for (const [structureId, materials] of materialsByStructure) {
      const next = selected === structureId || isolated === structureId
        ? SELECTED_COLOR
        : hovered === structureId
          ? HOVER_COLOR
          : color
      for (const material of materials) material.color.set(next)
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
    useAtlas.getState().hover(resolveStructureId(event))
  }

  function selectStructure(event: ThreeEvent<PointerEvent>) {
    event.stopPropagation()
    useAtlas.getState().select(resolveStructureId(event))
  }

  return <primitive object={model}
    onPointerMove={hoverStructure}
    onPointerOut={() => useAtlas.getState().hover(null)}
    onPointerDown={selectStructure} />
}

function Controls({ view, command, rotating }: Omit<ViewerProps, 'wireframe' | 'onLoaded'>) {
  const controls = useRef<OrbitControlsImpl>(null)
  const { camera, size, invalidate } = useThree()
  const applied = useRef(-1)

  useEffect(() => {
    if (!controls.current || applied.current === command.sequence) return
    applied.current = command.sequence
    if (command.action === 'in' || command.action === 'out') {
      const offset = camera.position.clone().sub(controls.current.target)
      offset.multiplyScalar(command.action === 'in' ? 0.8 : 1.25).clampLength(0.6, 30)
      camera.position.copy(controls.current.target).add(offset)
    } else {
      camera.position.set(...cameraPosition(view, cameraDistance(size.width / size.height)))
      camera.up.set(0, 1, 0)
      camera.updateProjectionMatrix()
      controls.current.target.set(0, 0, 0)
    }
    controls.current.update()
    invalidate()
  }, [camera, command, invalidate, size.width, size.height, view])

  return <OrbitControls ref={controls} makeDefault enableDamping dampingFactor={0.08}
    autoRotate={rotating} autoRotateSpeed={0.65} minDistance={0.6} maxDistance={30} />
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

function SceneContent({ wireframe, onLoaded, onMusclesLoaded }: {
  wireframe: boolean
  onLoaded: (meshes: number, triangles: number) => void
  onMusclesLoaded: (meshes: number, triangles: number) => void
}) {
  const skeleton = useGLTF(MODEL_PATH)
  const muscles = useGLTF(MUSCLE_MODEL_PATH)
  const fit = useMemo(() => fitTransform(skeleton.scene), [skeleton.scene])
  return <group>
    <SceneModel scene={skeleton.scene} fit={fit} color="#d4bfb1" wireframe={wireframe} onLoaded={onLoaded} />
    <SceneModel scene={muscles.scene} fit={fit} color="#b8433a" wireframe={wireframe} onLoaded={onMusclesLoaded} />
  </group>
}

export default function AnatomyViewport(props: ViewerProps) {
  const { onLoaded } = props
  const [supported] = useState(() => {
    const canvas = document.createElement('canvas')
    const context = canvas.getContext('webgl2', { failIfMajorPerformanceCaveat: false })
    context?.getExtension('WEBGL_lose_context')?.loseContext()
    return Boolean(context)
  })
  const metrics = useRef<Partial<Record<'skeleton' | 'muscles', { meshes: number; triangles: number }>>>({})
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
        <SceneContent wireframe={props.wireframe} onLoaded={skeletonLoaded} onMusclesLoaded={musclesLoaded} />
      </Suspense>
      <Controls view={props.view} command={props.command} rotating={props.rotating} />
    </Canvas>
  </ViewerBoundary>
}