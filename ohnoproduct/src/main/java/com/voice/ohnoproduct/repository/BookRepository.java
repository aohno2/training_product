package com.voice.ohnoproduct.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.voice.ohnoproduct.entity.Book;

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {
	public Book getOne(Long id);
	
	
}
