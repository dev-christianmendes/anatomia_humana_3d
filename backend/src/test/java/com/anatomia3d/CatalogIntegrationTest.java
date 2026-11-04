package com.anatomia3d;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.springframework.test.web.servlet.MockMvc;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

/**
 * Cobrem o snapshot do catalogo V2 (conceitos + estruturas do atlas full-body)
 * e as flags de curadoria (nameDerived / reviewed) expostas pela API.
 * Usa um container proprio (nao compartilhado com a classe de integracao
 * geral) para nao interferir no ciclo de vida do Postgres entre classes.
 */
@SpringBootTest
@AutoConfigureMockMvc
@Testcontainers
class CatalogIntegrationTest {

    @Container
    static final PostgreSQLContainer<?> POSTGRES = new PostgreSQLContainer<>("postgres:17-alpine")
        .withDatabaseName("anatomia")
        .withUsername("anatomia")
        .withPassword("anatomia");

    @DynamicPropertySource
    static void datasource(DynamicPropertyRegistry registry) {
        registry.add("spring.datasource.url", POSTGRES::getJdbcUrl);
        registry.add("spring.datasource.username", POSTGRES::getUsername);
        registry.add("spring.datasource.password", POSTGRES::getPassword);
    }

    @Autowired
    private MockMvc mockMvc;

    @Test
    void snapshotRetornaConceitosEEstruturasDoAtlas() throws Exception {
        mockMvc.perform(get("/api/v1/catalog/v2/snapshot"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.concepts.length()").value(3432))
            .andExpect(jsonPath("$.structures.length()").value(2234))
            .andExpect(jsonPath("$.concepts[0].id").exists())
            .andExpect(jsonPath("$.concepts[0].namePt").exists())
            .andExpect(jsonPath("$.structures[0].structureId").exists())
            .andExpect(jsonPath("$.structures[0].sourceId").exists());
    }

    @Test
    void snapshotMantemNomesCuradosEElementosFJ() throws Exception {
        mockMvc.perform(get("/api/v1/catalog/v2/snapshot"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.concepts[?(@.id=='FMA10014')].namePt",
                org.hamcrest.Matchers.hasItem("Nona vértebra torácica")))
            .andExpect(jsonPath("$.concepts[?(@.id=='FMA10014')].elements[*]",
                org.hamcrest.Matchers.hasItem("FJ3175")))
            .andExpect(jsonPath("$.structures[?(@.structureId=='SYS-ESQ-0001')].sourceId",
                org.hamcrest.Matchers.hasItem("FJ1252")))
            .andExpect(jsonPath("$.structures[?(@.structureId=='SYS-ESQ-0001')].name",
                org.hamcrest.Matchers.hasItem("Gengiva da maxila")))
            .andExpect(jsonPath("$.structures[?(@.structureId=='SYS-ESQ-0001')].system",
                org.hamcrest.Matchers.hasItem("SYS-ESQ")));
    }

    @Test
    void snapshotExpoeFlagsDeCuradoria() throws Exception {
        mockMvc.perform(get("/api/v1/catalog/v2/snapshot"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.concepts[?(@.id=='FMA10014')].nameDerived",
                org.hamcrest.Matchers.hasItem(true)))
            .andExpect(jsonPath("$.concepts[?(@.id=='FMA10014')].reviewed",
                org.hamcrest.Matchers.hasItem(false)))
            .andExpect(jsonPath("$.structures[?(@.structureId=='SYS-ESQ-0001')].nameDerived",
                org.hamcrest.Matchers.hasItem(true)))
            .andExpect(jsonPath("$.structures[?(@.structureId=='SYS-ESQ-0001')].reviewed",
                org.hamcrest.Matchers.hasItem(false)));
    }

    @Test
    void listaConceitosExpoeNameDerivedEReviewed() throws Exception {
        mockMvc.perform(get("/api/v1/concepts").param("search", "nona vertebra toracica"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.content[*].id",
                org.hamcrest.Matchers.hasItems("FMA10014", "FMA13506")))
            .andExpect(jsonPath("$.content[?(@.id=='FMA10014')].nameDerived",
                org.hamcrest.Matchers.hasItem(true)))
            .andExpect(jsonPath("$.content[?(@.id=='FMA10014')].reviewed",
                org.hamcrest.Matchers.hasItem(false)));
    }
}