package com.voice.ohnoproduct.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.voice.ohnoproduct.entity.Customer;
import com.voice.ohnoproduct.service.CustomerService;

@RestController
public class AjaxController {
	@Autowired
    private CustomerService customerService;
	
	@GetMapping("/ajax/customer/{id}")
	public Customer getCustomerById(@PathVariable Long id, Model model) {
		 Customer customer = customerService.findOne(id);
		 
		return customer;
	}
	
}

