package org.example.controller;

import org.example.security.TokenUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AuthenticationController {

    @Autowired
    TokenUtility tokenUtility;

    @PostMapping(path = "/login")
    public ResponseEntity<String> login(@RequestBody String body) {
        return ResponseEntity.ok(tokenUtility.generateToken());
    }
}
