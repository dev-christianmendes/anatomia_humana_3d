package com.anatomia3d.controller;

import com.anatomia3d.dto.AssetDto;
import com.anatomia3d.service.AssetService;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class AssetController {

    private final AssetService assetService;

    public AssetController(AssetService assetService) {
        this.assetService = assetService;
    }

    @Operation(summary = "Assets publicados associados a uma estrutura")
    @GetMapping("/assets/{structureId}")
    public List<AssetDto> listByStructure(@PathVariable String structureId) {
        return assetService.listByStructure(structureId);
    }
}