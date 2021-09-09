# graphql

Authorization based only on the GraphQL schema file


Using only the following schema, the spring application will authorize <i>Book.id</i> for admin and <i>Book.title</i> for user, to add further authorization adding the directive @auth is sufficient for the application to provide authorization rules:<br>
<pre>
directive @auth(fields: String) on FIELD_DEFINITION | OBJECT

input AuthField {
    key: String
    value: String
}

schema {
    query: Query
}

type Query {
    bestSellers: [Book] <b>@auth</b>
    recent: [Book] <b>@auth</b>
    classic: [Book] <b>@auth</b>
}

type Book <b>@auth(fields: "{'id': 'ADMIN', 'title': 'USER'}")</b>
{
    id: String
    title: String
    genre: String
    author: Author
    link: String
    year: Int
}

type Author {
    id: String
    firstName: String
    lastName: String
}
</pre>

