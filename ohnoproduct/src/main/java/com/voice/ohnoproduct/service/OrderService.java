package com.voice.ohnoproduct.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.voice.ohnoproduct.entity.Order;
import com.voice.ohnoproduct.repository.OrderRepository;

@Service
public class OrderService {
	@Autowired
	private OrderRepository orepo;
	
	public Order save(Order order) {
		return orepo.save(order);
	}
	
	public List<Order> findAll() {
        return orepo.findAll();
    }
	
	
	
	
	public List<Object[]> findCurrent(Long customerId) {
        return orepo.findCurrent(customerId);
	}
}
