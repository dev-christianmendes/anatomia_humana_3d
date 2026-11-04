package com.anatomia3d.repository;

import com.anatomia3d.entity.AnatomicalStructure;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;
import java.util.List;

public interface AnatomicalStructureRepository extends JpaRepository<AnatomicalStructure, Long> {

    Optional<AnatomicalStructure> findByExternalCode(String externalCode);

    Optional<AnatomicalStructure> findByExternalCodeAndActiveTrue(String externalCode);

    boolean existsByExternalCode(String externalCode);

    @Query("""
        select s from AnatomicalStructure s
        where s.active = true
          and (cast(:search as text) is null
               or s.normalizedName like concat('%', cast(:search as text), '%'))
          and (cast(:systemCode as text) is null or s.system.code = :systemCode)
          and (cast(:regionCode as text) is null or s.region.code = :regionCode)
        """)
    Page<AnatomicalStructure> search(@Param("search") String search,
                                     @Param("systemCode") String systemCode,
                                     @Param("regionCode") String regionCode,
                                     Pageable pageable);

    /**
     * Estruturas do atlas full-body: aquelas vinculadas a pelo menos um conceito
     * (via {@code concept_structure}), com joins de sistema, regiao e nomes
     * alternativos para evitar N+1 no snapshot do catalogo.
     */
    @Query("""
        select distinct s
        from AnatomicalStructure s
        left join fetch s.system
        left join fetch s.region
        left join fetch s.alternateNames
        where s.id in (select cs.structure.id from ConceptStructure cs)
        order by s.externalCode asc
        """)
    List<AnatomicalStructure> findAllLinkedToConcept();
}