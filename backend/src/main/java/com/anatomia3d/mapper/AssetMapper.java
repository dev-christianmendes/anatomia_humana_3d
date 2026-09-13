package com.anatomia3d.mapper;

import com.anatomia3d.dto.AssetDto;
import com.anatomia3d.entity.Asset;

import java.util.Arrays;
import java.util.List;

public final class AssetMapper {

    private AssetMapper() {
    }

    public static AssetDto toDto(Asset asset) {
        if (asset == null) {
            return null;
        }
        List<String> modifications = asset.getModifications() == null
            ? List.of()
            : Arrays.stream(asset.getModifications().split("\\n"))
                .map(String::trim)
                .filter(line -> !line.isEmpty())
                .toList();
        return new AssetDto(
            asset.getFileUrl(),
            asset.getFileFormat(),
            asset.getChecksum(),
            asset.getVersion(),
            asset.getSourceLicense() == null ? null : asset.getSourceLicense().getAttributionText(),
            modifications
        );
    }
}