package org.example.graphql;

import graphql.kickstart.tools.GraphQLResolver;
import graphql.schema.DataFetchingEnvironment;
import org.example.model.Author;
import org.example.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.concurrent.CompletableFuture;

@Component
public class BookResolver implements GraphQLResolver<Book> {

    @Autowired
    DataLoader dataLoader;

    public CompletableFuture<Author> author(Book book, DataFetchingEnvironment dfe) {
        org.dataloader.DataLoader dataLoader = dfe.getDataLoader("author");
        //  Post post = dfe.getSource();
        return dataLoader.load(book.getAuthor());
    }
}
