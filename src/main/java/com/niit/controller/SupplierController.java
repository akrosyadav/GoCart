package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.model.Category;
import com.niit.model.Supplier;
import com.niit.service.SupplierService;


@Controller
public class SupplierController {

	@Autowired
	private SupplierService ss;
	
	@RequestMapping("/All_Supplier")
	public String getAllSuppliers(Model model)
	{
		List<Supplier> l= ss.getAllSupplier();
		model.addAttribute("supplier",l);		
		return "AllSuppliers";
	}
	
	@RequestMapping("/view_Supplier/{id}")
	public String getSupplierById(@PathVariable  int id, Model model)
	{	
		Supplier p=ss.getSupplierById(id);
		model.addAttribute("supplier",p);
		return "viewSupplier";
	}
	
	@RequestMapping("/add_Supplier")
	public String getSupplierForm(Model model)
	{
		model.addAttribute("supplier",new Supplier());
		return "addSupplier";
	}
		
	@RequestMapping(value="/insertSupplier", method = RequestMethod.POST)
    public String addSupplierDetails(@Valid @ModelAttribute("supplier") Supplier supplier, BindingResult result, HttpServletRequest request)
	{
		 if(result.hasErrors()){
	            return "redirect:/addSupplier";
	        }
		 ss.addSupplier(supplier);
			
	        return "redirect:/All_Supplier";
		}
	
	@RequestMapping("/delete_Supplier/{id}")
	public String deleteSupplier(@PathVariable int id)
	{
		ss.deleteSupplier(id);
		return "redirect:/All_Supplier";
	}
	
	
	@RequestMapping("/edit_Supplier_Form/{id}")
	public String editSupplierForm(@PathVariable int id ,Model model)
	{
		model.addAttribute("supplier1",ss.getSupplierById(id));
		return "editSupplier";
	}
	
	@RequestMapping(value="/editSupplier/{id}", method = RequestMethod.POST)
    public String editSupplierDetails(@Valid @ModelAttribute("supplier1") Supplier supplier, BindingResult result, HttpServletRequest request)
	{
 
        if(result.hasErrors()){
            return "redirect:/editSupplier";
        }
 
        ss.addSupplier(supplier);

        return "redirect:/All_Supplier";
	}
	
}
