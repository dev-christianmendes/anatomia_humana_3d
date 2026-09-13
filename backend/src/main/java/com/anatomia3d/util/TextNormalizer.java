package com.anatomia3d.util;

import java.text.Normalizer;
import java.util.Locale;

public final class TextNormalizer {

    private TextNormalizer() {
    }

    public static String normalize(String value) {
        if (value == null) {
            return null;
        }
        String decomposed = Normalizer.normalize(value, Normalizer.Form.NFD);
        return decomposed
            .replaceAll("\\p{M}+", "")
            .toLowerCase(Locale.ROOT)
            .trim();
    }
}