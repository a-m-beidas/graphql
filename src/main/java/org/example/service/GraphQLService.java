package org.example.service;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import graphql.GraphQL;
import graphql.schema.GraphQLSchema;
import graphql.schema.idl.RuntimeWiring;
import graphql.schema.idl.SchemaGenerator;
import graphql.schema.idl.SchemaParser;
import graphql.schema.idl.TypeDefinitionRegistry;
import org.example.model.Book;
import org.example.repository.BookRepository;
import org.example.service.fetcher.BestSellersDataFetcher;
import org.example.service.fetcher.ClassicBookDataFetcher;
import org.example.service.fetcher.RecentBooksDataFetcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.io.File;
import java.io.IOException;

@Service
public class GraphQLService {


    @Value("classpath:books.graphql")
    Resource resource;

    @Value("classpath:books.json")
    Resource json;

    private GraphQL graphQL;
    @Autowired
    private BestSellersDataFetcher bestSellersDataFetcher;
    @Autowired
    private RecentBooksDataFetcher recentBooksDataFetcher;
    @Autowired
    private ClassicBookDataFetcher classicBookDataFetcher;
    @Autowired
    private BookRepository bookRepository;

    // load schema at application start up

    private void database() throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        JsonNode tree = mapper.readTree(json.getFile());
        Book[] books = mapper.convertValue(tree, Book[].class);
        for (Book book: books) {
            bookRepository.save(book);
        }
    }

    @PostConstruct
    private void loadSchema() throws IOException {
        database();
        File schemaFile = resource.getFile();
        TypeDefinitionRegistry typeRegistry = new SchemaParser().parse(schemaFile);
        RuntimeWiring wiring = buildRuntimeWiring();
        GraphQLSchema schema = new SchemaGenerator().makeExecutableSchema(typeRegistry, wiring);
        graphQL = GraphQL.newGraphQL(schema).build();
    }


    private RuntimeWiring buildRuntimeWiring() {
        return RuntimeWiring.newRuntimeWiring()
                .type("Query", typeWiring -> typeWiring
                        .dataFetcher("bestSellers", bestSellersDataFetcher)
                        .dataFetcher("recent", recentBooksDataFetcher)
                        .dataFetcher("classic", classicBookDataFetcher))
                .build();
    }


    public GraphQL getGraphQL() {
        return graphQL;
    }
}