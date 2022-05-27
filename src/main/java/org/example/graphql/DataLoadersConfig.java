package org.example.graphql;

import graphql.kickstart.execution.context.DefaultGraphQLContext;
import graphql.kickstart.execution.context.GraphQLContext;
import graphql.kickstart.servlet.context.DefaultGraphQLServletContext;
import graphql.kickstart.servlet.context.DefaultGraphQLServletContextBuilder;
import graphql.kickstart.servlet.context.DefaultGraphQLWebSocketContext;
import graphql.kickstart.servlet.context.GraphQLServletContextBuilder;
import org.dataloader.DataLoader;
import org.dataloader.DataLoaderRegistry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;
import javax.websocket.server.HandshakeRequest;

@Configuration
public class DataLoadersConfig {

    @Autowired
    BookDataLoader bookDataLoader;

    @Bean
    GraphQLServletContextBuilder graphQLServletContextBuilder() {
        return new DefaultGraphQLServletContextBuilder() {
            @Override
            public GraphQLContext build(HttpServletRequest request, HttpServletResponse response) {
                return DefaultGraphQLServletContext.createServletContext(buildDataLoaderRegistry(), null)
                        .with(request)
                        .with(response)
                        .build();
            }

            @Override
            public GraphQLContext build(Session session, HandshakeRequest handshakeRequest) {
                return DefaultGraphQLWebSocketContext.createWebSocketContext(buildDataLoaderRegistry(), null)
                        .with(session)
                        .with(handshakeRequest)
                        .build();
            }

            @Override
            public GraphQLContext build() {
                return new DefaultGraphQLContext(buildDataLoaderRegistry(), null);
            }

            private DataLoaderRegistry buildDataLoaderRegistry() {
                DataLoaderRegistry dataLoaderRegistry = new DataLoaderRegistry();
                dataLoaderRegistry.register("author", DataLoader.newDataLoader(bookDataLoader));
                return dataLoaderRegistry;
            }

        };
    }
}
