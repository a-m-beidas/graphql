package org.example;

import org.example.repository.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class GraphQLSpring {

    public static void main(String[] args) {
        SpringApplication.run(GraphQLSpring.class);
    }
}
