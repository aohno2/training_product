package com.voice.ohnoproduct.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.voice.ohnoproduct.entity.Customer;
import com.voice.ohnoproduct.repository.CustomerRepository;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository crepo;
	
	public Customer save(Customer customer) {
		return crepo.save(customer);
	}
	
	public Customer findOne(Long id) {
		return crepo.getOne(id);
	}
	
//	public Object findOne(String pass) {
//		return crepo.getOne(pass);
//	}
	

	
	public List<Customer> findAll() {
        return crepo.findAll();
    }
	
	public void delete(Long customerId) {
		Customer customer = findOne(customerId);
        crepo.delete(customer);
        
	}
	
	public Customer getByEmailPass(String customerMailAddress, String customerPassword) {
		return crepo.getByEmailPass(customerMailAddress, customerPassword);
	}
//	 public List<Customer> innerJoin() {
//	    	List<Object[]> list = crepo.find();
//	    	
//	    	@SuppressWarnings("unchecked")
//	    	List<Customer> cusList = (List<Customer>)(List<?>)list;
//	    	
//	    	return cusList;
//	    }
}
