package org.example.repository;

import org.example.model.Book;
import org.example.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BookRepository extends JpaRepository<Book, String> {

    List<Book> findByGenre(Category genre);
}
