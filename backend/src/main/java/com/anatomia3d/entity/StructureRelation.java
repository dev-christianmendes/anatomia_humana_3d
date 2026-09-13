package com.anatomia3d.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

@Entity
@Table(
    name = "structure_relation",
    uniqueConstraints = @UniqueConstraint(
        name = "uq_relation_unique",
        columnNames = {"source_structure_id", "target_structure_id", "relation_type"}
    )
)
public class StructureRelation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "source_structure_id", nullable = false)
    private AnatomicalStructure sourceStructure;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "target_structure_id", nullable = false)
    private AnatomicalStructure targetStructure;

    @Column(name = "relation_type", nullable = false, length = 64)
    private String relationType;

    @Column(columnDefinition = "text")
    private String description;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public AnatomicalStructure getSourceStructure() {
        return sourceStructure;
    }

    public void setSourceStructure(AnatomicalStructure sourceStructure) {
        this.sourceStructure = sourceStructure;
    }

    public AnatomicalStructure getTargetStructure() {
        return targetStructure;
    }

    public void setTargetStructure(AnatomicalStructure targetStructure) {
        this.targetStructure = targetStructure;
    }

    public String getRelationType() {
        return relationType;
    }

    public void setRelationType(String relationType) {
        this.relationType = relationType;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}