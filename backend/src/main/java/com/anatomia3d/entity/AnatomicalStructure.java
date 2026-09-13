package com.anatomia3d.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Index;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(
    name = "anatomical_structure",
    indexes = {
        @Index(name = "idx_structure_normalized_name", columnList = "normalized_name"),
        @Index(name = "idx_structure_system_id", columnList = "system_id"),
        @Index(name = "idx_structure_region_id", columnList = "region_id"),
        @Index(name = "idx_structure_external_code", columnList = "external_code")
    }
)
public class AnatomicalStructure {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "external_code", nullable = false, unique = true, length = 32)
    private String externalCode;

    @Column(nullable = false, length = 160)
    private String name;

    @Column(name = "normalized_name", nullable = false, length = 160)
    private String normalizedName;

    @Column(columnDefinition = "text")
    private String description;

    @Column(name = "function_description", columnDefinition = "text")
    private String functionDescription;

    @Column(name = "educational_source_name", length = 160)
    private String educationalSourceName;

    @Column(name = "educational_source_url", length = 500)
    private String educationalSourceUrl;

    @Column(nullable = false)
    private boolean active;

    @Column(nullable = false)
    private boolean published;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "system_id")
    private AnatomicalSystem system;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "region_id")
    private AnatomicalRegion region;

    @OneToMany(mappedBy = "structure", orphanRemoval = true, cascade = CascadeType.ALL)
    private List<AlternateName> alternateNames = new ArrayList<>();

    @OneToMany(mappedBy = "sourceStructure")
    private List<StructureRelation> outgoingRelations = new ArrayList<>();

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

    public String getNormalizedName() {
        return normalizedName;
    }

    public void setNormalizedName(String normalizedName) {
        this.normalizedName = normalizedName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFunctionDescription() {
        return functionDescription;
    }

    public void setFunctionDescription(String functionDescription) {
        this.functionDescription = functionDescription;
    }

    public String getEducationalSourceName() {
        return educationalSourceName;
    }

    public void setEducationalSourceName(String educationalSourceName) {
        this.educationalSourceName = educationalSourceName;
    }

    public String getEducationalSourceUrl() {
        return educationalSourceUrl;
    }

    public void setEducationalSourceUrl(String educationalSourceUrl) {
        this.educationalSourceUrl = educationalSourceUrl;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public boolean isPublished() {
        return published;
    }

    public void setPublished(boolean published) {
        this.published = published;
    }

    public AnatomicalSystem getSystem() {
        return system;
    }

    public void setSystem(AnatomicalSystem system) {
        this.system = system;
    }

    public AnatomicalRegion getRegion() {
        return region;
    }

    public void setRegion(AnatomicalRegion region) {
        this.region = region;
    }

    public List<AlternateName> getAlternateNames() {
        return alternateNames;
    }

    public List<StructureRelation> getOutgoingRelations() {
        return outgoingRelations;
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