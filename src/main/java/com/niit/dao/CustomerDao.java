package com.niit.dao;

import java.util.List;

import com.niit.model.Customer;

public interface CustomerDao {

	
	public List<Customer> getAllCustomer();
	
	public void addCustomer(Customer customer);
	
	Customer getCustomerByUsername(String username);
}
