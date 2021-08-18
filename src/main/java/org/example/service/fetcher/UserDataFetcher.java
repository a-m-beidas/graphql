package org.example.service.fetcher;

import graphql.schema.DataFetcher;
import graphql.schema.DataFetchingEnvironment;
import org.example.model.User;
import org.springframework.stereotype.Component;

@Component
public class UserDataFetcher implements DataFetcher<User> {
    @Override
    public User get(DataFetchingEnvironment dataFetchingEnvironment) {
        return new User("123", "Test", "Test");
    }
}
