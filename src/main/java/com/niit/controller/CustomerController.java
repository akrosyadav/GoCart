package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.model.Customer;
import com.niit.service.CustomerService;

@Controller 
public class CustomerController {

	@Autowired
	CustomerService cs;
	
	@RequestMapping("/All_Customer")
	public String getAllCustomer(Model model)
	{
		List<Customer> l =cs.getAllCustomer();
		model.addAttribute("customer", l);
		return "AllCustomer";
	}
	
	@RequestMapping("/signup")
	public String getCustomerForm(Model model)
	{
		model.addAttribute("customer",new Customer());
		return "signup";
	}
		
	@RequestMapping(value="/add_Customer", method = RequestMethod.POST)
    public String addCustomerDetails(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, HttpServletRequest request)
	{
		 if(result.hasErrors()){
	            return "redirect:/signup";
	        }
		 cs.addCustomer(customer);
			
	        return "redirect:/All_Customer";
		}
	
}
