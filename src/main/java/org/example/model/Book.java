package org.example.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
@JsonIgnoreProperties(ignoreUnknown = true)
public class Book {
    @Id
    @GeneratedValue
    private int id;

    private String title;

    private Category genre;

    private String author;

    private String link;

    private int year;


    @Transient
    private static int counter = 0;

    public Book() {
        counter++;
        genre = (counter <= 33) ? Category.BestSeller : (counter <= 67) ? Category.Recent : Category.Classic;
    }

    public Book(int id, String title, String genre, String author, String link, int year) {
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public Category getGenre() {
        return genre;
    }

    public String getAuthor() {
        return author;
    }

    public String getLink() {
        return link;
    }

    public int getYear() {
        return year;
    }

}
