package com.anatomia3d.dto;

import java.util.List;

public record StructureSummaryDto(
    String id,
    String sourceId,
    String name,
    List<String> alternateNames,
    SystemDto system,
    RegionDto region,
    boolean nameDerived,
    boolean reviewed
) {
}