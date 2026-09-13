package com.anatomia3d.dto;

import java.util.List;

public record StructureSummaryDto(
    String id,
    String name,
    List<String> alternateNames,
    SystemDto system,
    RegionDto region
) {
}