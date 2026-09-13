package com.anatomia3d.controller;

import com.anatomia3d.dto.PageResponse;
import com.anatomia3d.dto.RelationDto;
import com.anatomia3d.dto.StructureDto;
import com.anatomia3d.dto.StructureSummaryDto;
import com.anatomia3d.service.StructureService;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class StructureController {

    private final StructureService structureService;

    public StructureController(StructureService structureService) {
        this.structureService = structureService;
    }

    @Operation(summary = "Lista e pesquisa estruturas anatomicas ativas")
    @GetMapping("/structures")
    public PageResponse<StructureSummaryDto> list(
        @RequestParam(required = false) String search,
        @RequestParam(required = false) String system,
        @RequestParam(required = false) String region,
        @RequestParam(defaultValue = "0") int page,
        @RequestParam(defaultValue = "20") int size) {
        return structureService.search(search, system, region, page, size);
    }

    @Operation(summary = "Dados educacionais de uma estrutura")
    @GetMapping("/structures/{id}")
    public StructureDto get(@PathVariable String id) {
        return structureService.get(id);
    }

    @Operation(summary = "Relacoes anatomicas de uma estrutura")
    @GetMapping("/structures/{id}/relations")
    public List<RelationDto> relations(@PathVariable String id) {
        return structureService.relations(id);
    }
}