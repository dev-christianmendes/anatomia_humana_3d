package com.anatomia3d.service;

import com.anatomia3d.exception.InvalidParamException;
import com.anatomia3d.repository.AnatomicalStructureRepository;
import com.anatomia3d.repository.StructureRelationRepository;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.data.domain.Page;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.mock;

class StructureServiceTest {

    private final AnatomicalStructureRepository structureRepository =
        mock(AnatomicalStructureRepository.class);
    private final StructureRelationRepository relationRepository =
        mock(StructureRelationRepository.class);
    private final StructureService service =
        new StructureService(structureRepository, relationRepository);

    @Test
    void rejeitaPageNegativa() {
        assertThatThrownBy(() -> service.search("x", null, null, -1, 20))
            .isInstanceOf(InvalidParamException.class);
    }

    @Test
    void rejeitaSizeForaDoIntervalo() {
        assertThatThrownBy(() -> service.search("x", null, null, 0, 0))
            .isInstanceOf(InvalidParamException.class);
        assertThatThrownBy(() -> service.search("x", null, null, 0, 101))
            .isInstanceOf(InvalidParamException.class);
    }

    @Test
    void normalizaTermoDeBuscaEChamaORepositorio() {
        Mockito.when(structureRepository.search(any(), any(), any(), any())).thenReturn(Page.empty());

        service.search("Tíbia", null, null, 0, 20);

        Mockito.verify(structureRepository).search(
            org.mockito.ArgumentMatchers.eq("tibia"),
            org.mockito.ArgumentMatchers.eq(null),
            org.mockito.ArgumentMatchers.eq(null),
            any()
        );
    }

    @Test
    void converteBuscaVaziaParaNulo() {
        Mockito.when(structureRepository.search(any(), any(), any(), any())).thenReturn(Page.empty());

        service.search("   ", "SYS-ESQ", "  ", 0, 20);

        Mockito.verify(structureRepository).search(
            org.mockito.ArgumentMatchers.isNull(),
            org.mockito.ArgumentMatchers.eq("SYS-ESQ"),
            org.mockito.ArgumentMatchers.isNull(),
            any()
        );
    }
}