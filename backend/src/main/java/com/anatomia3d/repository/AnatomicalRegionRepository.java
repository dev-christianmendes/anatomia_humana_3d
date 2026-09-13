package com.anatomia3d.repository;

import com.anatomia3d.entity.AnatomicalRegion;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface AnatomicalRegionRepository extends JpaRepository<AnatomicalRegion, Long> {

    Optional<AnatomicalRegion> findByCode(String code);

    List<AnatomicalRegion> findAllByOrderByNameAsc();
}