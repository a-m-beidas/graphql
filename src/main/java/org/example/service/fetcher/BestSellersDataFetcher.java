package org.example.service.fetcher;

import graphql.language.Field;
import graphql.schema.DataFetcher;
import graphql.schema.DataFetchingEnvironment;
import org.example.model.Book;
import org.example.model.Category;
import org.example.repository.BookRepository;
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
    private BookRepository bookRepository;

    @Override
    @PostAuthorize("hasAnyRole('USER')")
    public List<Book> get(DataFetchingEnvironment dataFetchingEnvironment) {
        Map<String, List<Field>> selections = dataFetchingEnvironment.getSelectionSet().get();
        if (selections.containsKey("id")) {
            SecurityContext ctx = SecurityContextHolder.getContext();
            Authentication auth = new UsernamePasswordAuthenticationToken(ctx.getAuthentication().getPrincipal(), ctx.getAuthentication().getCredentials(), new ArrayList<GrantedAuthority>());
            ctx.setAuthentication(auth);
        }
        return bookRepository.findByGenre(Category.BestSeller);
    }
}
