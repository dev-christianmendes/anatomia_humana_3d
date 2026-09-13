package com.anatomia3d.repository;

import com.anatomia3d.entity.StructureRelation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface StructureRelationRepository extends JpaRepository<StructureRelation, Long> {

    List<StructureRelation> findBySourceStructure_ExternalCodeOrderByTargetStructure_NameAsc(String externalCode);

    List<StructureRelation> findByTargetStructure_ExternalCodeOrderBySourceStructure_NameAsc(String externalCode);
}