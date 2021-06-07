package com.voice.ohnoproduct.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.voice.ohnoproduct.entity.Book;
import com.voice.ohnoproduct.service.BookService;


@Controller
public class BookController {
	 @Autowired
     private BookService bookService;

	//購入ブックリストのget
	 @GetMapping("/cb/{id}/book")
	    public String index(@PathVariable Long id,Model model) {
	        List<Book> books = bookService.findAll();
	       // List<Customer> customers = customerService.findAll();
	        model.addAttribute("books", books); 
	       model.addAttribute("customerId", id);
	        return "book-list"; 
	    }
	 
//	//新規登録情報の保存        
//	  @PostMapping("/cb/register")
//	     public String create(@ModelAttribute Order order) { 
//	        bookService.save(order);
//	        Long id = customer.getCustomerId();
//	        
//	         return "redirect:/cb/"+id+"/";
//	     }
}
