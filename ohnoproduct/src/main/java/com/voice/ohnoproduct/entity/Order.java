package com.voice.ohnoproduct.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="t_customer_order")
public class Order {
	@EmbeddedId
	private OrderId orderId;

	public OrderId getOrderId() {
		return orderId;
	}

	public void setOrderId(OrderId orderId) {
		this.orderId = orderId;
	}
	
	public Order() {
		
	}
    
	public  Order (OrderId orderId) {
		this.orderId = orderId;
	}
}
