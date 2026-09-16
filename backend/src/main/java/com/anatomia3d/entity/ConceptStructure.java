package com.anatomia3d.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

import java.io.Serializable;

@Entity
@Table(name = "concept_structure")
@IdClass(ConceptStructure.Key.class)
public class ConceptStructure {

    @Id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "concept_id")
    private AnatomicalConcept concept;

    @Id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "structure_id")
    private AnatomicalStructure structure;

    public AnatomicalConcept getConcept() {
        return concept;
    }

    public void setConcept(AnatomicalConcept concept) {
        this.concept = concept;
    }

    public AnatomicalStructure getStructure() {
        return structure;
    }

    public void setStructure(AnatomicalStructure structure) {
        this.structure = structure;
    }

    public static class Key implements Serializable {

        private Long concept;
        private Long structure;

        public Key() {
        }

        public Key(Long conceptId, Long structureId) {
            this.concept = conceptId;
            this.structure = structureId;
        }

        @Override
        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Key key)) {
                return false;
            }
            return java.util.Objects.equals(concept, key.concept)
                && java.util.Objects.equals(structure, key.structure);
        }

        @Override
        public int hashCode() {
            return java.util.Objects.hash(concept, structure);
        }
    }
}