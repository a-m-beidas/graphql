package org.example.graphql;

import org.dataloader.BatchLoader;
import org.example.model.Author;
import org.example.model.Book;
import org.example.repository.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;

public class DataLoader implements BatchLoader<String, Author> {

    @Autowired
    AuthorRepository authorRepository;

    @Override
    public CompletionStage<List<Author>> load(List<String> keys) {
        return CompletableFuture.supplyAsync(() ->
                this.authorRepository.findAllById(keys)
        );
    }
}
