package org.example.graphql;

import graphql.kickstart.tools.GraphQLResolver;
import org.example.model.Book;
import org.springframework.stereotype.Component;

@Component
public class BookResolver implements GraphQLResolver<Book> {

}
