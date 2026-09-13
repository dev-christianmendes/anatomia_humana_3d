package com.anatomia3d.service;

import com.anatomia3d.dto.SystemDto;
import com.anatomia3d.mapper.SystemMapper;
import com.anatomia3d.repository.AnatomicalSystemRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class SystemService {

    private final AnatomicalSystemRepository systemRepository;

    public SystemService(AnatomicalSystemRepository systemRepository) {
        this.systemRepository = systemRepository;
    }

    @Transactional(readOnly = true)
    public List<SystemDto> list() {
        return systemRepository.findAllByOrderByNameAsc().stream()
            .map(SystemMapper::toDto)
            .toList();
    }
}