package com.voice.ohnoproduct.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_customer")
public class Customer {
	@Id // ②
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ③
    private Long customerId;
    private String customerName;
    private String customerZipcode;
    private String customerAddress;
    private String customerPhoneNum;
    private String customerMailAddress;
    private String customerCreditcardNum;
    private String customerPassword;
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
