package com.anatomia3d.dto;

import java.util.List;

public record ConceptSnapshotDto(
    String id,
    String namePt,
    String name,
    String normalizedNamePt,
    boolean nameDerived,
    boolean reviewed,
    int elementCount,
    List<String> systems,
    List<String> elements
) {
}