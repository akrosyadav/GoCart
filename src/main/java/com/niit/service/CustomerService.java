package com.niit.service;

import java.util.List;
import com.niit.model.Customer;

public interface CustomerService {

	public List<Customer> getAllCustomer();
	
	public void addCustomer(Customer customer);
	
	Customer getCustomerByUsername(String username);
}
