package com.anatomia3d.repository;

import com.anatomia3d.entity.Asset;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AssetRepository extends JpaRepository<Asset, Long> {

    List<Asset> findByStructure_ExternalCodeAndPublishedTrueOrderByVersionDesc(String structureId);
}