package com.anatomia3d.mapper;

import com.anatomia3d.dto.RegionDto;
import com.anatomia3d.entity.AnatomicalRegion;

public final class RegionMapper {

    private RegionMapper() {
    }

    public static RegionDto toDto(AnatomicalRegion region) {
        if (region == null) {
            return null;
        }
        return new RegionDto(region.getCode(), region.getName());
    }
}