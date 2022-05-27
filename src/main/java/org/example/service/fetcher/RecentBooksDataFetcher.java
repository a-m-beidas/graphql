package org.example.service.fetcher;

import graphql.execution.DataFetcherExceptionHandlerResult;
import graphql.schema.DataFetcher;
import graphql.schema.DataFetchingEnvironment;
import org.example.model.Book;
import org.example.model.Category;
import org.example.repository.BookRepository;
import org.example.security.GraphQLQueryValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.concurrent.CompletableFuture;

@Component
public class RecentBooksDataFetcher implements DataFetcher<CompletableFuture<List<Book>>> {

    @Autowired
    GraphQLQueryValidation graphQLQueryValidation;

    @Autowired
    private BookRepository bookRepository;

    @Override
    public CompletableFuture<List<Book>> get(DataFetchingEnvironment dataFetchingEnvironment) {
        return CompletableFuture.supplyAsync(() -> bookRepository.findByGenre(Category.Recent));
    }
}
