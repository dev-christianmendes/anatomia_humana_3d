package com.anatomia3d.dto;

import java.util.List;

public record AssetDto(
    String fileUrl,
    String fileFormat,
    String checksum,
    String version,
    String attribution,
    List<String> modifications
) {
}