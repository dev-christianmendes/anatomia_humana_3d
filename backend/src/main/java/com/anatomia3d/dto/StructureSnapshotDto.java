package com.anatomia3d.dto;

import java.util.List;

public record StructureSnapshotDto(
    String structureId,
    String sourceId,
    String name,
    String normalizedName,
    boolean nameDerived,
    boolean reviewed,
    String system,
    String region,
    List<String> alternateNames
) {
}