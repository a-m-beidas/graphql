package org.example.service.fetcher;

import graphql.schema.DataFetcher;
import graphql.schema.DataFetchingEnvironment;
import org.example.model.User;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

@Component
public class AllUsersDataFetcher implements DataFetcher<List<User>> {
    @Override
    public List<User> get(DataFetchingEnvironment dataFetchingEnvironment) {
        return new LinkedList<User>(Arrays.asList(new User("123", "Test2", "Test2"), new User("124", "Test2", "Test2")));
    }
}
