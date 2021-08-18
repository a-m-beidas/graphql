<h3>GraphQL Project</h3>
GraphQL API to retrieve users' data - not connected to database yet</br><br/>
GraphQL file is in the classpath<br/><br/>
Examples:
<ol>
  <li>
      Retrieves all users' names:
<pre>
{
    allUsers {
        name
    }
}
</pre>
      </li>
      <li>
      Retrieves all users' names and passwords:
<pre>
{
    allUsers {
        name
        password
    }
}
</pre>
      </li>
</ol>
