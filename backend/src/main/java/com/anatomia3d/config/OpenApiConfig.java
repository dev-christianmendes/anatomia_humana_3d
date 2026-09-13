package com.anatomia3d.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OpenApiConfig {

    @Bean
    public OpenAPI anatomiaOpenApi() {
        return new OpenAPI().info(new Info()
            .title("Anatomia 3D API")
            .description("API REST de dados anatomicos educacionais.")
            .version("v1"));
    }
}