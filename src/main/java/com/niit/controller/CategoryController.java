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
import com.niit.model.Product;
import com.niit.service.CategoryService;



@Controller
public class CategoryController {

	@Autowired
	CategoryService cs;
	
	@RequestMapping("/All_Category")
	public String getAllCategory(Model model)
	{
		List<Category> l =cs.getAllCategory();
		model.addAttribute("category", l);
		return "AllCategory";
	}
	
	@RequestMapping("view_Category/{cid}")
	public String getCategoryById(@PathVariable  int cid, Model model)
	{	
		Category p=cs.getCategoryById(cid);
		model.addAttribute("category",p);
		return "viewCategory";
	}
	
	@RequestMapping("/add_Category")
	public String getCategoryForm(Model model)
	{
		model.addAttribute("category",new Category());
		return "addCategory";
	}
		
	@RequestMapping(value="/insertCategory", method = RequestMethod.POST)
    public String addCategoryDetails(@Valid @ModelAttribute("category") Category category, BindingResult result, HttpServletRequest request)
	{
		 if(result.hasErrors()){
	            return "redirect:/addCategory";
	        }
		 cs.addCategory(category);
			
	        return "redirect:/All_Category";
		}

	@RequestMapping("/delete_Category/{cid}")
	public String deleteCategory(@PathVariable int cid)
	{
		cs.deleteCategory(cid);
		return "redirect:/All_Category";
	}
	
	@RequestMapping("/edit_Category_Form/{cid}")
	public String editCategoryForm(@PathVariable int cid ,Model model)
	{
		model.addAttribute("category1",cs.getCategoryById(cid));
		return "editCategory";
	}
	
	@RequestMapping(value="/editCategory/{cid}", method = RequestMethod.POST)
    public String editCategoryDetails(@Valid @ModelAttribute("category1") Category category, BindingResult result, HttpServletRequest request)
	{
 
        if(result.hasErrors()){
            return "redirect:/editCategory";
        }
 
        cs.addCategory(category);

        return "redirect:/All_Category";
	}
	
}
