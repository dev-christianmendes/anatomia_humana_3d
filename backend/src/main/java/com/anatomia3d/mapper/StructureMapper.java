package com.anatomia3d.mapper;

import com.anatomia3d.dto.SourceDto;
import com.anatomia3d.dto.StructureDto;
import com.anatomia3d.dto.StructureSummaryDto;
import com.anatomia3d.entity.AlternateName;
import com.anatomia3d.entity.AnatomicalStructure;

import java.util.List;

public final class StructureMapper {

    private StructureMapper() {
    }

    public static StructureSummaryDto toSummary(AnatomicalStructure structure) {
        if (structure == null) {
            return null;
        }
        return new StructureSummaryDto(
            structure.getExternalCode(),
            structure.getName(),
            alternateNames(structure),
            SystemMapper.toDto(structure.getSystem()),
            RegionMapper.toDto(structure.getRegion())
        );
    }

    public static StructureDto toDto(AnatomicalStructure structure) {
        if (structure == null) {
            return null;
        }
        SourceDto source = null;
        if (structure.getEducationalSourceName() != null) {
            source = new SourceDto(
                structure.getEducationalSourceName(),
                structure.getEducationalSourceUrl()
            );
        }
        return new StructureDto(
            structure.getExternalCode(),
            structure.getName(),
            alternateNames(structure),
            SystemMapper.toDto(structure.getSystem()),
            RegionMapper.toDto(structure.getRegion()),
            structure.getDescription(),
            structure.getFunctionDescription(),
            structure.getExternalCode(),
            source
        );
    }

    private static List<String> alternateNames(AnatomicalStructure structure) {
        return structure.getAlternateNames().stream()
            .map(AlternateName::getName)
            .sorted()
            .toList();
    }
}