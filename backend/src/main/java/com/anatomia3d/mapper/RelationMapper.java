package com.anatomia3d.mapper;

import com.anatomia3d.dto.RelationDto;
import com.anatomia3d.entity.StructureRelation;

public final class RelationMapper {

    private RelationMapper() {
    }

    public static RelationDto toDto(StructureRelation relation) {
        if (relation == null) {
            return null;
        }
        return new RelationDto(
            relation.getRelationType(),
            relation.getDescription(),
            StructureMapper.toSummary(relation.getTargetStructure())
        );
    }
}