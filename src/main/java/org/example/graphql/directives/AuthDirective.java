package org.example.graphql.directives;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import graphql.schema.*;
import graphql.schema.idl.SchemaDirectiveWiring;
import graphql.schema.idl.SchemaDirectiveWiringEnvironment;
import org.hibernate.sql.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;


/**
 * Original Fetcher
 * Auth Data Fetcher
 */
public class AuthDirective implements SchemaDirectiveWiring {

    ObjectMapper objectMapper = new ObjectMapper();

    Map<String, String> authByType = new HashMap<String, String>();

    @Override
    public GraphQLFieldDefinition onField(SchemaDirectiveWiringEnvironment<GraphQLFieldDefinition> env) {
        GraphQLFieldDefinition field = env.getElement();
        GraphQLFieldsContainer parentType = env.getFieldsContainer();
        String type = env.getElement().getType().toString().replaceAll("\\[|\\]", "");
        String auth = authByType.get(type);
        DataFetcher originalDataFetcher = env.getCodeRegistry().getDataFetcher(parentType, field);
        DataFetcher dataFetcher = new DataFetcher() {
            @Override
            public Object get(DataFetchingEnvironment environment) throws Exception {
                List<String> hasRoles = SecurityContextHolder.getContext().getAuthentication().getAuthorities().stream().map(role -> role.toString().split("_")[1]).collect(Collectors.toList());
                JsonNode hasAnyRole = objectMapper.readTree(auth.replaceAll("'", "\""));
                List<String> selections = environment.getSelectionSet().getImmediateFields().stream().map(selectedField -> selectedField.getName()).collect(Collectors.toList());
                for (String selection: selections) {
                    if (!hasAnyRole.has(selection))
                        continue;
                    String neededRole = hasAnyRole.get(selection).textValue();
                    if (!hasRoles.contains(neededRole))
                        throw new IllegalArgumentException("does not have role: " + neededRole);
                    else {
                        System.out.println("Success");
                    }
                }
                return originalDataFetcher.get(environment);
            }
        };
        env.getCodeRegistry().dataFetcher(parentType, field, dataFetcher);
        return env.getElement();
    }

    @Override
    public GraphQLObjectType onObject(SchemaDirectiveWiringEnvironment<GraphQLObjectType> env) {
        String key = env.getElement().getName();
        String value = env.getDirective().getArgument("fields").getValue().toString();
        authByType.put(key, value);
        return env.getElement();
    }
}