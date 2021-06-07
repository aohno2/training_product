package com.voice.ohnoproduct.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_book")
public class Book {
	 @Id // ②
	    @GeneratedValue(strategy = GenerationType.IDENTITY) // ③
	    private Long bookId;
	    private String bookName;
	    private String bookPublisher;
	    private Integer bookPrice;
	    private String bookReleaseDay;
	    

	    
	   
	 public Long getBookId() {
			return bookId;
		}




		public void setBookId(Long bookId) {
			this.bookId = bookId;
		}




		public String getBookName() {
			return bookName;
		}




		public void setBookName(String bookName) {
			this.bookName = bookName;
		}




		public String getBookPublisher() {
			return bookPublisher;
		}




		public void setBookPublisher(String bookPublisher) {
			this.bookPublisher = bookPublisher;
		}




		public Integer getBookPrice() {
			return bookPrice;
		}




		public void setBookPrice(Integer bookPrice) {
			this.bookPrice = bookPrice;
		}




		public String getBookReleaseDay() {
			return bookReleaseDay;
		}




		public void setBookReleaseDay(String bookReleaseDay) {
			this.bookReleaseDay = bookReleaseDay;
		}




	@Override
	    public String toString() {
	        return "Book [bookId=" + bookId + ", bookName=" + bookName + ", bookPublisher=" + bookPublisher
	         + ", bookPrice=" + bookPrice + ", bookReleaseDay=" + bookReleaseDay + "]";
	    }

}


