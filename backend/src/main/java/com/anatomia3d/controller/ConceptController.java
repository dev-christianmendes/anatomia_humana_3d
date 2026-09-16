package com.anatomia3d.controller;

import com.anatomia3d.dto.ConceptDto;
import com.anatomia3d.dto.ConceptSummaryDto;
import com.anatomia3d.dto.PageResponse;
import com.anatomia3d.service.ConceptService;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class ConceptController {

    private final ConceptService conceptService;

    public ConceptController(ConceptService conceptService) {
        this.conceptService = conceptService;
    }

    @Operation(summary = "Lista e pesquisa conceitos anatomicos (FMA)")
    @GetMapping("/concepts")
    public PageResponse<ConceptSummaryDto> list(
        @RequestParam(required = false) String search,
        @RequestParam(required = false) String system,
        @RequestParam(defaultValue = "0") int page,
        @RequestParam(defaultValue = "20") int size) {
        return conceptService.search(search, system, page, size);
    }

    @Operation(summary = "Dados de um conceito e suas estruturas")
    @GetMapping("/concepts/{id}")
    public ConceptDto get(@PathVariable String id) {
        return conceptService.get(id);
    }

    @Operation(summary = "Conceitos que agrupam uma estrutura")
    @GetMapping("/structures/{id}/concepts")
    public List<ConceptSummaryDto> structures(@PathVariable String id) {
        return conceptService.conceptByStructure(id);
    }
}