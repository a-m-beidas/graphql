package org.example.graphql.directives;

import graphql.kickstart.tools.boot.SchemaDirective;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DirectiveConfig {

    @Bean
    SchemaDirective hasAuthDirective() {
        return null;
    }

    @Bean
    SchemaDirective authDirective() {
        return new SchemaDirective("auth", new AuthDirective());
    }
}
