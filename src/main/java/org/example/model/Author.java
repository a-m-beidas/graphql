package org.example.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Author {

    @Id
    @GeneratedValue
    private int id;

    private final String firstName;

    private final String lastName;

    public Author(String name) {
        String[] nameArr = name.split(" ");
        this.firstName = nameArr[0];
        if (nameArr.length != 1)
            this.lastName = nameArr[1];
        else this.lastName = "";
    }

    public int getId() {
        return id;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }
}
