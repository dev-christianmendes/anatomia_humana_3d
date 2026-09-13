import { lazy, Suspense, useEffect, useRef, useState } from 'react'
import { Activity, Bone, Box, CircleHelp, ExternalLink, Focus, Layers3, Minus, Plus, RotateCcw, RotateCw, ScanLine, X } from 'lucide-react'
import type { AnatomicalView } from './features/viewer/camera'
import type { CameraCommand } from './features/viewer/AnatomyViewport'
import type { StructureRecord } from './data/structures'
import { getStructure, regionLabel, systemLabel, SYSTEMS } from './features/structure/catalog'
import { fetchApiStructure } from './features/structure/api'
import { useAtlas } from './store/atlas'
import './atlas.css'

const AnatomyViewport = lazy(() => import('./features/viewer/AnatomyViewport'))

function StructureInfo({ structureId }: { structureId: string }) {
  const structure = getStructure(structureId)
  const isolated = useAtlas((state) => state.isolatedStructureId)
  const [remote, setRemote] = useState<StructureRecord | null | undefined>(undefined)

  useEffect(() => {
    let cancelled = false
    void fetchApiStructure(structureId).then((value) => {
      if (!cancelled) setRemote(value)
    })
    return () => { cancelled = true }
  }, [structureId])

  const active = remote ?? structure
  if (!active) {
    return <span className="eyebrow">ESTRUTURA NÃO ENCONTRADA</span>
  }
  const viaApi = Boolean(remote)
  return <div className="structure-panel">
    {isolated === structureId && <span className="isolated-badge">Visão isolada</span>}
    <span className="eyebrow">ESTRUTURA SELECIONADA</span>
    <div className="info-illustration"><Bone size={38} strokeWidth={1.2} /><span>{active.structureId.slice(-4)}</span></div>
    <h2>{active.name}</h2>
    {active.alternateNames[0] && <span className="latin-name">{active.alternateNames[0]}</span>}
    <div className="info-rule" />
    <dl className="metadata">
      <div><dt>Sistema</dt><dd>{systemLabel(active.system)}</dd></div>
      <div><dt>Região</dt><dd>{regionLabel(active.region)}</dd></div>
      <div><dt>Identificador</dt><dd>{active.structureId}</dd></div>
    </dl>
    <h3>Descrição</h3>
    {active.description ? <p>{active.description}</p> : <p className="pending-note">Descrição em curadoria.</p>}
    <h3>Função</h3>
    {active.function ? <p>{active.function}</p> : <p className="pending-note">Função em curadoria.</p>}
    {active.educationalSourceUrl && <a className="source-link" href={active.educationalSourceUrl} target="_blank" rel="noreferrer">{active.educationalSourceName ?? 'Consultar fonte'} <ExternalLink size={14} /></a>}
    {!active.reviewed && <p className="curation-note">Conteúdo pendente de curadoria.</p>}
    <p className="data-origin">Dados {viaApi ? 'via API' : 'locais'}</p>
  </div>
}

export default function Atlas() {
  const [view, setView] = useState<AnatomicalView>('front')
  const [command, setCommand] = useState<CameraCommand>({ action: 'reset', sequence: 0 })
  const [rotating, setRotating] = useState(false)
  const [wireframe, setWireframe] = useState(false)
  const [metrics, setMetrics] = useState<{ meshes: number; triangles: number } | null>(null)
  const credits = useRef<HTMLDialogElement>(null)
  const [onLoaded] = useState(() => (meshes: number, triangles: number) => setMetrics({ meshes, triangles }))

  const selectedStructureId = useAtlas((state) => state.selectedStructureId)
  const isolatedStructureId = useAtlas((state) => state.isolatedStructureId)
  const systemVisibility = useAtlas((state) => state.systemVisibility)

  function changeView(next: AnatomicalView) {
    setView(next)
    setCommand((previous) => ({ action: 'reset', sequence: previous.sequence + 1 }))
  }
  function reset() {
    changeView('front')
    setRotating(false)
    setWireframe(false)
  }

  return <div className="app-shell">
    <header className="header">
      <a className="brand" href="./" aria-label="Anatomia 3D, início"><span className="brand-symbol"><Activity size={23} /></span><span>anatomia<span className="brand-suffix">3D</span></span></a>
      <div className="header-divider" /><span className="header-title">Atlas humano</span>
      <span className="milestone">Viewer <span>01</span></span>
      <button className="icon-button" title="Créditos e licença" aria-label="Créditos e licença" onClick={() => credits.current?.showModal()}><CircleHelp size={20} /></button>
    </header>
    <main className="workspace">
      <aside className="sidebar" aria-label="Controles de visualização">
        <div className="sidebar-heading"><span className="eyebrow">EXPLORAR</span><Layers3 size={17} /></div>
        <h1>Corpo humano</h1>
        <div className="catalog-item"><span className="bone-icon"><Bone size={22} /></span><div><strong>Esquelético</strong><span>BodyParts3D · 4.0</span></div><span className="status-dot" /></div>
        <section className="control-section">
          <h2>Orientação</h2>
          <div className="view-options" role="group" aria-label="Vista anatômica">
            {([['front', 'Anterior'], ['back', 'Posterior'], ['left', 'Lateral']] as const).map(([value, label]) => <button key={value} aria-pressed={view === value} onClick={() => changeView(value)}>{label}</button>)}
          </div>
        </section>
        <section className="control-section">
          <h2>Visualização</h2>
          <label className="toggle-row"><span><RotateCw size={17} />Rotação automática</span><input type="checkbox" checked={rotating} onChange={() => setRotating(!rotating)} /></label>
          <label className="toggle-row"><span><Box size={17} />Malha poligonal</span><input type="checkbox" checked={wireframe} onChange={() => setWireframe(!wireframe)} /></label>
        </section>
        <section className="control-section">
          <h2>Sistemas</h2>
          <div className="system-list">
            {SYSTEMS.map((system) => {
              const checked = systemVisibility[system.code] !== false
              return (
                <label className="toggle-row" key={system.code}>
                  <span className="system-label"><span className={`system-dot ${checked ? '' : 'muted'}`} />{system.label}<em>{system.count} estruturas</em></span>
                  <input type="checkbox" aria-label={`Sistema ${system.label}`} checked={checked} onChange={() => useAtlas.getState().toggleSystem(system.code)} />
                </label>
              )
            })}
          </div>
        </section>
        {(selectedStructureId || isolatedStructureId) && <div className="structure-actions">
          {selectedStructureId && !isolatedStructureId && <button className="isolate-button" onClick={() => useAtlas.getState().isolate(selectedStructureId)}><Focus size={16} />Isolar estrutura</button>}
          {isolatedStructureId && <button className="reset-button" onClick={() => useAtlas.getState().restore()}><RotateCcw size={16} />Restaurar visão geral</button>}
          {selectedStructureId && <button className="text-button" onClick={() => useAtlas.getState().select(null)}><X size={15} />Limpar seleção</button>}
        </div>}
        <button className="reset-button" onClick={reset}><RotateCcw size={17} />Restaurar visualização</button>
        <div className="sidebar-bottom"><span className="edition">ATLAS / EDIÇÃO INICIAL</span><p>Uma perspectiva sobre<br />o corpo humano.</p><span className="small-note">Uso educacional. Não diagnóstico.</span></div>
      </aside>
      <section className="viewport" aria-label="Atlas 3D">
        <div className="viewport-heading"><div><span className="eyebrow">ANATOMIA HUMANA</span><h2>Sistema esquelético</h2></div><span className="view-badge"><span className="status-dot" />3D</span></div>
        <Suspense fallback={<div className="viewer-message" role="status">Preparando visualização…</div>}>
          <AnatomyViewport view={view} command={command} rotating={rotating} wireframe={wireframe} onLoaded={onLoaded} />
        </Suspense>
        <div className="orientation-label">{view === 'front' ? 'ANTERIOR' : view === 'back' ? 'POSTERIOR' : 'LATERAL'}</div>
        <div className="viewport-tools" role="toolbar" aria-label="Câmera">
          <button className="icon-button" aria-label="Aproximar" title="Aproximar" onClick={() => setCommand((previous) => ({ action: 'in', sequence: previous.sequence + 1 }))}><Plus size={20} /></button>
          <button className="icon-button" aria-label="Afastar" title="Afastar" onClick={() => setCommand((previous) => ({ action: 'out', sequence: previous.sequence + 1 }))}><Minus size={20} /></button>
          <span className="tool-divider" />
          <button className="icon-button" aria-label="Resetar câmera" title="Resetar câmera" onClick={() => changeView('front')}><Focus size={20} /></button>
        </div>
        <div className="viewport-footer"><span className="model-status" role="status"><span className={`status-dot ${metrics ? '' : 'pending'}`} />{metrics ? 'Modelo carregado' : 'Carregando modelo'}</span><span>BodyParts3D / CC BY 4.0</span></div>
      </section>
      <aside className="info-panel" aria-label="Informações do modelo">
        {selectedStructureId
          ? <StructureInfo key={selectedStructureId} structureId={selectedStructureId} />
          : <div className="model-panel">
            <span className="eyebrow">MODELO EM EXIBIÇÃO</span>
            <div className="info-illustration"><Bone size={38} strokeWidth={1.2} /><span>01</span></div>
            <h2>Sistema<br />esquelético</h2><span className="latin-name">Systema skeletale</span>
            <div className="info-rule" />
            <h3>Visão geral</h3><p>O esqueleto sustenta o corpo, protege órgãos internos e, em conjunto com os músculos, participa do movimento.</p>
            <dl className="metadata"><div><dt>Representação</dt><dd>Corpo inteiro</dd></div><div><dt>Fonte</dt><dd>BodyParts3D</dd></div><div><dt>Formato</dt><dd>glTF 2.0 / GLB</dd></div><div><dt>Malhas</dt><dd>{metrics?.meshes.toLocaleString('pt-BR') ?? '—'}</dd></div><div><dt>Triângulos</dt><dd>{metrics ? Math.round(metrics.triangles).toLocaleString('pt-BR') : '—'}</dd></div></dl>
            <a className="source-link" href="https://dbarchive.biosciencedbc.jp/en/bodyparts3d/desc.html" target="_blank" rel="noreferrer">Consultar fonte <ExternalLink size={14} /></a>
            <div className="asset-footer"><ScanLine size={20} /><span>Modelo anatômico reduzido<br /><strong>Referência visual educacional</strong></span></div>
          </div>}
      </aside>
    </main>
    <footer className="footer"><span>ANATOMIA 3D</span><span>Milestone 01 · First 3D Viewer</span><button onClick={() => credits.current?.showModal()}>Fontes e licença <ExternalLink size={12} /></button></footer>
    <dialog ref={credits} aria-labelledby="credits-title" className="credits-dialog">
      <span className="eyebrow">PROCEDÊNCIA DO ASSET</span><h2 id="credits-title">Fontes e licença</h2>
      <p>BodyParts3D, © The Database Center for Life Science licensed under CC Attribution 4.0 International.</p>
      <p>Recorte do sistema esquelético, conversão OBJ para GLB, rotação dos eixos e material de exibição. Malhas reduzidas da versão 4.0.</p>
      <a href="https://dbarchive.biosciencedbc.jp/en/bodyparts3d/lic.html" target="_blank" rel="noreferrer">Licença na fonte oficial <ExternalLink size={14} /></a>
      <a href="models/bodyparts3d-skeleton.glb" download>Baixar modelo GLB</a>
      <form method="dialog"><button className="reset-button">Fechar</button></form>
    </dialog>
  </div>
}