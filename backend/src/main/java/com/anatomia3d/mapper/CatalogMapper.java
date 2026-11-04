package com.anatomia3d.mapper;

import com.anatomia3d.dto.ConceptSnapshotDto;
import com.anatomia3d.dto.StructureSnapshotDto;
import com.anatomia3d.entity.AlternateName;
import com.anatomia3d.entity.AnatomicalConcept;
import com.anatomia3d.entity.AnatomicalStructure;

import java.util.Arrays;
import java.util.List;

public final class CatalogMapper {

    private CatalogMapper() {
    }

    public static ConceptSnapshotDto toConcept(AnatomicalConcept concept, List<String> elements) {
        if (concept == null) {
            return null;
        }
        return new ConceptSnapshotDto(
            concept.getExternalCode(),
            concept.getNamePt(),
            concept.getName(),
            concept.getNormalizedNamePt(),
            concept.isNameDerived(),
            concept.isReviewed(),
            concept.getElementCount(),
            systems(concept),
            elements
        );
    }

    public static StructureSnapshotDto toStructure(AnatomicalStructure structure) {
        if (structure == null) {
            return null;
        }
        return new StructureSnapshotDto(
            structure.getExternalCode(),
            structure.getSourceId(),
            structure.getName(),
            structure.getNormalizedName(),
            structure.isNameDerived(),
            structure.isReviewed(),
            structure.getSystem() == null ? null : structure.getSystem().getCode(),
            structure.getRegion() == null ? null : structure.getRegion().getCode(),
            alternateNames(structure)
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

    private static List<String> alternateNames(AnatomicalStructure structure) {
        return structure.getAlternateNames().stream()
            .map(AlternateName::getName)
            .sorted()
            .toList();
    }
}