package com.voice.ohnoproduct.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;





@Entity
@Table(name="m_customer")
public class Customer {
	@Id // ②
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ③
    private Long customerId;
    
//	@NotEmpty(message = "基本情報：氏名を入力してください")
	private String customerName;
	
	@Pattern(regexp = "^(\\d{3}-\\d{4})?$", message = "郵便番号はXXX-XXXX(数字)の形式で入力してください")
    private String customerZipcode;
	
    private String customerAddress;
    
    @Pattern(regexp = "^(\\d{2,3}-\\d{4}-\\d{4})?$",message = "電話番号はXXX-XXXX-XXXXまたはYYY-YYYY-YYYYの形式(数字)で入力してください")
    private String customerPhoneNum;
    
    
    private String customerMailAddress;
    
    @Pattern(regexp = "^(\\d{4}-\\d{4}-\\d{4}-\\d{4})?$",message = "クレジットカード番号はXXXX-XXXX-XXXX-XXXXの形式(数字)で入力してください")
    private String customerCreditcardNum;
  
    @Size(min=8, max=16,message = "8～16文字でパスワードを入力してください")
    private String customerPassword;
    
    @Size(min=8, max=16,message = "8～16文字でパスワードを入力してください")
    private String customerPasswordCheck;

   




public Long getCustomerId() {
		return customerId;
	}






	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
	}






	public String getCustomerName() {
		return customerName;
	}






	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}






	public String getCustomerZipcode() {
		return customerZipcode;
	}






	public void setCustomerZipcode(String customerZipcode) {
		this.customerZipcode = customerZipcode;
	}






	public String getCustomerAddress() {
		return customerAddress;
	}






	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}






	public String getCustomerPhoneNum() {
		return customerPhoneNum;
	}






	public void setCustomerPhoneNum(String customerPhoneNum) {
		this.customerPhoneNum = customerPhoneNum;
	}






	public String getCustomerMailAddress() {
		return customerMailAddress;
	}






	public void setCustomerMailAddress(String customerMailAddress) {
		this.customerMailAddress = customerMailAddress;
	}






	public String getCustomerCreditcardNum() {
		return customerCreditcardNum;
	}






	public void setCustomerCreditcardNum(String customerCreditcardNum) {
		this.customerCreditcardNum = customerCreditcardNum;
	}






	public String getCustomerPassword() {
		return customerPassword;
	}






	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}






	public String getCustomerPasswordCheck() {
		return customerPasswordCheck;
	}






	public void setCustomerPasswordCheck(String customerPasswordCheck) {
		this.customerPasswordCheck = customerPasswordCheck;
	}






@Override
    public String toString() {
        return "Customer [customerId=" + customerId + ", customerName=" + customerName + ", customerZipcode=" + customerZipcode
         + ", customerAddress=" + customerAddress + ", customerPhoneNum=" + customerPhoneNum + ", customerMailAddress=" + customerMailAddress
          + ", customerCreditcardNum=" + customerCreditcardNum + ", customerPassword=" + customerPassword
           + ", customerPasswordCheck=" + customerPasswordCheck + "]";
    }











}
