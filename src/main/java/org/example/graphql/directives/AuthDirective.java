package org.example.graphql.directives;

import graphql.schema.*;
import graphql.schema.idl.SchemaDirectiveWiring;
import graphql.schema.idl.SchemaDirectiveWiringEnvironment;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.ArrayList;


/**
 * Original Fetcher
 * Auth Data Fetcher
 */
public class AuthDirective implements SchemaDirectiveWiring {

    @Override
    public GraphQLFieldDefinition onField(SchemaDirectiveWiringEnvironment<GraphQLFieldDefinition> env) {

        GraphQLFieldDefinition field = env.getElement();
        GraphQLArgument arg = env.getDirective().getArgument("role");
        GraphQLFieldsContainer parentType = env.getFieldsContainer();
        DataFetcher originalDataFetcher = env.getCodeRegistry().getDataFetcher(parentType, field);

        DataFetcher dataFetcher = new DataFetcher() {
            @Override
            public Object get(DataFetchingEnvironment environment) throws Exception {
                if (arg.getValue().equals("ADMIN")) {
                    SecurityContext ctx = SecurityContextHolder.getContext();
                    Authentication auth = new UsernamePasswordAuthenticationToken(ctx.getAuthentication().getPrincipal(), ctx.getAuthentication().getCredentials(), new ArrayList<GrantedAuthority>());
                    ctx.setAuthentication(auth);
                    throw new IllegalArgumentException("Error");
                }
                return originalDataFetcher.get(environment);
            }
        };
        env.getCodeRegistry().dataFetcher(parentType, field, dataFetcher);
        return field;
    }
}