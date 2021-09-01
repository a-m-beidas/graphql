package org.example.service.fetcher;

import graphql.language.Field;
import graphql.schema.DataFetcher;
import graphql.schema.DataFetchingEnvironment;
import org.example.model.Book;
import org.example.model.Category;
import org.example.repository.BookRepository;
import org.example.security.GraphQLQueryValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component
public class BestSellersDataFetcher implements DataFetcher<List<Book>> {

    @Autowired
    GraphQLQueryValidation graphQLQueryValidation;

    @Autowired
    private BookRepository bookRepository;

    @Override
    public List<Book> get(DataFetchingEnvironment dataFetchingEnvironment) {
//        graphQLQueryValidation.validateBookFetcher(dataFetchingEnvironment);
        System.out.println("223123.");
        List<Book> result = bookRepository.findByGenre(Category.BestSeller);
        System.out.println("323123.");
        return result;
    }
}
