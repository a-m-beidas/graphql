package org.example.graphql;

import org.dataloader.BatchLoader;
import org.example.model.Author;
import org.example.repository.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;

@Component
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
