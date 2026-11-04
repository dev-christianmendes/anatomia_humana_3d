package com.anatomia3d.dto;

import java.util.List;

public record CatalogSnapshotDto(
    List<ConceptSnapshotDto> concepts,
    List<StructureSnapshotDto> structures
) {
}