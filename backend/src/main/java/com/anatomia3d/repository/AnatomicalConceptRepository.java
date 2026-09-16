package com.anatomia3d.repository;

import com.anatomia3d.entity.AnatomicalConcept;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface AnatomicalConceptRepository extends JpaRepository<AnatomicalConcept, Long> {

    Optional<AnatomicalConcept> findByExternalCode(String externalCode);

    boolean existsByExternalCode(String externalCode);

    @Query("""
        select c from AnatomicalConcept c
        where (cast(:search as text) is null
               or c.normalizedNamePt like concat('%', cast(:search as text), '%')
               or lower(c.name) like concat('%', cast(:search as text), '%'))
          and (cast(:systemCode as text) is null
               or c.systems like concat('%', cast(:systemCode as text), '%'))
        order by c.namePt asc
        """)
    Page<AnatomicalConcept> search(@Param("search") String search,
                                   @Param("systemCode") String systemCode,
                                   Pageable pageable);
}