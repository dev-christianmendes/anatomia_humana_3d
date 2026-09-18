import { useEffect, useMemo, useRef, useState } from 'react'
import { Activity, ArrowUpRight, ChevronRight, Focus, Info, Layers3, Pause, RotateCcw, RotateCw, Search, X } from 'lucide-react'
import AtlasScene from './features/viewer/atlas/scene'
import type { Atlas, SystemCode, View } from './features/viewer/atlas/types'
import { activeSystems, conceptExplanation, hasCuratedExplanation, SYSTEM_COLORS, systemDefinition, systemLabel } from './features/viewer/atlas/systems'
import { searchConcepts, suggestedConcepts } from './features/viewer/atlas/search'
import { useAtlas } from './store/atlas'
import { registerMcpTools } from './features/mcp/mcp'
import { conceptParts, conceptRecord, structureNamePt, STRUCTURES_V2 } from './data/catalogV2'
import type { ConceptRecordV2 } from './data/catalogV2'
import './atlas.css'

const ORGANS_PRESET: SystemCode[] = ['SYS-CAR', 'SYS-RES', 'SYS-DIG', 'SYS-URI', 'SYS-END', 'SYS-REP']

export default function Home() {
  const detailTitle = useRef<HTMLHeadingElement>(null)
  const searchInput = useRef<HTMLInputElement>(null)
  const chooseConceptRef = useRef<((concept: ConceptRecordV2) => void) | null>(null)
  const [atlas, setAtlas] = useState<Atlas | null>(null)
  const [progress, setProgress] = useState(0)
  const [error, setError] = useState('')
  const [query, setQuery] = useState('')
  const [panel, setPanel] = useState<'layers' | 'search' | null>(null)
  const [details, setDetails] = useState(false)
  const [about, setAbout] = useState(false)
  const [chosen, setChosen] = useState<ConceptRecordV2 | null>(null)

  const store = useAtlas()

  useEffect(() => {
    const abort = new AbortController()
    fetch('/models/fullbody/atlas.json', { signal: abort.signal })
      .then((response) => {
        if (!response.ok) throw new Error('O catálogo de anatomia não pôde ser carregado.')
        return response.json()
      })
      .then((data) => setAtlas(data as Atlas))
      .catch((e: unknown) => {
        if (e instanceof Error && e.name !== 'AbortError') setError(e.message)
      })
    return () => abort.abort()
  }, [])

  useEffect(() => {
    chooseConceptRef.current = chooseConcept
  })

  useEffect(() => {
    registerMcpTools(document as unknown as Parameters<typeof registerMcpTools>[0], {
      selectConcept: (conceptId: string) => {
        const concept = conceptRecord(conceptId)
        if (concept) chooseConceptRef.current?.(concept)
      },
    })
  }, [])

  useEffect(() => {
    const onKeyDown = (event: KeyboardEvent) => {
      const target = event.target as HTMLElement | null
      const editing = Boolean(target && (target.tagName === 'INPUT' || target.tagName === 'TEXTAREA' || target.isContentEditable))
      const key = event.key.toLowerCase()
      if (key === 'escape') {
        setAbout(false)
        setDetails(false)
        setPanel(null)
        if (editing) (target as HTMLElement).blur()
        return
      }
      if (editing || event.metaKey || event.ctrlKey || event.altKey) return
      if (key === 'r') {
        resetAll()
        event.preventDefault()
        return
      }
      if (key === '/') {
        openSearch()
        event.preventDefault()
        return
      }
      const viewKeys: Record<string, View> = { '1': 'front', '2': 'back', '3': 'side', '4': 'three-quarter' }
      if (viewKeys[key]) changeView(viewKeys[key])
    }
    window.addEventListener('keydown', onKeyDown)
    return () => window.removeEventListener('keydown', onKeyDown)
  })

  const parts = useMemo(() => new Map(atlas?.parts.map((p) => [p.id, p]) ?? []), [atlas])
  const counts = useMemo(() => {
    const result = new Map<string, number>()
    atlas?.parts.forEach((p) => result.set(p.system, (result.get(p.system) ?? 0) + 1))
    return result
  }, [atlas])
  const active = useMemo(() => activeSystems().filter((s) => counts.size === 0 || (counts.get(s.code) ?? 0) > 0), [counts])
  const selectedParts = store.selected.map((id) => parts.get(id)).filter((p): p is NonNullable<typeof p> => Boolean(p))
  const primaryStructure = selectedParts[0]
  const selectedSystem = primaryStructure ? systemDefinition(primaryStructure.system) : undefined
  const visibleCount = atlas
    ? atlas.parts.filter((p) => (store.isolate ? store.selected.includes(p.id) : store.visible.includes(p.system) || store.selected.includes(p.id))).length
    : 0

  const results = useMemo(() => (query.trim() ? searchConcepts(query, 80) : suggestedConcepts(8)), [query])

  function openPanel(next: 'layers' | 'search') {
    setDetails(false)
    setAbout(false)
    setPanel((p) => (p === next ? null : next))
    if (next === 'search') requestAnimationFrame(() => searchInput.current?.focus())
  }

  function openSearch() {
    setDetails(false)
    setPanel('search')
    requestAnimationFrame(() => searchInput.current?.focus())
  }

  function chooseConcept(concept: ConceptRecordV2) {
    setChosen(concept)
    store.selectStructures(conceptParts(concept))
    setDetails(true)
    setPanel(null)
    setAbout(false)
  }

  function choosePart(id: string) {
    const part = parts.get(id)
    if (!part) return
    setChosen({
      id: part.conceptId,
      namePt: structureNamePt(id),
      normalizedNamePt: structureNamePt(id),
      elements: [id],
      elementCount: 1,
      systems: [part.system],
    })
    store.selectStructures([id])
    setDetails(true)
    setPanel(null)
    setAbout(false)
  }

  function toggleSystem(code: SystemCode) {
    setDetails(false)
    store.toggleSystem(code)
  }

  function preset(codes: SystemCode[]) {
    setDetails(false)
    store.presetSystems(codes)
    store.clearSelection()
  }

  function resetAll() {
    store.resetView()
    setChosen(null)
    setDetails(false)
    setPanel(null)
    setAbout(false)
    setQuery('')
  }

  function changeView(view: View) {
    if (store.explode > 0.8 && view !== 'front') return
    store.setView(view)
    store.setRotate(false)
  }

  function setExplode(value: number) {
    const progressValue = value / 100
    if (progressValue > 0.8 && store.view !== 'front') store.setView('front')
    store.setExplode(progressValue)
    store.setRotate(false)
  }

  const sceneCaption = store.isolate
    ? chosen?.namePt ?? 'ESTRUTURA SELECIONADA'
    : store.explode > 0.95
      ? 'INVENTÁRIO ANATÔMICO'
      : store.explode > 0.05
        ? 'ESTRUTURAS SEPARADAS'
        : 'CORPO HUMANO ADULTO · MASCULINO'

  return (
    <main className="studio">
      {atlas && (
        <AtlasScene
          atlas={atlas}
          state={{
            ...store,
            inspectorOpen: details && selectedParts.length > 0,
          }}
          onSelect={choosePart}
          onProgress={(n) => {
            setProgress(n)
            if (n === 100) setError('')
          }}
          onError={setError}
        />
      )}
      <div className="vignette" />
      <header className="identity">
        <div className="eyebrow">
          <span className="status-dot" /> ANATOMIA INTERATIVA
        </div>
        <h1>
          Anatomia 3D<span className="edition">3D</span>
        </h1>
        <div className="identity-meta">
          {atlas ? atlas.parts.length.toLocaleString('pt-BR') : '2.234'} peças modeladas <span>·</span> BodyParts3D
        </div>
      </header>

      <nav className="top-actions" aria-label="Painéis de exploração">
        <button type="button" className={panel === 'search' ? 'active' : ''} onClick={() => openPanel('search')} aria-label="Buscar estrutura">
          <Search size={18} />
          <span>Encontrar estrutura</span>
          <kbd>/</kbd>
        </button>
        <button
          type="button"
          className="icon-button"
          aria-label="Sobre este atlas"
          title="Sobre este atlas"
          onClick={() => {
            setDetails(false)
            setPanel(null)
            setAbout(true)
          }}
        >
          <Info size={18} />
        </button>
      </nav>

      <section className={`layers-panel glass ${panel === 'layers' ? 'mobile-open' : ''}`} aria-label="Camadas anatômicas">
        <div className="panel-heading">
          <span>Sistemas</span>
          <button type="button" className="mobile-only icon-button" aria-label="Fechar sistemas" onClick={() => setPanel(null)}>
            <X size={18} />
          </button>
          <span className="desktop-only small-number">{active.length}</span>
        </div>
        <div className="layer-presets">
          <button
            type="button"
            aria-pressed={active.length > 0 && active.every((s) => store.visible.includes(s.code))}
            onClick={() => preset(active.map((s) => s.code))}
          >
            Todos
          </button>
          <button
            type="button"
            aria-pressed={store.visible.length === 1 && store.visible[0] === 'SYS-ESQ'}
            onClick={() => preset(['SYS-ESQ'])}
          >
            Esqueleto
          </button>
          <button
            type="button"
            aria-pressed={ORGANS_PRESET.length === store.visible.length && ORGANS_PRESET.every((code) => store.visible.includes(code))}
            onClick={() => preset(ORGANS_PRESET)}
          >
            Órgãos
          </button>
        </div>
        <div className="system-list">
          {active.map((system) => (
            <div className={`system-row ${store.visible.includes(system.code) ? 'enabled' : ''}`} key={system.code}>
              <button
                type="button"
                className="system-name"
                title={`Mostrar apenas ${systemLabel(system.code).toLowerCase()}`}
                onClick={() => {
                  store.presetSystems([system.code])
                  store.clearSelection()
                  setDetails(false)
                }}
              >
                <span className="system-dot" style={{ background: system.color }} />
                <span className="system-label">{systemLabel(system.code)}</span>
                <span className="system-count">{atlas ? (counts.get(system.code) ?? 0).toLocaleString('pt-BR') : systemCountFor(system.code)}</span>
              </button>
              <input
                type="checkbox"
                aria-label={`Mostrar ${systemLabel(system.code).toLowerCase()}`}
                checked={store.visible.includes(system.code)}
                onChange={() => toggleSystem(system.code)}
              />
            </div>
          ))}
        </div>
        <div className="panel-foot">
          <span>{visibleCount.toLocaleString('pt-BR')} peças visíveis</span>
          <button type="button" onClick={() => { store.hideAllSystems(); setDetails(false) }}>Ocultar todas</button>
        </div>
      </section>

      {panel === 'search' && (
        <section className="search-panel glass" aria-label="Encontrar anatomia">
          <div className="panel-heading">
            <span>Encontrar estrutura</span>
            <button type="button" className="icon-button" aria-label="Fechar busca" onClick={() => setPanel(null)}>
              <X size={18} />
            </button>
          </div>
          <label className="search-field">
            <Search size={16} />
            <input
              ref={searchInput}
              value={query}
              onChange={(event) => setQuery(event.target.value)}
              placeholder="Coração, fêmur, nervo craniano…"
              aria-label="Buscar estrutura"
            />
          </label>
          <div className="anatomy-search-results">
            {results.length === 0 ? (
              <p className="search-empty">Nenhuma estrutura corresponde à busca.</p>
            ) : (
              results.map((concept) => (
                <button type="button" className="search-result" key={concept.id} onClick={() => chooseConcept(concept)}>
                  <span className="search-result-name">{concept.namePt}</span>
                  <span className="small-number">
                    {concept.elementCount} {concept.elementCount === 1 ? 'peça' : 'peças'}
                  </span>
                </button>
              ))
            )}
          </div>
          <p className="search-note">
            {query
              ? 'Mostrando até 80 resultados. Refine a busca para encontrar estruturas menores.'
              : 'Comece por um órgão principal ou procure qualquer estrutura nomeada.'}
          </p>
        </section>
      )}

      <nav className="view-controls glass" aria-label="Controles de câmera">
        {(['three-quarter', 'front', 'side', 'back'] as View[]).map((v, i) => (
          <button
            type="button"
            key={v}
            className={store.view === v ? 'active' : ''}
            aria-pressed={store.view === v}
            disabled={store.explode > 0.8 && v !== 'front'}
            onClick={() => changeView(v)}
            title={`Vista ${viewLabel(v)}`}
            aria-label={`Vista ${viewLabel(v)}`}
          >
            <span>{['¾', 'F', 'S', 'B'][i]}</span>
          </button>
        ))}
        <i />
        <button
          type="button"
          disabled={store.explode >= 0.4}
          aria-label={store.rotate ? 'Pausar rotação' : 'Rotacionar o corpo'}
          title="Rotação automática"
          className={store.rotate ? 'active' : ''}
          onClick={() => store.setRotate(!store.rotate)}
        >
          {store.rotate ? <Pause size={17} /> : <RotateCw size={18} />}
        </button>
        <button type="button" aria-label="Restaurar vista e camadas" title="Restaurar" onClick={resetAll}>
          <RotateCcw size={17} />
        </button>
      </nav>

      <div className="scene-caption">
        <span className="caption-line" />
        <span>{sceneCaption}</span>
        <span className="caption-line" />
      </div>

      <div className="bottom-dock glass">
        <button type="button" className="mobile-only dock-layers" onClick={() => openPanel('layers')} aria-label="Abrir camadas de sistemas">
          <Layers3 size={20} />
          <span>Sistemas</span>
        </button>
        <div className="explode-control">
          <div className="explode-label">
            <label id="explode-label" htmlFor="explode-slider">Explodir anatomia</label>
            <output htmlFor="explode-slider">
              {Math.round(store.explode * 100)}<span>%</span>
            </output>
          </div>
          <input
            id="explode-slider"
            type="range"
            aria-labelledby="explode-label"
            min={0}
            max={100}
            step={1}
            value={Math.round(store.explode * 100)}
            onChange={(event) => setExplode(Number(event.target.value))}
          />
          <div className="slider-endpoints">
            <span>Montado</span>
            <span>Toda peça</span>
          </div>
        </div>
        <button type="button" className="dock-reset" onClick={resetAll} aria-label="Montar e restaurar">
          <RotateCcw size={18} />
          <span>Restaurar</span>
        </button>
      </div>

      <footer className="studio-footer">
        <span>
          {store.explode > 0.8 ? 'Arraste para deslocar' : 'Arraste para orbitar'} <b>·</b> Pinça para aproximar <b>·</b> Toque para inspecionar
        </span>
        <button
          type="button"
          onClick={() => {
            setDetails(false)
            setPanel(null)
            setAbout(true)
          }}
        >
          Fonte e créditos <ArrowUpRight size={12} />
        </button>
      </footer>

      {progress < 100 && !error && (
        <div className="loading glass" role="status">
          <Activity size={18} />
          <div>
            <strong>Preparando a anatomia</strong>
            <span>
              {progress}% · Carregando {(atlas?.parts.length ?? 2234).toLocaleString('pt-BR')} peças
            </span>
            <div className="loading-track">
              <i style={{ width: `${progress}%` }} />
            </div>
          </div>
        </div>
      )}
      {error && (
        <div className="loading glass error" role="alert">
          <p>{error}</p>
          <button type="button" onClick={() => location.reload()}>Recarregar visualizador</button>
        </div>
      )}

      {details && selectedParts.length > 0 && chosen && (
        <div className="detail-sheet glass" role="dialog" aria-modal="false" aria-labelledby="detail-title">
          <div className="sheet-heading">
            <span className={`status-dot ${store.isolate ? 'isolated' : ''}`} />
            <button type="button" className="icon-button" aria-label="Fechar detalhes" onClick={() => setDetails(false)}>
              <X size={18} />
            </button>
          </div>
          <div className="detail-header">
            <div className="detail-accent" style={{ background: selectedSystem ? SYSTEM_COLORS[selectedSystem.code] : undefined }} />
            <div className="eyebrow">{selectedSystem?.namePt ?? 'ANATOMIA'}</div>
            <h2 id="detail-title" ref={detailTitle} className="structure-title">{chosen.namePt}</h2>
          </div>
          <div className="detail-scroll" key={`${chosen.id}-${store.isolate}`}>
            <p className="structure-description">{conceptExplanation(chosen.id, primaryStructure?.system ?? 'SYS-ESQ')}</p>
            {!hasCuratedExplanation(chosen.id) && (
              <span className="context-note">Visão geral do sistema · estrutura identificada a partir da anatomia de origem</span>
            )}
            <div className="structure-meta">
              <span>
                Referência do atlas<strong>{chosen.id}</strong>
              </span>
              <span>
                Peças selecionadas<strong>{store.selected.length.toLocaleString('pt-BR')}</strong>
              </span>
            </div>
            {selectedParts.length > 1 && (
              <div className="member-list">
                <h3>Estruturas incluídas</h3>
                {selectedParts.slice(0, 50).map((p) => (
                  <button type="button" key={p.id} onClick={() => choosePart(p.id)}>
                    <span>{structureNamePt(p.id)}</span>
                    <ChevronRight size={14} />
                  </button>
                ))}
                {selectedParts.length > 50 && <p>E mais {selectedParts.length - 50} peças modeladas.</p>}
              </div>
            )}
          </div>
          <div className="detail-actions">
            <button
              type="button"
              className={`primary-action ${store.isolate ? 'active' : ''}`}
              onClick={() => {
                useAtlas.getState().isolateSelection()
                if (useAtlas.getState().isolate) useAtlas.getState().setExplode(0)
              }}
            >
              <Focus size={18} />
              {store.isolate ? 'Mostrar anatomia ao redor' : 'Isolar estrutura'}
              <ChevronRight size={16} />
            </button>
            <button
              type="button"
              className="secondary-action"
              onClick={() => {
                useAtlas.getState().clearSelection()
                setDetails(false)
              }}
            >
              Limpar seleção
            </button>
          </div>
        </div>
      )}

      {about && (
        <div className="about-sheet glass" role="dialog" aria-modal="false" aria-labelledby="about-title">
          <div className="sheet-heading">
            <button type="button" className="icon-button" aria-label="Fechar sobre" onClick={() => setAbout(false)}>
              <X size={18} />
            </button>
          </div>
          <div className="eyebrow">FONTE E ESCOPO</div>
          <h2 id="about-title" className="structure-title">Um corpo, revelado.</h2>
          <p className="about-lead">Explore a anatomia de referência adulta masculina do BodyParts3D.</p>
          <div className="about-copy">
            <p>
              <strong>Masculino · BodyParts3D</strong>
              <br />
              {atlas ? atlas.parts.length.toLocaleString('pt-BR') : '2.234'} malhas individuais e{' '}
              {atlas ? atlas.concepts.length.toLocaleString('pt-BR') : '3.432'} conceitos nomeados de uma anatomia de referência adulta masculina.
            </p>
            <p>
              Esta referência não contém todas as estruturas ou variações humanas. Conceitos nomeados podem conter várias peças; cada malha de
              origem é renderizada uma vez.
            </p>
            <p>
              As cores e os agrupamentos por sistema foram pensados para a exploração. A geometria é simplificada para a web, e as explicações
              curtas oferecem contexto educacional geral. Esta é uma referência anatômica, não uma ferramenta diagnóstica ou cirúrgica.
            </p>
            <h3>Fonte</h3>
            <p>BodyParts3D © The Database Center for Life Science, licenciado sob CC Attribution 4.0 International.</p>
            <a href="https://dbarchive.biosciencedbc.jp/en/bodyparts3d/lic.html" target="_blank" rel="noreferrer">
              Licença do conjunto de dados <ArrowUpRight size={14} />
            </a>
            <a href="https://dbarchive.biosciencedbc.jp/en/bodyparts3d/download.html" target="_blank" rel="noreferrer">
              Geometria e metadados originais <ArrowUpRight size={14} />
            </a>
          </div>
        </div>
      )}
    </main>
  )
}

function systemCountFor(code: string): number {
  return STRUCTURES_V2.filter((entry) => entry.system === code).length
}

function viewLabel(view: View): string {
  return view === 'three-quarter' ? 'semivista ¾' : view === 'front' ? 'anterior' : view === 'back' ? 'posterior' : 'lateral'
}