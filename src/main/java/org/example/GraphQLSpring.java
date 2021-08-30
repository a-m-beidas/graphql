package org.example;

import org.example.model.Book;
import org.example.model.Category;
import org.example.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.List;

@SpringBootApplication
public class GraphQLSpring {
    public static void main(String[] args) {
        SpringApplication.run(GraphQLSpring.class);
    }

    @Autowired
    BookRepository bookRepository;

}
