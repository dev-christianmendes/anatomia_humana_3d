import { lazy, Suspense, useEffect, useMemo, useRef, useState } from 'react'
import type { RefObject } from 'react'
import { Activity, Bone, CircleHelp, Columns2, Dumbbell, ExternalLink, EyeOff, Focus, Keyboard as KeyboardIcon, Layers, Layers3, Minus, PanelLeftClose, PanelLeftOpen, Plus, RotateCcw, RotateCw, ScanLine, Search, X } from 'lucide-react'
import { useProgress } from '@react-three/drei'
import type { AnatomicalView } from './features/viewer/camera'
import type { CameraCommand } from './features/viewer/AnatomyViewport'
import type { StructureRecord } from './data/structures'
import { getStructure, regionLabel, systemColor, systemLabel, SYSTEMS } from './features/structure/catalog'
import { searchStructures, suggestedStructures } from './features/structure/search'
import { fetchApiStructure, fetchApiRelations, type ApiRelation } from './features/structure/api'
import { getRelations, relationLabel } from './features/structure/relations'
import { registerMcpTools } from './features/mcp/mcp'
import { totalStructureCount, useAtlas, visibleStructureCount } from './store/atlas'
import './atlas.css'

const AnatomyViewport = lazy(() => import('./features/viewer/AnatomyViewport'))
const SEARCH_LIMIT = 12

function LoadingOverlay() {
  const { active, progress, loaded, total } = useProgress()
  if (!active || total === 0 || progress >= 100) return null
  return (
    <div className="viewer-loading" role="status">
      <h2>Preparando as estruturas</h2>
      <div className="loading-bar" aria-hidden="true"><span style={{ width: `${progress}%` }} /></div>
      <p>{Math.round(progress)}% · Carregando {loaded}/{total} peças</p>
    </div>
  )
}

function StructureSearch({ inputRef, onChoose }: { inputRef: RefObject<HTMLInputElement | null>; onChoose: (structureId: string) => void }) {
  const [term, setTerm] = useState('')
  const [debounced, setDebounced] = useState('')

  useEffect(() => {
    const timer = setTimeout(() => setDebounced(term), 200)
    return () => clearTimeout(timer)
  }, [term])

  const results = useMemo(() => searchStructures(debounced, SEARCH_LIMIT), [debounced])
  const suggestions = useMemo(() => suggestedStructures(8), [])

  function choose(structureId: string) {
    onChoose(structureId)
    setTerm('')
    setDebounced('')
  }

  return <div className="search">
    <label className="search-field">
      <Search size={15} />
      <input ref={inputRef} type="search" placeholder="Buscar estrutura, músculo, região…" value={term}
        onChange={(event) => setTerm(event.target.value)} aria-label="Buscar estrutura" />
      <kbd title="Tecla /">/</kbd>
      {term && <button type="button" className="search-clear" aria-label="Limpar busca" onClick={() => { setTerm(''); setDebounced('') }}><X size={14} /></button>}
    </label>
    {debounced.trim() ? (
      results.length > 0 ? (
        <>
          <ul className="search-results">
            {results.map((entry) => <li key={entry.structureId}>
              <button type="button" onClick={() => choose(entry.structureId)}>
                <span className="search-result-name"><Focus size={13} />{entry.name}</span>
                <span className="search-result-meta">{systemLabel(entry.system)} · {regionLabel(entry.region)}</span>
              </button>
            </li>)}
          </ul>
          {results.length >= SEARCH_LIMIT && <p className="search-note">Mostrando até {SEARCH_LIMIT} resultados. Refine a busca para encontrar estruturas menores.</p>}
        </>
      ) : <p className="search-empty">Nenhuma estrutura encontrada.</p>
    ) : (
      suggestions.length > 0 && (
        <div className="search-suggestions">
          <p className="search-hint">Comece por um órgão principal ou procure qualquer estrutura nomeada.</p>
          <ul className="search-results">
            {suggestions.map((entry) => <li key={entry.structureId}>
              <button type="button" onClick={() => choose(entry.structureId)}>
                <span className="search-result-name"><Focus size={13} />{entry.name}</span>
                <span className="search-result-meta">{systemLabel(entry.system)} · {regionLabel(entry.region)}</span>
              </button>
            </li>)}
          </ul>
        </div>
      )
    )}
  </div>
}

function RelationMatch({ relation, onChoose }: { relation: ApiRelation; onChoose: (id: string) => void }) {
  return <button type="button" className="relation-row" onClick={() => onChoose(relation.targetId)}>
    <span className="relation-type">{relationLabel(relation.relationType)}</span>
    <span className="relation-target">{getStructure(relation.targetId)?.name ?? relation.targetId}</span>
    {relation.description && <span className="relation-description">{relation.description}</span>}
  </button>
}

function StructureInfo({ structureId, onChoose }: { structureId: string; onChoose: (structureId: string) => void }) {
  const structure = getStructure(structureId)
  const isolated = useAtlas((state) => state.isolatedStructureId)
  const [remote, setRemote] = useState<StructureRecord | null | undefined>(undefined)
  const [relations, setRelations] = useState<ApiRelation[]>([])
  const [relationsLoaded, setRelationsLoaded] = useState<'idle' | 'loaded' | 'absent'>('idle')

  useEffect(() => {
    let cancelled = false
    void fetchApiStructure(structureId).then((value) => {
      if (!cancelled) setRemote(value)
    })
    return () => { cancelled = true }
  }, [structureId])

  useEffect(() => {
    let cancelled = false
    void fetchApiRelations(structureId).then((value) => {
      if (!cancelled) {
        setRelations(value ? value.filter((r) => getStructure(r.targetId)) : [])
        setRelationsLoaded(value ? 'loaded' : 'absent')
      }
    })
    return () => { cancelled = true }
  }, [structureId])

  const localRelations = useMemo(() => getRelations(structureId), [structureId])

  const active = remote ?? structure
  if (!active) {
    return <span className="eyebrow">ESTRUTURA NÃO ENCONTRADA</span>
  }
  const viaApi = Boolean(remote)

  function focusRelation(targetId: string) {
    useAtlas.getState().select(targetId)
    onChoose(targetId)
  }
  return <div className="structure-panel">
    {isolated === structureId && <span className="isolated-badge">Visão isolada</span>}
    <span className="eyebrow">ESTRUTURA SELECIONADA</span>
    <div className="info-illustration"><Bone size={38} strokeWidth={1.2} /><span>{active.structureId.slice(-4)}</span></div>
    <h2>{active.name}</h2>
    {active.alternateNames[0] && <div className="latin-names">{active.alternateNames.map((name) => <span className="latin-name" key={name}>{name}</span>)}</div>}
    <div className="structure-tags">
      <span className="tag"><span className="system-dot" style={{ background: systemColor(active.system) }} />{systemLabel(active.system)}</span>
      <span className="tag">{regionLabel(active.region)}</span>
    </div>
    <div className="info-rule" />
    <dl className="metadata">
      <div><dt>Identificador</dt><dd>{active.structureId}</dd></div>
      <div><dt>Situação</dt><dd>{active.reviewed ? 'Revisada' : 'Em curadoria'}</dd></div>
    </dl>
    <h3>Descrição</h3>
    {active.description ? <p>{active.description}</p> : <p className="pending-note">Descrição em curadoria.</p>}
    <h3>Função</h3>
    {active.function ? <p>{active.function}</p> : <p className="pending-note">Função em curadoria.</p>}
    <h3>Relações anatômicas</h3>
    {(() => {
      const shown = relationsLoaded === 'absent'
        ? localRelations.map((entry) => ({ targetId: entry.targetId, relationType: entry.relationType, description: entry.description ?? null }))
        : relations
      if (shown.length === 0) {
        return <p className="pending-note">{relationsLoaded === 'loaded' ? 'Nenhuma relação catalogada.' : 'Relações em curadoria.'}</p>
      }
      return <div className="relation-list">{shown.map((entry) => <RelationMatch key={entry.relationType + entry.targetId} relation={entry} onChoose={focusRelation} />)}</div>
    })()}
    {active.educationalSourceUrl && <a className="source-link" href={active.educationalSourceUrl} target="_blank" rel="noreferrer">{active.educationalSourceName ?? 'Consultar fonte'} <ExternalLink size={14} /></a>}
    {!active.reviewed && <p className="curation-note">Conteúdo pendente de curadoria.</p>}
    <p className="data-origin">Dados {viaApi ? 'via API' : 'locais'}</p>
  </div>
}

export default function Atlas() {
  const [view, setView] = useState<AnatomicalView>('front')
  const [command, setCommand] = useState<CameraCommand>({ action: 'reset', sequence: 0 })
  const [rotating, setRotating] = useState(false)
  const [sidebarCollapsed, setSidebarCollapsed] = useState(false)
  const [metrics, setMetrics] = useState<{ meshes: number; triangles: number } | null>(null)
  const credits = useRef<HTMLDialogElement>(null)
  const searchRef = useRef<HTMLInputElement>(null)
  const [onLoaded] = useState(() => (meshes: number, triangles: number) => setMetrics({ meshes, triangles }))

  useEffect(() => {
    registerMcpTools(document as unknown as Parameters<typeof registerMcpTools>[0], {
      select: (structureId: string) => useAtlas.getState().select(structureId),
      focus: (structureId: string) =>
        setCommand((previous) => ({ action: 'focus' as const, structureId, sequence: previous.sequence + 1 })),
    })
  }, [])

  const selectedStructureId = useAtlas((state) => state.selectedStructureId)
  const hoveredStructureId = useAtlas((state) => state.hoveredStructureId)
  const hoverPosition = useAtlas((state) => state.hoverPosition)
  const isolatedStructureId = useAtlas((state) => state.isolatedStructureId)
  const systemVisibility = useAtlas((state) => state.systemVisibility)
  const explosionProgress = useAtlas((state) => state.explosionProgress)
  const layout = useAtlas((state) => state.layout)
  const modelVisibility = useAtlas((state) => state.modelVisibility)
  const visibleCount = visibleStructureCount(systemVisibility)
  const totalCount = totalStructureCount()

  const sceneCaption = isolatedStructureId
    ? 'ESTRUTURA SELECIONADA'
    : explosionProgress > 45
      ? 'INVENTÁRIO ANATÔMICO'
      : explosionProgress > 5
        ? 'ESTRUTURAS SEPARADAS'
        : 'CORPO HUMANO ADULTO · MASCULINO'

  function changeView(next: AnatomicalView) {
    if (explosionProgress > 80 && next !== 'front') return
    setView(next)
    setCommand((previous) => ({ action: 'reset', sequence: previous.sequence + 1 }))
  }
  function zoom(direction: 'in' | 'out') {
    setCommand((previous) => ({ action: direction, sequence: previous.sequence + 1 }))
  }
  function reset() {
    changeView('front')
    setRotating(false)
    useAtlas.getState().setExplosion(0)
  }

  function chooseFromSearch(structureId: string) {
    useAtlas.getState().select(structureId)
    setCommand((previous) => ({ action: 'focus', structureId, sequence: previous.sequence + 1 }))
  }

  useEffect(() => {
    function onKeyDown(event: KeyboardEvent) {
      const target = event.target as HTMLElement | null
      if (target && (target.tagName === 'INPUT' || target.tagName === 'TEXTAREA' || target.isContentEditable)) return
      if (event.metaKey || event.ctrlKey || event.altKey) return
      const key = event.key.toLowerCase()
      if (key === 'r') { reset(); event.preventDefault(); return }
      if (key === '1') { changeView('front'); return }
      if (key === '2') { changeView('back'); return }
      if (key === '3') { changeView('left'); return }
      if (key === '4') { changeView('threequarter'); return }
      if (key === '+' || key === '=') { zoom('in'); event.preventDefault(); return }
      if (key === '-' || key === '_') { zoom('out'); event.preventDefault(); return }
      if (key === '0') { useAtlas.getState().select(null); return }
      if (key === '/') {
        searchRef.current?.focus()
        event.preventDefault()
        return
      }
      if (key === 'f') {
        const selected = useAtlas.getState().selectedStructureId
        if (selected) {
          setCommand((previous) => ({ action: 'focus', structureId: selected, sequence: previous.sequence + 1 }))
        }
      }
    }
    window.addEventListener('keydown', onKeyDown)
    return () => window.removeEventListener('keydown', onKeyDown)
  })

  return <div className={`app-shell${sidebarCollapsed ? ' sidebar-collapsed' : ''}`}>
    <header className="header">
      <a className="brand" href="./" aria-label="Anatomia 3D, início"><span className="brand-symbol"><Activity size={23} /></span><span>anatomia<span className="brand-suffix">3D</span></span></a>
      <div className="header-divider" /><span className="header-title">Atlas humano</span>
      <span className="milestone">Viewer <span>01</span></span>
      <button className="icon-button" title="Créditos e licença" aria-label="Créditos e licença" onClick={() => credits.current?.showModal()}><CircleHelp size={20} /></button>
    </header>
    <main className="workspace">
      <aside className="sidebar" aria-label="Controles de visualização">
        <div className="sidebar-heading"><span className="eyebrow">EXPLORAR</span>
          <span className="sidebar-heading-actions"><Layers3 size={17} /><button className="icon-button" title="Recolher painel de controles" aria-label="Recolher painel de controles" onClick={() => setSidebarCollapsed(true)}><PanelLeftClose size={18} /></button></span>
        </div>
        <h1>Corpo humano</h1>
        <div className="catalog-item"><span className="bone-icon"><Bone size={22} /></span><div><strong>Esquelético · Muscular</strong><span>BodyParts3D + Z-Anatomy</span></div><span className="status-dot" /></div>
        <StructureSearch inputRef={searchRef} onChoose={chooseFromSearch} />
        <section className="control-section">
          <h2>Orientação</h2>
          <div className="view-options" role="group" aria-label="Vista anatômica">
            {([['threequarter', '¾'], ['front', 'Anterior'], ['back', 'Posterior'], ['left', 'Lateral']] as const).map(([value, label]) => <button key={value} aria-pressed={view === value} disabled={explosionProgress > 80 && value !== 'front'} onClick={() => changeView(value)}>{label}</button>)}
          </div>
        </section>
        <section className="control-section">
          <h2>Visualização</h2>
          <div className="view-options layout-options" role="group" aria-label="Modo de exibição dos modelos">
            <button aria-pressed={layout === 'side'} onClick={() => useAtlas.getState().setLayout('side')}><Columns2 size={15} />Lado a lado</button>
            <button aria-pressed={layout === 'overlay'} onClick={() => useAtlas.getState().setLayout('overlay')}><Layers size={15} />Sobreposto</button>
          </div>
          <label className="toggle-row"><span><Bone size={17} />Esqueleto</span><input type="checkbox" aria-label="Mostrar esqueleto" checked={modelVisibility.skeleton !== false} onChange={() => useAtlas.getState().toggleModel('skeleton')} /></label>
          <label className="toggle-row"><span><Dumbbell size={17} />Muscular</span><input type="checkbox" aria-label="Mostrar musculatura" checked={modelVisibility.muscles !== false} onChange={() => useAtlas.getState().toggleModel('muscles')} /></label>
          <label className="toggle-row"><span><RotateCw size={17} />Rotação automática</span><input type="checkbox" checked={rotating} onChange={() => setRotating(!rotating)} /></label>
        </section>
        <section className="control-section">
          <h2>Explosão</h2>
          <label className="explosion-row">
            <span>Separação das estruturas <em>{explosionProgress}%</em></span>
            <input type="range" min={0} max={100} step={1} value={explosionProgress}
              onChange={(event) => useAtlas.getState().setExplosion(Number(event.target.value))}
              aria-label="Intensidade da explosão" />
          </label>
        </section>
        <section className="control-section">
          <h2>Sistemas</h2>
          <div className="system-tools">
            <div className="system-presets" role="group" aria-label="Mostrar apenas um sistema">
              {SYSTEMS.map((system) => {
                const only = systemVisibility[system.code] !== false && SYSTEMS.every((other) => other.code === system.code || systemVisibility[other.code] === false)
                return <button key={system.code} aria-pressed={only} onClick={() => useAtlas.getState().showOnlySystem(system.code)}>{system.label}</button>
              })}
              <button aria-pressed={SYSTEMS.every((system) => systemVisibility[system.code] !== false)} onClick={() => useAtlas.getState().showAllSystems()}>Ambos</button>
            </div>
            <button className="system-hide-all" aria-label="Ocultar todos os sistemas" title="Ocultar todos os sistemas" disabled={visibleCount === 0} onClick={() => useAtlas.getState().hideAllSystems()}><EyeOff size={15} /></button>
          </div>
          <div className="system-list">
            {SYSTEMS.map((system) => {
              const checked = systemVisibility[system.code] !== false
              const only = checked && SYSTEMS.every((other) => other.code === system.code || systemVisibility[other.code] === false)
              return (
                <div className="system-row" key={system.code}>
                  <button type="button" className="system-name" aria-pressed={only} title={`Mostrar apenas ${system.label.toLowerCase()}`} onClick={() => useAtlas.getState().showOnlySystem(system.code)}>
                    <span className="system-dot" style={{ background: system.color, opacity: checked ? 1 : 0.35 }} />
                    <span className="system-label">{system.label}<em>{system.count} estruturas</em></span>
                  </button>
                  <input type="checkbox" aria-label={`Mostrar sistema ${system.label}`} checked={checked} onChange={() => useAtlas.getState().toggleSystem(system.code)} />
                  <span className="system-description">{system.description}</span>
                </div>
              )
            })}
          </div>
          <p className="system-summary">{visibleCount} de {totalCount} estruturas visíveis</p>
        </section>
        {(selectedStructureId || isolatedStructureId) && <div className="structure-actions">
          {selectedStructureId && !isolatedStructureId && <button className="isolate-button" onClick={() => useAtlas.getState().isolate(selectedStructureId)}><Focus size={16} />Isolar estrutura</button>}
          {isolatedStructureId && <button className="reset-button" onClick={() => useAtlas.getState().restore()}><RotateCcw size={16} />Restaurar visão geral</button>}
          {selectedStructureId && <button className="text-button" onClick={() => useAtlas.getState().select(null)}><X size={15} />Limpar seleção</button>}
        </div>}
        <button className="reset-button" onClick={reset}><RotateCcw size={17} />Restaurar visualização</button>
        <div className="shortcuts-note" aria-label="Atalhos de teclado"><KeyboardIcon size={13} /><span>Atalhos: <kbd>R</kbd> reset · <kbd>1</kbd><kbd>2</kbd><kbd>3</kbd><kbd>4</kbd> vistas · <kbd>+</kbd>/<kbd>−</kbd> zoom · <kbd>F</kbd> foco · <kbd>0</kbd> limpar</span></div>
        <div className="sidebar-bottom"><span className="edition">ATLAS / EDIÇÃO INICIAL</span><p>Uma perspectiva sobre<br />o corpo humano.</p><span className="small-note">Uso educacional. Não diagnóstico.</span></div>
      </aside>
      <section className="viewport" aria-label="Atlas 3D">
        {sidebarCollapsed && <button className="sidebar-expand" title="Expandir painel de controles" aria-label="Expandir painel de controles" onClick={() => setSidebarCollapsed(false)}><PanelLeftOpen size={18} /></button>}
        <div className="viewport-heading"><div><span className="eyebrow">ANATOMIA HUMANA</span><h2>Esqueleto e musculatura</h2></div><span className="view-badge"><span className="status-dot" />3D</span></div>
        <Suspense fallback={<div className="viewer-message" role="status">Preparando visualização…</div>}>
          <AnatomyViewport view={view} command={command} rotating={rotating} onLoaded={onLoaded} />
        </Suspense>
        <LoadingOverlay />
        <div className="orientation-label">{view === 'front' ? 'ANTERIOR' : view === 'back' ? 'POSTERIOR' : view === 'left' ? 'LATERAL' : 'SEMI-VISTA'}</div>
        <span className="scene-caption" role="status">{sceneCaption}</span>
        {hoveredStructureId && hoverPosition && (() => {
          const name = getStructure(hoveredStructureId)?.name
          return name ? <div className="hover-tooltip" style={{ left: hoverPosition.x, top: hoverPosition.y - 22 }}>{name}</div> : null
        })()}
        <div className="viewport-tools" role="toolbar" aria-label="Câmera">
          <button className="icon-button" aria-label="Aproximar" title="Aproximar" onClick={() => setCommand((previous) => ({ action: 'in', sequence: previous.sequence + 1 }))}><Plus size={20} /></button>
          <button className="icon-button" aria-label="Afastar" title="Afastar" onClick={() => setCommand((previous) => ({ action: 'out', sequence: previous.sequence + 1 }))}><Minus size={20} /></button>
          <span className="tool-divider" />
          <button className="icon-button" aria-label="Resetar câmera" title="Resetar câmera" onClick={() => changeView('front')}><Focus size={20} /></button>
        </div>
        <div className="viewport-footer"><span className="model-status" role="status"><span className={`status-dot ${metrics ? '' : 'pending'}`} />{metrics ? 'Modelo carregado' : 'Carregando modelo'}</span><span>BodyParts3D + Z-Anatomy</span></div>
        <div className="viewport-hints" aria-label="Como interagir">
          <span>Arraste para {explosionProgress > 45 ? 'deslocar' : 'orbitar'}</span>
          <span>Scroll para aproximar</span>
          <span>Clique para inspecionar</span>
        </div>
      </section>
      <aside className="info-panel" aria-label="Informações do modelo">
        {selectedStructureId
          ? <StructureInfo key={selectedStructureId} structureId={selectedStructureId} onChoose={chooseFromSearch} />
          : <div className="model-panel">
            <span className="eyebrow">MODELO EM EXIBIÇÃO</span>
            <div className="info-illustration"><Bone size={38} strokeWidth={1.2} /><span>02</span></div>
            <h2>Esqueleto e<br />musculatura</h2><span className="latin-name">Systema skeletale et musculare</span>
            <div className="info-rule" />
            <h3>Visão geral</h3><p>O esqueleto sustenta o corpo e protege órgãos internos; os músculos, em conjunto com ele, produzem o movimento.</p>
            <dl className="metadata"><div><dt>Representação</dt><dd>Corpo inteiro</dd></div><div><dt>Fonte</dt><dd>BodyParts3D · Z-Anatomy</dd></div><div><dt>Formato</dt><dd>glTF 2.0 / GLB</dd></div><div><dt>Malhas</dt><dd>{metrics?.meshes.toLocaleString('pt-BR') ?? '—'}</dd></div><div><dt>Triângulos</dt><dd>{metrics ? Math.round(metrics.triangles).toLocaleString('pt-BR') : '—'}</dd></div></dl>
            <a className="source-link" href="https://github.com/Z-Anatomy/Models-of-human-anatomy" target="_blank" rel="noreferrer">Consultar fonte <ExternalLink size={14} /></a>
            <div className="asset-footer"><ScanLine size={20} /><span>Modelo anatômico reduzido<br /><strong>Referência visual educacional</strong></span></div>
          </div>}
      </aside>
    </main>
    <footer className="footer"><span>ANATOMIA 3D</span><span>Milestone 01 · First 3D Viewer</span><button onClick={() => credits.current?.showModal()}>Fontes e licença <ExternalLink size={12} /></button></footer>
    <dialog ref={credits} aria-labelledby="credits-title" className="credits-dialog">
      <span className="eyebrow">PROCEDÊNCIA DO ASSET</span><h2 id="credits-title">Fontes e licença</h2>
      <p><strong>BodyParts3D</strong>, © The Database Center for Life Science, licensed under CC Attribution-ShareAlike 2.1 Japan.</p>
      <p>Recorte do sistema esquelético (FMA23876 + membros), conversão OBJ para GLB, rotação dos eixos e material de exibição. Malhas reduzidas da versão 4.0.</p>
      <a href="https://dbarchive.biosciencedbc.jp/en/bodyparts3d/lic.html" target="_blank" rel="noreferrer">Licença BodyParts3D <ExternalLink size={14} /></a>
      <p><strong>Z-Anatomy — Models of human anatomy</strong>, licensed under CC BY-SA 4.0.</p>
      <p>Sistema muscular extraído do Startup.blend oficial, excluído tecido conjuntivo (462 estruturas), conversão para milímetros (Y-up), material compartilhado e compressão Meshopt.</p>
      <a href="https://github.com/Z-Anatomy/Models-of-human-anatomy/blob/main/LICENSE" target="_blank" rel="noreferrer">Licença Z-Anatomy <ExternalLink size={14} /></a>
      <div className="credits-downloads">
        <a href="models/bodyparts3d-skeleton.glb" download>Baixar esqueleto</a>
        <a href="models/z-anatomy-muscles.glb" download>Baixar musculatura</a>
      </div>
      <form method="dialog"><button className="reset-button">Fechar</button></form>
    </dialog>
  </div>
}