package com.anatomia3d.dto;

public record RelationDto(
    String relationType,
    String description,
    StructureSummaryDto target
) {
}