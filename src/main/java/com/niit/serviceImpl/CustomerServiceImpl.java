package com.niit.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CustomerDao;
import com.niit.model.Customer;
import com.niit.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerDao cd;

	public List<Customer> getAllCustomer() 
	{
		return cd.getAllCustomer();
	}

	public void addCustomer(Customer customer) 
	{		
		cd.addCustomer(customer);
	}

	public Customer getCustomerByUsername(String username) {
		return cd.getCustomerByUsername(username);
		
	}

}
