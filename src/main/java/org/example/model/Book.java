package org.example.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

@Entity
@JsonIgnoreProperties(ignoreUnknown = true)
public class Book {

    @Id
    @GeneratedValue
    private int id;

    private String title;

    private Category genre;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "author_id", referencedColumnName = "id")
    private Author author;

    @Column(name = "author_id", updatable = false, insertable = false)
    private int authorId;

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

    public Author getAuthor() {
        return author;
    }

    public int getAuthorId() {
        return authorId;
    }

    public String getLink() {
        return link;
    }

    public int getYear() {
        return year;
    }

}
