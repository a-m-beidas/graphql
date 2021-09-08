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

    Map<GraphQLType, List<GraphQLFieldDefinition>> fieldToObject = new HashMap<GraphQLType, List<GraphQLFieldDefinition>>();

    @Override
    public GraphQLFieldDefinition onField(SchemaDirectiveWiringEnvironment<GraphQLFieldDefinition> env) {
        GraphQLFieldDefinition field = env.getElement();
        if (fieldToObject.get(field.getType()) == null)
            fieldToObject.put(field.getType(), new ArrayList<GraphQLFieldDefinition>());
        fieldToObject.get(field.getType()).add(field);
        return env.getElement();
    }

    @Override
    public GraphQLObjectType onObject(SchemaDirectiveWiringEnvironment<GraphQLObjectType> env) {
        for (GraphQLFieldDefinition field: fieldToObject.get(env.getElement())) {
            GraphQLArgument arg = env.getDirective().getArgument("fields");
            GraphQLFieldsContainer parentType = env.getFieldsContainer();
            DataFetcher originalDataFetcher = env.getCodeRegistry().getDataFetcher(parentType, field);
            DataFetcher dataFetcher = new DataFetcher() {
                @Override
                public Object get(DataFetchingEnvironment environment) throws Exception {
                    List<String> hasRoles = SecurityContextHolder.getContext().getAuthentication().getAuthorities().stream().map(role -> role.toString().split("_")[1]).collect(Collectors.toList());
                    JsonNode hasAnyRole = objectMapper.readTree(arg.getValue().toString().replaceAll("'", "\""));
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
        }
        return env.getElement();
    }
}