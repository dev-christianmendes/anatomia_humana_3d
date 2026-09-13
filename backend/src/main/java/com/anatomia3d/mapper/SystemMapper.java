package com.anatomia3d.mapper;

import com.anatomia3d.dto.SystemDto;
import com.anatomia3d.entity.AnatomicalSystem;

public final class SystemMapper {

    private SystemMapper() {
    }

    public static SystemDto toDto(AnatomicalSystem system) {
        if (system == null) {
            return null;
        }
        return new SystemDto(system.getCode(), system.getName(), system.getDescription());
    }
}