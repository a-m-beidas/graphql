package org.example.graphql;

import graphql.kickstart.tools.GraphQLQueryResolver;
import graphql.schema.DataFetchingEnvironment;
import org.example.model.Book;
import org.example.service.fetcher.BestSellersDataFetcher;
import org.example.service.fetcher.ClassicBookDataFetcher;
import org.example.service.fetcher.RecentBooksDataFetcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Component
public class BooksQueryResolver implements GraphQLQueryResolver {

    @Autowired
    BestSellersDataFetcher bestSellersDataFetcher;

    @Autowired
    ClassicBookDataFetcher classicBookDataFetcher;

    @Autowired
    RecentBooksDataFetcher recentBooksDataFetcher;

    List<Book> bestSellers(DataFetchingEnvironment dataFetchingEnvironment) {
        System.out.println("123123.");
        return bestSellersDataFetcher.get(dataFetchingEnvironment);
    }

    List<Book> recent(DataFetchingEnvironment dataFetchingEnvironment) {
        return classicBookDataFetcher.get(dataFetchingEnvironment);
    }

    List<Book> classic(DataFetchingEnvironment dataFetchingEnvironment) {
        return recentBooksDataFetcher.get(dataFetchingEnvironment);
    }
}
