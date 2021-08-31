package org.example.security;

import graphql.language.Field;
import graphql.schema.DataFetchingEnvironment;
import graphql.schema.SelectedField;
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
public class GraphQLQueryValidation {

    @PostAuthorize("hasAnyRole('USER')")
    public void validateBookFetcher(DataFetchingEnvironment dataFetchingEnvironment) {
        Map<String, List<SelectedField>> selections = dataFetchingEnvironment.getSelectionSet().getFieldsGroupedByResultKey();
        if (selections.containsKey("id")) {
            SecurityContext ctx = SecurityContextHolder.getContext();
            Authentication auth = new UsernamePasswordAuthenticationToken(ctx.getAuthentication().getPrincipal(), ctx.getAuthentication().getCredentials(), new ArrayList<GrantedAuthority>());
            ctx.setAuthentication(auth);
        }
    }
}
