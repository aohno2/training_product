package com.voice.ohnoproduct.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class OrderId implements Serializable{
	private Long mCustomerId;
	private Long mBookId;
	
	public OrderId(Long mCustomerId, Long mBookId) {
		this.mCustomerId = mCustomerId;
		this.mBookId = mBookId;
	}
	public OrderId () {
		
	}
}
