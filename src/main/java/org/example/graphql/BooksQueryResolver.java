package org.example.graphql;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import graphql.kickstart.tools.GraphQLQueryResolver;
import graphql.schema.DataFetchingEnvironment;
import org.example.model.Book;
import org.example.repository.AuthorRepository;
import org.example.repository.BookRepository;
import org.example.service.fetcher.BestSellersDataFetcher;
import org.example.service.fetcher.ClassicBookDataFetcher;
import org.example.service.fetcher.RecentBooksDataFetcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.io.IOException;
import java.util.List;

@Component
public class BooksQueryResolver implements GraphQLQueryResolver {

    @Autowired
    BestSellersDataFetcher bestSellersDataFetcher;

    @Autowired
    ClassicBookDataFetcher classicBookDataFetcher;

    @Autowired
    RecentBooksDataFetcher recentBooksDataFetcher;

    @Autowired
    BookRepository bookRepository;

    @Autowired
    AuthorRepository authorRepository;

    @Value("classpath:books.json")
    Resource json;

    List<Book> bestSellers(DataFetchingEnvironment dataFetchingEnvironment) {
        return bestSellersDataFetcher.get(dataFetchingEnvironment);
    }

    List<Book> recent(DataFetchingEnvironment dataFetchingEnvironment) {
        return classicBookDataFetcher.get(dataFetchingEnvironment);
    }

    List<Book> classic(DataFetchingEnvironment dataFetchingEnvironment) {
        return recentBooksDataFetcher.get(dataFetchingEnvironment);
    }

//    @PostConstruct
    private void database() throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        JsonNode tree = mapper.readTree(json.getFile());
        Book[] books = mapper.convertValue(tree, Book[].class);
        for (Book book: books) {
            authorRepository.save(book.getAuthor());
            bookRepository.save(book);
        }
    }
}
