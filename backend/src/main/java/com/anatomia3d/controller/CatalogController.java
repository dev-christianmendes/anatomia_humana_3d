package com.anatomia3d.controller;

import com.anatomia3d.dto.CatalogSnapshotDto;
import com.anatomia3d.service.CatalogService;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
public class CatalogController {

    private final CatalogService catalogService;

    public CatalogController(CatalogService catalogService) {
        this.catalogService = catalogService;
    }

    @Operation(summary = "Snapshot do catalogo V2 (conceitos e estruturas do atlas full-body)")
    @GetMapping("/catalog/v2/snapshot")
    public CatalogSnapshotDto snapshot() {
        return catalogService.snapshot();
    }
}