package org.example.controller;


import graphql.ExecutionResult;
import org.example.service.GraphQLService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GraphQLController {

    @Autowired
    GraphQLService graphQLService;

    @PostMapping(path = "/users")
    public ResponseEntity<Object> getAllUsers(@RequestBody String query) {
        ExecutionResult result = graphQLService.getGraphQL().execute(query);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
}
