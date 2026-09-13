package com.anatomia3d.controller;

import com.anatomia3d.dto.SystemDto;
import com.anatomia3d.service.SystemService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class SystemController {

    private final SystemService systemService;

    public SystemController(SystemService systemService) {
        this.systemService = systemService;
    }

    @GetMapping("/systems")
    public List<SystemDto> list() {
        return systemService.list();
    }
}