package org.example.controller;


import com.fasterxml.jackson.core.JsonProcessingException;
import graphql.ExecutionResult;
import org.example.config.APISecurityException;
import org.example.security.APISecurityValidator;
import org.example.service.GraphQLService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GraphQLController {

    @Autowired
    GraphQLService graphQLService;

    @Autowired
    APISecurityValidator securityValidator;

    @PostMapping(path = "/books")
    public ResponseEntity<Object> getBooks(@RequestBody String query) throws JsonProcessingException {
        try {
            securityValidator.validateQuery(query);
        } catch (APISecurityException e) {
            return null;
        }
        ExecutionResult result = graphQLService.getGraphQL().execute(query);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
}
