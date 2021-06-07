package com.voice.ohnoproduct.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.voice.ohnoproduct.entity.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {

	public Customer getOne(Long id);

	 @Modifying 
	    @Query(value = "DELETE FROM m_customer WHERE id = :id",nativeQuery = true) 
	    void deleteById(@Param("id") Long id); 
	

	
	 

}

 