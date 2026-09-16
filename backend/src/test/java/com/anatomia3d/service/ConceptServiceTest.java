package com.anatomia3d.service;

import com.anatomia3d.exception.InvalidParamException;
import com.anatomia3d.exception.ResourceNotFoundException;
import com.anatomia3d.repository.AnatomicalConceptRepository;
import com.anatomia3d.repository.AnatomicalStructureRepository;
import com.anatomia3d.repository.ConceptStructureRepository;
import org.junit.jupiter.api.Test;
import org.springframework.data.domain.Page;

import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

class ConceptServiceTest {

    private final AnatomicalConceptRepository conceptRepository =
        mock(AnatomicalConceptRepository.class);
    private final ConceptStructureRepository conceptStructureRepository =
        mock(ConceptStructureRepository.class);
    private final AnatomicalStructureRepository structureRepository =
        mock(AnatomicalStructureRepository.class);
    private final ConceptService service =
        new ConceptService(conceptRepository, conceptStructureRepository, structureRepository);

    @Test
    void rejeitaPageNegativa() {
        assertThatThrownBy(() -> service.search("x", null, -1, 20))
            .isInstanceOf(InvalidParamException.class);
    }

    @Test
    void rejeitaSizeForaDoIntervalo() {
        assertThatThrownBy(() -> service.search("x", null, 0, 0))
            .isInstanceOf(InvalidParamException.class);
        assertThatThrownBy(() -> service.search("x", null, 0, 101))
            .isInstanceOf(InvalidParamException.class);
    }

    @Test
    void normalizaTermoDeBuscaEChamaORepositorio() {
        when(conceptRepository.search(any(), any(), any())).thenReturn(Page.empty());

        service.search("Tíbia", null, 0, 20);

        org.mockito.Mockito.verify(conceptRepository).search(
            org.mockito.ArgumentMatchers.eq("tibia"),
            org.mockito.ArgumentMatchers.eq(null),
            any()
        );
    }

    @Test
    void conversaBuscaVaziaParaNulo() {
        when(conceptRepository.search(any(), any(), any())).thenReturn(Page.empty());

        service.search("   ", "SYS-ESQ", 0, 20);

        org.mockito.Mockito.verify(conceptRepository).search(
            org.mockito.ArgumentMatchers.isNull(),
            org.mockito.ArgumentMatchers.eq("SYS-ESQ"),
            any()
        );
    }

    @Test
    void conceitoInexistenteRetorna404() {
        when(conceptRepository.findByExternalCode("FMA-NOPE")).thenReturn(java.util.Optional.empty());

        assertThatThrownBy(() -> service.get("FMA-NOPE"))
            .isInstanceOf(ResourceNotFoundException.class);
    }

    @Test
    void estruturaInexistenteRetorna404() {
        when(structureRepository.findByExternalCodeAndActiveTrue("STR-NOPE"))
            .thenReturn(java.util.Optional.empty());

        assertThatThrownBy(() -> service.conceptByStructure("STR-NOPE"))
            .isInstanceOf(ResourceNotFoundException.class);
    }
}