package com.anatomia3d.repository;

import com.anatomia3d.entity.SourceLicense;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface SourceLicenseRepository extends JpaRepository<SourceLicense, Long> {

    Optional<SourceLicense> findBySourceName(String sourceName);
}