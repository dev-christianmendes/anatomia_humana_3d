// Valida o catalogo derivado em pt-BR (catalog/v2/).
// Uso: node scripts/validate-catalog-v2.mjs
// Nao exige revisao humana (reviewed pode ser false); cobre estruturas + conceitos.

import { readFileSync, existsSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const structuresPath = resolve(root, 'catalog/v2/structures.json');
const conceptsPath = resolve(root, 'catalog/v2/concepts.json');
const curatedPath = resolve(root, 'catalog/v2/curated.json');
const structureMapPath = resolve(root, 'assets/structure-map.json');

const errors = [];
const warnings = [];

if (!existsSync(structuresPath) || !existsSync(conceptsPath)) {
  console.error(`Catalogos v2 ausentes: ${structuresPath} / ${conceptsPath}`);
  console.error('Rode antes: node scripts/derive-catalog-v2.mjs');
  process.exit(1);
}

const structures = JSON.parse(readFileSync(structuresPath, 'utf8'));
const concepts = JSON.parse(readFileSync(conceptsPath, 'utf8'));

function normalizePt(value) {
  if (!value) return null;
  return value.normalize('NFD').replace(/\p{M}+/gu, '').toLowerCase().trim();
}

// ---- Estruturas ----

const VALID_SYSTEMS = new Set(['SYS-ESQ', 'SYS-MUS', 'SYS-CAR', 'SYS-SEN', 'SYS-ART', 'SYS-VEN', 'SYS-NER', 'SYS-RES', 'SYS-DIG', 'SYS-URI', 'SYS-LIN', 'SYS-END', 'SYS-REP', 'SYS-INT', 'SYS-CON']);

if (!Array.isArray(structures)) {
  errors.push('structures.json: esperado array.');
} else {
  const ids = new Set();
  for (const s of structures) {
    if (!s.structureId || typeof s.structureId !== 'string') {
      errors.push('Estrutura sem structureId.');
      continue;
    }
    if (ids.has(s.structureId)) {
      errors.push(`StructureId duplicado: ${s.structureId}`);
    }
    ids.add(s.structureId);

    if (!/^(SYS|STR)-(ESQ|MUS|CAR|SEN|ART|VEN|NER|RES|DIG|URI|LIN|END|REP|INT|CON)-[0-9]{4}$/.test(s.structureId)) {
      warnings.push(`StructureId fora do padrao (SYS|STR)-<SISTEMA>-####: ${s.structureId}`);
    }
    if (!VALID_SYSTEMS.has(s.system)) {
      errors.push(`${s.structureId}: sistema invalido ${s.system}`);
    }
    if (!s.region || !/^REG-/.test(s.region)) {
      errors.push(`${s.structureId}: regiao invalida ${s.region}`);
    }
    if (!s.name || !s.name.trim()) {
      errors.push(`${s.structureId}: nome pt-BR ausente.`);
    } else if (s.name.includes('[object Object]') || s.name.includes('undefined')) {
      errors.push(`${s.structureId}: nome com marca de objeto nao resolvido: ${s.name}`);
    }
    if (!s.sourceId || !/^FJ[0-9]+M?$/.test(s.sourceId)) {
      errors.push(`${s.structureId}: sourceId invalido ${s.sourceId}`);
    }
    if (!Array.isArray(s.sourceConcepts) || s.sourceConcepts.length === 0) {
      errors.push(`${s.structureId}: sourceConcepts ausentes.`);
    }
    if (s.name) {
      const expected = normalizePt(s.name);
      if (s.normalizedName !== expected) {
        warnings.push(`${s.structureId}: normalizedName nao confere com name (${s.normalizedName} vs ${expected}).`);
      }
    }
  }
  if (ids.size !== 2234) {
    warnings.push(`Total de estruturas: ${ids.size} (esperado 2234).`);
  }
  const derived = structures.filter((s) => s.nameDerived).length;
  const enFallback = structures.filter((s) => !s.nameDerived && s.name === s.sourceName).length;
  if (enFallback > 0) {
    errors.push(`${enFallback} estrutura(s) sem traducao para pt-BR (name == nome EN de origem).`);
  }
}

// ---- Conceitos ----

if (!Array.isArray(concepts)) {
  errors.push('concepts.json: esperado array.');
} else {
  const fmaIds = new Set();
  for (const c of concepts) {
    if (!c.id || !/^FMA[0-9]+$/.test(c.id)) {
      errors.push(`Conceito sem id FMA valido: ${c.id}`);
      continue;
    }
    if (fmaIds.has(c.id)) {
      errors.push(`Id FMA duplicado: ${c.id}`);
    }
    fmaIds.add(c.id);
    if (!c.name || !c.name.trim()) {
      errors.push(`${c.id}: nome EN ausente.`);
    }
    if (!c.namePt || !c.namePt.trim()) {
      errors.push(`${c.id}: nome pt-BR ausente.`);
    } else if (c.namePt.includes('[object Object]') || c.namePt.includes('undefined')) {
      errors.push(`${c.id}: nome pt-BR com marca de objeto: ${c.namePt}`);
    }
    if (!Array.isArray(c.elements)) {
      errors.push(`${c.id}: elements ausente.`);
    } else {
      for (const el of c.elements) {
        if (!/^FJ[0-9]+M?$/.test(el)) {
          errors.push(`${c.id}: elemento invalido ${el}`);
        }
      }
      if (c.elementCount !== c.elements.length) {
        warnings.push(`${c.id}: elementCount (${c.elementCount}) != elements.length (${c.elements.length}).`);
      }
    }
    if (c.namePt && c.normalizedNamePt !== normalizePt(c.namePt)) {
      warnings.push(`${c.id}: normalizedNamePt nao confere com namePt.`);
    }
  }
  if (fmaIds.size !== 3432) {
    warnings.push(`Total de conceitos: ${fmaIds.size} (esperado 3432).`);
  }
  const derived = concepts.filter((c) => c.nameDerived).length;
  if (derived < concepts.length) {
    warnings.push(`Conceitos sem derivacao pt-BR: ${concepts.length - derived} (namePt mantido como EN).`);
  }
}

// ---- Curadoria incremental ----

// Formato consumido por derive-catalog-v2.mjs (applyCurated): objeto indexado por
// structureId, cada valor com campos opcionais { name, nameDerived, reviewed,
// alternateNames, description, function, educationalSources: [{ name, url }] }.

if (existsSync(curatedPath)) {
  const curated = JSON.parse(readFileSync(curatedPath, 'utf8'));
  if (!curated || typeof curated !== 'object' || Array.isArray(curated)) {
    errors.push('curated.json: esperado objeto indexado por structureId.');
  } else {
    const structureIds = new Set(structures.map((s) => s.structureId));
    const entries = Object.entries(curated);
    for (const [structureId, c] of entries) {
      if (!structureIds.has(structureId)) {
        warnings.push(`Curadoria referencia estrutura inexistente: ${structureId}`);
        continue;
      }
      if (!c || typeof c !== 'object' || Array.isArray(c)) {
        errors.push(`Curadoria de ${structureId}: valor deve ser objeto.`);
        continue;
      }
      if (c.name !== undefined && (typeof c.name !== 'string' || !c.name.trim())) {
        errors.push(`Curadoria de ${structureId}: name deve ser texto nao vazio.`);
      }
      if (c.nameDerived !== undefined && typeof c.nameDerived !== 'boolean') {
        errors.push(`Curadoria de ${structureId}: nameDerived deve ser boolean.`);
      }
      if (c.reviewed !== undefined && typeof c.reviewed !== 'boolean') {
        errors.push(`Curadoria de ${structureId}: reviewed deve ser boolean.`);
      }
      if (
        c.alternateNames !== undefined &&
        (!Array.isArray(c.alternateNames) || c.alternateNames.some((alt) => typeof alt !== 'string'))
      ) {
        errors.push(`Curadoria de ${structureId}: alternateNames deve ser array de textos.`);
      }
      if (c.description !== undefined && typeof c.description !== 'string') {
        errors.push(`Curadoria de ${structureId}: description deve ser texto.`);
      }
      if (c.function !== undefined && typeof c.function !== 'string') {
        errors.push(`Curadoria de ${structureId}: function deve ser texto.`);
      }
      if (
        c.educationalSources !== undefined &&
        (!Array.isArray(c.educationalSources) ||
          c.educationalSources.some((src) => !src || typeof src.name !== 'string'))
      ) {
        errors.push(`Curadoria de ${structureId}: educationalSources deve ser array de { name, url }.`);
      }
    }
    if (entries.length === 0) {
      warnings.push('catalog/v2/curated.json vazio (curadoria incremental iniciada, nenhuma entrada ainda).');
    }
  }
} else {
  warnings.push('catalog/v2/curated.json ausente (curadoria incremental ainda nao iniciada).');
}

// ---- Relatorio ----

const structureDerived = structures.filter((s) => s.nameDerived).length;
const conceptDerived = concepts.filter((c) => c.nameDerived).length;
console.log(`Estruturas: ${structures.length} | derivadas pt: ${structureDerived} (${(100 * structureDerived / structures.length).toFixed(1)}%)`);
console.log(`Conceitos:  ${concepts.length} | derivados pt: ${conceptDerived} (${(100 * conceptDerived / concepts.length).toFixed(1)}%)`);
console.log(`Erros: ${errors.length} | Avisos: ${warnings.length}`);

for (const w of warnings) console.warn(`  [aviso] ${w}`);
for (const e of errors) console.error(`  [erro] ${e}`);

if (errors.length > 0) process.exit(1);