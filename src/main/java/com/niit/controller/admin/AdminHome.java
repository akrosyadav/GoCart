package com.niit.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Category;
import com.niit.model.Customer;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.service.CategoryService;
import com.niit.service.CustomerService;
import com.niit.service.ProductService;
import com.niit.service.SupplierService;

@Controller
public class AdminHome 
{

	    @Autowired
	    private ProductService productService;

	    @Autowired
	    private CustomerService customerService;

	    @Autowired
	    private SupplierService supplierService;
	    
	    @Autowired
	    private CategoryService categoryService;
	    
	
	    @RequestMapping("/admin")
	    public String adminPage(){
	        return "admin";
	    }
	 
	 @RequestMapping("/admin/productInventory")
	    public String productInventory(Model model){
	        List<Product> products = productService.getAllProduct();
	        model.addAttribute("product", products);

	        return "AllProduct";
	    }

	    @RequestMapping("/admin/customer")
	    public String customerManagerment(Model model){

	        List<Customer> customers = customerService.getAllCustomer();
	        model.addAttribute("customer", customers);

	        return "AllCustomer";
	    }
	    
	    @RequestMapping("/admin/supplier")
	    public String supplerManagerment(Model model){

	        List<Supplier> suppliers = supplierService.getAllSupplier();
	        model.addAttribute("supplier", suppliers);

	        return "AllSuppliers";
	    }
	    
	    @RequestMapping("/admin/category")
	    public String categoryManagerment(Model model){

	        List<Category> category = categoryService.getAllCategory();
	        model.addAttribute("category", category);

	        return "AllCategory";
	    }

	 
	 
}
