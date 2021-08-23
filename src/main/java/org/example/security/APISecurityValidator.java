package org.example.security;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.example.config.APISecurityException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public class APISecurityValidator {

    @Autowired
    ObjectMapper mapper;

    @PostAuthorize("hasAnyRole('admin')")
    public void validateQuery(String query) throws JsonProcessingException, APISecurityException {
        JsonNode node = mapper.readTree(query);
        if (node.has("id")) {
            SecurityContext ctx = SecurityContextHolder.getContext();
            Authentication auth = new UsernamePasswordAuthenticationToken(ctx.getAuthentication().getPrincipal(), ctx.getAuthentication().getCredentials(), new ArrayList<GrantedAuthority>());
            ctx.setAuthentication(auth);
            throw new APISecurityException();
        }
    }
}
