package com.anatomia3d.service;

import com.anatomia3d.dto.AssetDto;
import com.anatomia3d.exception.ResourceNotFoundException;
import com.anatomia3d.mapper.AssetMapper;
import com.anatomia3d.repository.AnatomicalStructureRepository;
import com.anatomia3d.repository.AssetRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AssetService {

    private final AnatomicalStructureRepository structureRepository;
    private final AssetRepository assetRepository;

    public AssetService(AnatomicalStructureRepository structureRepository,
                        AssetRepository assetRepository) {
        this.structureRepository = structureRepository;
        this.assetRepository = assetRepository;
    }

    @Transactional(readOnly = true)
    public List<AssetDto> listByStructure(String structureId) {
        structureRepository.findByExternalCodeAndActiveTrue(structureId)
            .orElseThrow(() -> new ResourceNotFoundException("Estrutura nao encontrada: " + structureId));
        return assetRepository.findByStructure_ExternalCodeAndPublishedTrueOrderByVersionDesc(structureId)
            .stream()
            .map(AssetMapper::toDto)
            .toList();
    }
}