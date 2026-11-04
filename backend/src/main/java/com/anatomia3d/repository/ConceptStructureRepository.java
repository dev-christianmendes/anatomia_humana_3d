package com.anatomia3d.repository;

import com.anatomia3d.entity.ConceptStructure;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ConceptStructureRepository extends JpaRepository<ConceptStructure, ConceptStructure.Key> {

    List<ConceptStructure> findByConcept_ExternalCodeOrderByStructure_NameAsc(String externalCode);

    List<ConceptStructure> findByStructure_ExternalCodeAndStructure_ActiveTrueOrderByConcept_NamePtAsc(
        String externalCode);

    @Query("""
        select cs.concept.id, count(cs)
        from ConceptStructure cs
        where cs.concept.id in :ids
        group by cs.concept.id
        """)
    List<Object[]> countByConceptIds(@Param("ids") List<Long> ids);

    @Query("""
        select cs.concept.id, s.sourceId
        from ConceptStructure cs
        join cs.structure s
        where cs.concept.id in :ids
          and s.sourceId is not null
        order by cs.concept.id asc, s.sourceId asc
        """)
    List<Object[]> sourceIdsByConceptIds(@Param("ids") List<Long> ids);
}