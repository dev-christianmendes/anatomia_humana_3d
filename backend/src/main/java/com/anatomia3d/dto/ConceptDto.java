package com.anatomia3d.dto;

import java.util.List;

public record ConceptDto(
    String id,
    String namePt,
    String name,
    List<String> systems,
    int elementCount,
    boolean nameDerived,
    List<StructureSummaryDto> structures
) {
}