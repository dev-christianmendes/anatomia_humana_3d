package com.anatomia3d.service;

import com.anatomia3d.dto.RegionDto;
import com.anatomia3d.mapper.RegionMapper;
import com.anatomia3d.repository.AnatomicalRegionRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RegionService {

    private final AnatomicalRegionRepository regionRepository;

    public RegionService(AnatomicalRegionRepository regionRepository) {
        this.regionRepository = regionRepository;
    }

    @Transactional(readOnly = true)
    public List<RegionDto> list() {
        return regionRepository.findAllByOrderByNameAsc().stream()
            .map(RegionMapper::toDto)
            .toList();
    }
}