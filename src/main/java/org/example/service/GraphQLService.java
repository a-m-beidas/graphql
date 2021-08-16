package org.example.service;
import graphql.GraphQL;
import graphql.schema.GraphQLSchema;
import graphql.schema.idl.RuntimeWiring;
import graphql.schema.idl.SchemaGenerator;
import graphql.schema.idl.SchemaParser;
import graphql.schema.idl.TypeDefinitionRegistry;
import org.example.model.User;
import org.example.service.fetcher.AllUsersDataFetcher;
import org.example.service.fetcher.UserDataFetcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.example.repository.UserRepository;

import javax.annotation.PostConstruct;
import java.io.File;
import java.io.IOException;
import java.util.stream.Stream;

@Service
public class GraphQLService {

    @Autowired
    UserRepository userRepository;

    @Value("classpath:users.graphql")
    Resource resource;

    private GraphQL graphQL;
    @Autowired
    private AllUsersDataFetcher allUsersDataFetcher;
    @Autowired
    private UserDataFetcher userDataFetcher;

    // load schema at application start up
    @PostConstruct
    private void loadSchema() throws IOException {

        // get the schema
        File schemaFile = resource.getFile();
        // parse schema
        TypeDefinitionRegistry typeRegistry = new SchemaParser().parse(schemaFile);
        RuntimeWiring wiring = buildRuntimeWiring();
        GraphQLSchema schema = new SchemaGenerator().makeExecutableSchema(typeRegistry, wiring);
        graphQL = GraphQL.newGraphQL(schema).build();
    }

    private void loadDataIntoHSQL() {

        Stream.of(
                new User("123", "Book of Clouds", "Kindle Edition"),
                new User("124", "Cloud Arch & Engineering", "Orielly"),
                new User("125", "Java 9 Programming", "Orielly")
        ).forEach(user -> {
            userRepository.save(user);
        });
    }

    private RuntimeWiring buildRuntimeWiring() {
        return RuntimeWiring.newRuntimeWiring()
                .type("Query", typeWiring -> typeWiring
                        .dataFetcher("allUsers", allUsersDataFetcher)
                        .dataFetcher("users", userDataFetcher))
                .build();
    }


    public GraphQL getGraphQL() {
        return graphQL;
    }
}