package org.example.service.fetcher;

import graphql.schema.DataFetcher;
import graphql.schema.DataFetchingEnvironment;
import org.example.model.Book;
import org.example.model.Category;
import org.example.repository.BookRepository;
import org.example.security.GraphQLQueryValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ClassicBookDataFetcher implements DataFetcher<List<Book>> {

    @Autowired
    GraphQLQueryValidation graphQLQueryValidation;

    @Autowired
    private BookRepository bookRepository;

    @Override
    public List<Book> get(DataFetchingEnvironment dataFetchingEnvironment) {
//        graphQLQueryValidation.validateBookFetcher(dataFetchingEnvironment);
        return bookRepository.findByGenre(Category.Classic);
    }
}
