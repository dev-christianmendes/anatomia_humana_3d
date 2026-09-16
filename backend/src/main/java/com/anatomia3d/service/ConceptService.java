package com.anatomia3d.service;

import com.anatomia3d.dto.ConceptDto;
import com.anatomia3d.dto.ConceptSummaryDto;
import com.anatomia3d.dto.PageResponse;
import com.anatomia3d.entity.AnatomicalConcept;
import com.anatomia3d.entity.AnatomicalStructure;
import com.anatomia3d.entity.ConceptStructure;
import com.anatomia3d.exception.InvalidParamException;
import com.anatomia3d.exception.ResourceNotFoundException;
import com.anatomia3d.mapper.ConceptMapper;
import com.anatomia3d.repository.AnatomicalConceptRepository;
import com.anatomia3d.repository.AnatomicalStructureRepository;
import com.anatomia3d.repository.ConceptStructureRepository;
import com.anatomia3d.util.TextNormalizer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ConceptService {

    private static final int MAX_PAGE_SIZE = 100;
    private static final int DEFAULT_PAGE_SIZE = 20;

    private final AnatomicalConceptRepository conceptRepository;
    private final ConceptStructureRepository conceptStructureRepository;
    private final AnatomicalStructureRepository structureRepository;

    public ConceptService(AnatomicalConceptRepository conceptRepository,
                          ConceptStructureRepository conceptStructureRepository,
                          AnatomicalStructureRepository structureRepository) {
        this.conceptRepository = conceptRepository;
        this.conceptStructureRepository = conceptStructureRepository;
        this.structureRepository = structureRepository;
    }

    @Transactional(readOnly = true)
    public PageResponse<ConceptSummaryDto> search(String search, String system, int page, int size) {
        validatePaging(page, size);
        String normalized = blankToNull(TextNormalizer.normalize(search));
        String systemCode = blankToNull(system);
        Page<AnatomicalConcept> result = conceptRepository.search(
            normalized,
            systemCode,
            PageRequest.of(page, size)
        );
        Map<Long, Integer> counts = structureCounts(result.getContent());
        return PageResponse.of(result.map(concept ->
            ConceptMapper.toSummary(concept, counts.getOrDefault(concept.getId(), 0))));
    }

    @Transactional(readOnly = true)
    public ConceptDto get(String id) {
        AnatomicalConcept concept = findConcept(id);
        List<ConceptStructure> links = conceptStructureRepository
            .findByConcept_ExternalCodeOrderByStructure_NameAsc(id);
        return ConceptMapper.toDto(concept, links);
    }

    @Transactional(readOnly = true)
    public List<ConceptSummaryDto> conceptByStructure(String id) {
        findStructure(id);
        List<ConceptStructure> links = conceptStructureRepository
            .findByStructure_ExternalCodeAndStructure_ActiveTrueOrderByConcept_NamePtAsc(id);
        Map<Long, Integer> counts = new HashMap<>();
        for (ConceptStructure link : links) {
            counts.merge(link.getConcept().getId(), 1, Integer::sum);
        }
        return links.stream()
            .map(ConceptStructure::getConcept)
            .distinct()
            .map(concept -> ConceptMapper.toSummary(concept, counts.getOrDefault(concept.getId(), 0)))
            .toList();
    }

    private Map<Long, Integer> structureCounts(List<AnatomicalConcept> concepts) {
        Map<Long, Integer> counts = new HashMap<>();
        if (concepts.isEmpty()) {
            return counts;
        }
        List<Long> ids = concepts.stream().map(AnatomicalConcept::getId).toList();
        for (Object[] row : conceptStructureRepository.countByConceptIds(ids)) {
            counts.put((Long) row[0], ((Number) row[1]).intValue());
        }
        return counts;
    }

    private AnatomicalConcept findConcept(String id) {
        return conceptRepository.findByExternalCode(id)
            .orElseThrow(() -> new ResourceNotFoundException("Conceito nao encontrado: " + id));
    }

    private AnatomicalStructure findStructure(String id) {
        return structureRepository.findByExternalCodeAndActiveTrue(id)
            .orElseThrow(() -> new ResourceNotFoundException("Estrutura nao encontrada: " + id));
    }

    private void validatePaging(int page, int size) {
        if (page < 0) {
            throw new InvalidParamException("page deve ser maior ou igual a 0.");
        }
        if (size < 1 || size > MAX_PAGE_SIZE) {
            throw new InvalidParamException("size deve estar entre 1 e " + MAX_PAGE_SIZE + ".");
        }
    }

    private static String blankToNull(String value) {
        if (value == null) {
            return null;
        }
        String trimmed = value.trim();
        return trimmed.isEmpty() ? null : trimmed;
    }
}