package com.voice.ohnoproduct.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.voice.ohnoproduct.entity.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {

	@Query(value =  "SELECT book_id,book_name,book_publisher,book_price,book_release_day FROM t_customer_order "
			+ "INNER JOIN m_book ON m_book.book_id =t_customer_order.m_book_id AND t_customer_order.m_customer_id = :ID" , nativeQuery = true)
	List<Object[]> findCurrent (@Param("ID") Long id); 
	
	
 

 
	
	 

}