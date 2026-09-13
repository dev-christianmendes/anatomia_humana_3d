package com.anatomia3d.util;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;

class TextNormalizerTest {

    @Test
    void removeAcentosEMinuscula() {
        assertThat(TextNormalizer.normalize("Úmero Proximal")).isEqualTo("umero proximal");
        assertThat(TextNormalizer.normalize("MÚSCULO SAUDÁVEL")).isEqualTo("musculo saudavel");
        assertThat(TextNormalizer.normalize("  Tíbia  ")).isEqualTo("tibia");
    }

    @Test
    void mantemNuloQuandEntradaNula() {
        assertThat(TextNormalizer.normalize(null)).isNull();
    }
}