package com.voice.ohnoproduct.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.voice.ohnoproduct.entity.Book;
import com.voice.ohnoproduct.repository.BookRepository;

@Service
public class BookService {
	@Autowired
	private BookRepository brepo;
	
	public Book save(Book book) {
		return brepo.save(book);
	}
	
	public Book findOne(Long id) {
		return brepo.getOne(id);
	}
	
	public List<Book> findAll() {
        return brepo.findAll();
    }
	
}

