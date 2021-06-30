package com.voice.ohnoproduct.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.voice.ohnoproduct.entity.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {

//	public Customer getOne(Long id);
//	public Object getOne(String email);

//	 @Modifying 
//	    @Query(value = "DELETE FROM m_customer WHERE customer_id = :customerId",nativeQuery = true) 
//	    void deleteById(@Param("customerId") Long customerId); 
	 // カラム名　id id 引数
	 
	
	    
	 @Query(value = "SELECT * FROM m_customer WHERE customer_id = :customerId",nativeQuery = true)
	 public Object findOne(Long customerId);
	 
	 @Query(value = "SELECT * FROM m_customer WHERE customer_mail_address = :customerMailAddress AND customer_password = :customerPassword" ,nativeQuery = true)
	 public Customer getByEmailPass(@Param(value = "customerMailAddress")  String customerMailAddress, @Param(value = "customerPassword")  String customerPassword);
	
	
	 
	
	 
}

 