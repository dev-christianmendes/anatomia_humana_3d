package com.anatomia3d.service;

import com.anatomia3d.dto.CatalogSnapshotDto;
import com.anatomia3d.dto.ConceptSnapshotDto;
import com.anatomia3d.dto.StructureSnapshotDto;
import com.anatomia3d.entity.AnatomicalConcept;
import com.anatomia3d.entity.AnatomicalStructure;
import com.anatomia3d.mapper.CatalogMapper;
import com.anatomia3d.repository.AnatomicalConceptRepository;
import com.anatomia3d.repository.AnatomicalStructureRepository;
import com.anatomia3d.repository.ConceptStructureRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Snapshot do catalogo V2 (conceitos FMA e estruturas do atlas full-body)
 * em um unico payload, espelhando {@code catalog/v2/*.json} para consumo do
 * frontend em tempo de execucao. O catalogo relacional e a fonte primaria;
 * a copia estatica do frontend e apenas fallback.
 */
@Service
public class CatalogService {

    private final AnatomicalConceptRepository conceptRepository;
    private final ConceptStructureRepository conceptStructureRepository;
    private final AnatomicalStructureRepository structureRepository;

    public CatalogService(AnatomicalConceptRepository conceptRepository,
                          ConceptStructureRepository conceptStructureRepository,
                          AnatomicalStructureRepository structureRepository) {
        this.conceptRepository = conceptRepository;
        this.conceptStructureRepository = conceptStructureRepository;
        this.structureRepository = structureRepository;
    }

    @Transactional(readOnly = true)
    public CatalogSnapshotDto snapshot() {
        List<AnatomicalConcept> concepts = conceptRepository.findAll(Sort.by("namePt"));
        Map<Long, List<String>> elementsByConcept = elementsByConceptIds(
            concepts.stream().map(AnatomicalConcept::getId).toList());

        List<ConceptSnapshotDto> conceptDtos = concepts.stream()
            .map(concept -> CatalogMapper.toConcept(
                concept,
                elementsByConcept.getOrDefault(concept.getId(), List.of())))
            .toList();

        List<StructureSnapshotDto> structureDtos = structureRepository
            .findAllLinkedToConcept()
            .stream()
            .map(CatalogMapper::toStructure)
            .toList();

        return new CatalogSnapshotDto(conceptDtos, structureDtos);
    }

    private Map<Long, List<String>> elementsByConceptIds(List<Long> conceptIds) {
        Map<Long, List<String>> result = new HashMap<>();
        if (conceptIds.isEmpty()) {
            return result;
        }
        for (Object[] row : conceptStructureRepository.sourceIdsByConceptIds(conceptIds)) {
            result
                .computeIfAbsent((Long) row[0], ignored -> new java.util.ArrayList<>())
                .add((String) row[1]);
        }
        return result;
    }
}