package com.anatomia3d.service;

import com.anatomia3d.dto.PageResponse;
import com.anatomia3d.dto.RelationDto;
import com.anatomia3d.dto.StructureDto;
import com.anatomia3d.dto.StructureSummaryDto;
import com.anatomia3d.entity.AnatomicalStructure;
import com.anatomia3d.exception.InvalidParamException;
import com.anatomia3d.exception.ResourceNotFoundException;
import com.anatomia3d.mapper.RelationMapper;
import com.anatomia3d.mapper.StructureMapper;
import com.anatomia3d.repository.AnatomicalStructureRepository;
import com.anatomia3d.repository.StructureRelationRepository;
import com.anatomia3d.util.TextNormalizer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Stream;

@Service
public class StructureService {

    private static final int MAX_PAGE_SIZE = 100;
    private static final int DEFAULT_PAGE_SIZE = 20;
    private static final String ARTICULATION_TYPE = "ARTICULATION";

    private final AnatomicalStructureRepository structureRepository;
    private final StructureRelationRepository relationRepository;

    public StructureService(AnatomicalStructureRepository structureRepository,
                            StructureRelationRepository relationRepository) {
        this.structureRepository = structureRepository;
        this.relationRepository = relationRepository;
    }

    @Transactional(readOnly = true)
    public PageResponse<StructureSummaryDto> search(String search, String system, String region,
                                                    int page, int size) {
        if (page < 0) {
            throw new InvalidParamException("page deve ser maior ou igual a 0.");
        }
        if (size < 1 || size > MAX_PAGE_SIZE) {
            throw new InvalidParamException("size deve estar entre 1 e " + MAX_PAGE_SIZE + ".");
        }
        String normalized = blankToNull(TextNormalizer.normalize(search));
        String systemCode = blankToNull(system);
        String regionCode = blankToNull(region);
        Page<AnatomicalStructure> result = structureRepository.search(
            normalized,
            systemCode,
            regionCode,
            PageRequest.of(page, size)
        );
        return PageResponse.of(result.map(StructureMapper::toSummary));
    }

    @Transactional(readOnly = true)
    public StructureDto get(String id) {
        AnatomicalStructure structure = findStructure(id);
        return StructureMapper.toDto(structure);
    }

    @Transactional(readOnly = true)
    public List<RelationDto> relations(String id) {
        findStructure(id);
        List<RelationDto> forward = relationRepository
            .findBySourceStructure_ExternalCodeOrderByTargetStructure_NameAsc(id)
            .stream()
            .map(RelationMapper::toDto)
            .toList();
        List<RelationDto> reverse = relationRepository
            .findByTargetStructure_ExternalCodeOrderBySourceStructure_NameAsc(id)
            .stream()
            .filter(relation -> ARTICULATION_TYPE.equals(relation.getRelationType()))
            .map(relation -> new RelationDto(
                relation.getRelationType(),
                relation.getDescription(),
                StructureMapper.toSummary(relation.getSourceStructure())))
            .toList();
        return Stream.concat(forward.stream(), reverse.stream())
            .sorted(Comparator.comparing((RelationDto dto) -> dto.target().name()))
            .toList();
    }

    private AnatomicalStructure findStructure(String id) {
        return structureRepository.findByExternalCodeAndActiveTrue(id)
            .orElseThrow(() -> new ResourceNotFoundException("Estrutura nao encontrada: " + id));
    }

    private static String blankToNull(String value) {
        if (value == null) {
            return null;
        }
        String trimmed = value.trim();
        return trimmed.isEmpty() ? null : trimmed;
    }
}