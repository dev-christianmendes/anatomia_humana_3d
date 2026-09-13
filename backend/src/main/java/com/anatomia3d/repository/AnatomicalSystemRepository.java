package com.anatomia3d.repository;

import com.anatomia3d.entity.AnatomicalSystem;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface AnatomicalSystemRepository extends JpaRepository<AnatomicalSystem, Long> {

    Optional<AnatomicalSystem> findByCode(String code);

    List<AnatomicalSystem> findAllByOrderByNameAsc();
}