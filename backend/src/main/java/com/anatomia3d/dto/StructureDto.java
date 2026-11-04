package com.anatomia3d.dto;

import java.util.List;

public record StructureDto(
    String id,
    String sourceId,
    String name,
    List<String> alternateNames,
    SystemDto system,
    RegionDto region,
    String description,
    String function,
    String modelNode,
    SourceDto source,
    boolean nameDerived,
    boolean reviewed
) {
}