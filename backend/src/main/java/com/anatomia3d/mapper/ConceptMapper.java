package com.anatomia3d.mapper;

import com.anatomia3d.dto.ConceptDto;
import com.anatomia3d.dto.ConceptSummaryDto;
import com.anatomia3d.dto.StructureSummaryDto;
import com.anatomia3d.entity.AnatomicalConcept;
import com.anatomia3d.entity.ConceptStructure;

import java.util.Arrays;
import java.util.List;

public final class ConceptMapper {

    private ConceptMapper() {
    }

    public static ConceptSummaryDto toSummary(AnatomicalConcept concept, int structureCount) {
        if (concept == null) {
            return null;
        }
        return new ConceptSummaryDto(
            concept.getExternalCode(),
            concept.getNamePt(),
            concept.getName(),
            systems(concept),
            structureCount
        );
    }

    public static ConceptDto toDto(AnatomicalConcept concept,
                                   List<ConceptStructure> conceptStructures) {
        if (concept == null) {
            return null;
        }
        List<StructureSummaryDto> structures = conceptStructures.stream()
            .map(ConceptStructure::getStructure)
            .map(StructureMapper::toSummary)
            .toList();
        return new ConceptDto(
            concept.getExternalCode(),
            concept.getNamePt(),
            concept.getName(),
            systems(concept),
            concept.getElementCount(),
            concept.isNameDerived(),
            structures
        );
    }

    private static List<String> systems(AnatomicalConcept concept) {
        String value = concept.getSystems();
        if (value == null || value.isBlank()) {
            return List.of();
        }
        return Arrays.stream(value.split(","))
            .map(String::trim)
            .filter(s -> !s.isEmpty())
            .toList();
    }
}