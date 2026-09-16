package com.anatomia3d.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Index;
import jakarta.persistence.Table;

import java.time.Instant;

@Entity
@Table(
    name = "anatomical_concept",
    indexes = {
        @Index(name = "idx_concept_normalized_name_pt", columnList = "normalized_name_pt"),
        @Index(name = "idx_concept_name", columnList = "name")
    }
)
public class AnatomicalConcept {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "external_code", nullable = false, unique = true, length = 32)
    private String externalCode;

    @Column(nullable = false, length = 200)
    private String name;

    @Column(name = "name_pt", nullable = false, length = 200)
    private String namePt;

    @Column(name = "normalized_name_pt", nullable = false, length = 200)
    private String normalizedNamePt;

    @Column(nullable = false, length = 255)
    private String systems;

    @Column(name = "element_count", nullable = false)
    private int elementCount;

    @Column(name = "name_derived", nullable = false)
    private boolean nameDerived;

    @Column(name = "created_at", nullable = false, updatable = false)
    private Instant createdAt = Instant.now();

    @Column(name = "updated_at", nullable = false)
    private Instant updatedAt = Instant.now();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getExternalCode() {
        return externalCode;
    }

    public void setExternalCode(String externalCode) {
        this.externalCode = externalCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNamePt() {
        return namePt;
    }

    public void setNamePt(String namePt) {
        this.namePt = namePt;
    }

    public String getNormalizedNamePt() {
        return normalizedNamePt;
    }

    public void setNormalizedNamePt(String normalizedNamePt) {
        this.normalizedNamePt = normalizedNamePt;
    }

    public String getSystems() {
        return systems;
    }

    public void setSystems(String systems) {
        this.systems = systems;
    }

    public int getElementCount() {
        return elementCount;
    }

    public void setElementCount(int elementCount) {
        this.elementCount = elementCount;
    }

    public boolean isNameDerived() {
        return nameDerived;
    }

    public void setNameDerived(boolean nameDerived) {
        this.nameDerived = nameDerived;
    }

    public Instant getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Instant createdAt) {
        this.createdAt = createdAt;
    }

    public Instant getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Instant updatedAt) {
        this.updatedAt = updatedAt;
    }
}