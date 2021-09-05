package org.example.graphql;

//@Configuration
public class DataLoadersConfig {

//    @Bean
//    GraphQLServletContextBuilder graphQLServletContextBuilder(AuthorService authorService, PostService postService) {
//        return new DefaultGraphQLServletContextBuilder() {
//            @Override
//            public GraphQLContext build(HttpServletRequest request, HttpServletResponse response) {
//                return DefaultGraphQLServletContext.createServletContext(buildDataLoaderRegistry(), null)
//                        .with(request)
//                        .with(response)
//                        .build();
//            }
//
//            @Override
//            public GraphQLContext build(Session session, HandshakeRequest handshakeRequest) {
//                return DefaultGraphQLWebSocketContext.createWebSocketContext(buildDataLoaderRegistry(), null)
//                        .with(session)
//                        .with(handshakeRequest)
//                        .build();
//            }
//
//            @Override
//            public GraphQLContext build() {
//                return new DefaultGraphQLContext(buildDataLoaderRegistry(), null);
//            }
//
//            private DataLoaderRegistry buildDataLoaderRegistry() {
//                DataLoaderRegistry dataLoaderRegistry = new DataLoaderRegistry();
//                dataLoaderRegistry.register("bestSellers", DataLoader.newDataLoader(new BooksDataLoader()));
//                return dataLoaderRegistry;
//            }
//
//        };
//    }
}
