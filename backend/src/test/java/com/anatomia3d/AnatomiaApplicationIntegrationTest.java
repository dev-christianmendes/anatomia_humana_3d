package com.anatomia3d;

import com.anatomia3d.entity.AlternateName;
import com.anatomia3d.entity.AnatomicalRegion;
import com.anatomia3d.entity.AnatomicalStructure;
import com.anatomia3d.entity.AnatomicalSystem;
import com.anatomia3d.entity.Asset;
import com.anatomia3d.entity.SourceLicense;
import com.anatomia3d.entity.StructureRelation;
import com.anatomia3d.repository.AnatomicalRegionRepository;
import com.anatomia3d.repository.AnatomicalStructureRepository;
import com.anatomia3d.repository.AnatomicalSystemRepository;
import com.anatomia3d.repository.AssetRepository;
import com.anatomia3d.repository.SourceLicenseRepository;
import com.anatomia3d.repository.StructureRelationRepository;
import com.anatomia3d.util.TextNormalizer;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import java.util.List;

import static org.hamcrest.Matchers.containsString;
import static org.hamcrest.Matchers.hasItem;
import static org.hamcrest.Matchers.hasSize;
import static org.hamcrest.Matchers.is;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

class AnatomiaApplicationIntegrationTest extends AbstractPostgresTest {

    private static final String FEMUR_ID = "STR-TST-FEMUR";
    private static final String TIBIA_ID = "STR-TST-TIBIA";
    private static final String PATELA_ID = "STR-TST-PATELA";
    private static final String INACTIVE_ID = "STR-TST-INACT";

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private AnatomicalSystemRepository systemRepository;

    @Autowired
    private AnatomicalRegionRepository regionRepository;

    @Autowired
    private AnatomicalStructureRepository structureRepository;

    @Autowired
    private StructureRelationRepository relationRepository;

    @Autowired
    private AssetRepository assetRepository;

    @Autowired
    private SourceLicenseRepository licenseRepository;

    @BeforeEach
    void seedFixtures() {
        relationRepository.deleteAll();
        assetRepository.deleteAll();
        structureRepository.deleteAll();

        AnatomicalSystem skeletal = systemRepository.findByCode("SYS-ESQ")
            .orElseThrow(IllegalStateException::new);
        AnatomicalRegion lowerLimb = regionRepository.findByCode("REG-LOWER-LIMB")
            .orElseThrow(IllegalStateException::new);

        AnatomicalStructure femur = structure(FEMUR_ID, "Fêmur direito", skeletal, lowerLimb, true);
        AlternateName alias = new AlternateName();
        alias.setName("Os femorale");
        alias.setStructure(femur);
        femur.getAlternateNames().add(alias);
        femur.setEducationalSourceName("Atlas de Anatomia (fixture)");
        femur.setEducationalSourceUrl("https://example.org/atlas");
        structureRepository.save(femur);

        AnatomicalStructure tibia = structure(TIBIA_ID, "Tíbia direita", skeletal, lowerLimb, true);
        structureRepository.save(tibia);

        AnatomicalStructure patela = structure(PATELA_ID, "Patela direita", skeletal, lowerLimb, true);
        structureRepository.save(patela);

        structureRepository.save(structure(INACTIVE_ID, "Inativa", skeletal, lowerLimb, false));

        StructureRelation relation = new StructureRelation();
        relation.setSourceStructure(femur);
        relation.setTargetStructure(tibia);
        relation.setRelationType("ARTICULATES_WITH");
        relation.setDescription("Articula a extremidade distal do femur.");
        relationRepository.save(relation);

        StructureRelation reverse = new StructureRelation();
        reverse.setSourceStructure(patela);
        reverse.setTargetStructure(femur);
        reverse.setRelationType("ARTICULATION");
        reverse.setDescription("Patela com tróclea femoral.");
        relationRepository.save(reverse);

        SourceLicense license = licenseRepository.findBySourceName("BodyParts3D")
            .orElseThrow(IllegalStateException::new);
        Asset asset = new Asset();
        asset.setStructure(femur);
        asset.setFileUrl("/models/bodyparts3d-skeleton.glb");
        asset.setFileFormat("glb");
        asset.setChecksum("28e6795383b05925b262ec498c90f7eb2830b2bb6cab3ebdd85ed3b690569be6");
        asset.setVersion("1.0");
        asset.setPublished(true);
        asset.setModifications("Conversao para GLB.");
        asset.setSourceLicense(license);
        assetRepository.save(asset);
    }

    private AnatomicalStructure structure(String id, String name, AnatomicalSystem system,
                                           AnatomicalRegion region, boolean active) {
        AnatomicalStructure s = new AnatomicalStructure();
        s.setExternalCode(id);
        s.setName(name);
        s.setNormalizedName(TextNormalizer.normalize(name));
        s.setSystem(system);
        s.setRegion(region);
        s.setActive(active);
        s.setPublished(true);
        s.setDescription("Descricao educacional de fixture.");
        s.setFunctionDescription("Funcao de fixture.");
        return s;
    }

    @Test
    void listaSistemasRedeReferencia() throws Exception {
        mockMvc.perform(get("/api/v1/systems"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[*].code", org.hamcrest.Matchers.hasItem("SYS-ESQ")));
    }

    @Test
    void listaRegioes() throws Exception {
        mockMvc.perform(get("/api/v1/regions"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[*].code", org.hamcrest.Matchers.hasItem("REG-LOWER-LIMB")));
    }

    @Test
    void buscaPorTermoSemAcento() throws Exception {
        mockMvc.perform(get("/api/v1/structures").param("search", "Femur"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.content", hasSize(1)))
            .andExpect(jsonPath("$.content[0].id", is(FEMUR_ID)));
    }

    @Test
    void buscaComAcentoNoInput() throws Exception {
        mockMvc.perform(get("/api/v1/structures").param("search", "Fêmur"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.content", hasSize(1)))
            .andExpect(jsonPath("$.content[0].id", is(FEMUR_ID)));
    }

    @Test
    void filtraPorSistemaERegiao() throws Exception {
        mockMvc.perform(get("/api/v1/structures")
                .param("system", "SYS-ESQ")
                .param("region", "REG-LOWER-LIMB")
                .param("size", "100"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.content", hasSize(3)))
            .andExpect(jsonPath("$.content[*].id",
                org.hamcrest.Matchers.containsInAnyOrder(FEMUR_ID, TIBIA_ID, PATELA_ID)));
    }

    @Test
    void naoRetornaEstruturaInativa() throws Exception {
        mockMvc.perform(get("/api/v1/structures").param("search", "Inativa"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.content", hasSize(0)));
    }

    @Test
    void detalheDaEstrutura() throws Exception {
        mockMvc.perform(get("/api/v1/structures/{id}", FEMUR_ID))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.id", is(FEMUR_ID)))
            .andExpect(jsonPath("$.name", is("Fêmur direito")))
            .andExpect(jsonPath("$.modelNode", is(FEMUR_ID)))
            .andExpect(jsonPath("$.function", is("Funcao de fixture.")))
            .andExpect(jsonPath("$.alternateNames[0]", is("Os femorale")))
            .andExpect(jsonPath("$.system.code", is("SYS-ESQ")))
            .andExpect(jsonPath("$.region.code", is("REG-LOWER-LIMB")))
            .andExpect(jsonPath("$.source.name", is("Atlas de Anatomia (fixture)")));
    }

    @Test
    void relacoesDaEstrutura() throws Exception {
        mockMvc.perform(get("/api/v1/structures/{id}/relations", FEMUR_ID))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$", hasSize(2)))
            .andExpect(jsonPath("$[?(@.relationType=='ARTICULATES_WITH')].target.id", hasItem(TIBIA_ID)))
            .andExpect(jsonPath("$[?(@.relationType=='ARTICULATION')].target.id", hasItem(PATELA_ID)));
    }

    @Test
    void resolveArticulacoesNoSentidoReverso() throws Exception {
        mockMvc.perform(get("/api/v1/structures/{id}/relations", FEMUR_ID))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[?(@.relationType=='ARTICULATION')].target.id", hasSize(1)))
            .andExpect(jsonPath("$[?(@.relationType=='ARTICULATION')].target.id", hasItem(PATELA_ID)))
            .andExpect(jsonPath("$[?(@.relationType=='ARTICULATES_WITH')].target.id", hasItem(TIBIA_ID)));
    }

    @Test
    void assetsDaEstrutura() throws Exception {
        mockMvc.perform(get("/api/v1/assets/{id}", FEMUR_ID))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].fileFormat", is("glb")))
            .andExpect(jsonPath("$[0].version", is("1.0")))
            .andExpect(jsonPath("$[0].attribution", containsString("BodyParts3D")));
    }

    @Test
    void estruturaInexistenteRetorna404() throws Exception {
        mockMvc.perform(get("/api/v1/structures/{id}", "STR-NOPE"))
            .andExpect(status().isNotFound())
            .andExpect(jsonPath("$.status", is(404)));
    }

    @Test
    void parametroInvalidoRetorna400() throws Exception {
        mockMvc.perform(get("/api/v1/structures").param("page", "-1"))
            .andExpect(status().isBadRequest());
        mockMvc.perform(get("/api/v1/structures").param("size", "500"))
            .andExpect(status().isBadRequest());
    }

    @Test
    void suportaContentTypeJson() throws Exception {
        mockMvc.perform(get("/api/v1/structures").accept(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());
    }

    @Test
    void openApiDisponivel() throws Exception {
        mockMvc.perform(get("/api-docs"))
            .andExpect(status().isOk());
    }
}