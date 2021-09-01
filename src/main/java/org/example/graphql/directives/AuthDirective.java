package org.example.graphql.directives;

import graphql.schema.*;
import graphql.schema.idl.SchemaDirectiveWiring;
import graphql.schema.idl.SchemaDirectiveWiringEnvironment;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.ArrayList;

public class AuthDirective implements SchemaDirectiveWiring {

    @Override
    public GraphQLFieldDefinition onField(SchemaDirectiveWiringEnvironment<GraphQLFieldDefinition> env) {

        GraphQLFieldDefinition field = env.getElement();
        GraphQLArgument arg = env.getDirective().getArgument("role");
        GraphQLFieldsContainer parentType = env.getFieldsContainer();
        var originalDataFetcher = env.getCodeRegistry().getDataFetcher(parentType, field);
        var dataFetcher = DataFetcherFactories.wrapDataFetcher(originalDataFetcher,
                (dataFetchingEnvironment, value) -> {
                    if (arg.getValue().equals("ADMIN")) {
                        throw new IllegalArgumentException("Error");
                    }
                    return value;
                }
        );
        env.getCodeRegistry().dataFetcher(parentType, field, dataFetcher);
        return field;
    }
}