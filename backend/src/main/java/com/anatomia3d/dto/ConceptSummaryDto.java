package com.anatomia3d.dto;

import java.util.List;

public record ConceptSummaryDto(
    String id,
    String namePt,
    String name,
    List<String> systems,
    int structureCount,
    boolean nameDerived,
    boolean reviewed
) {
}