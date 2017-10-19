package com.niit.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CategoryDao;
import com.niit.model.Category;
import com.niit.service.CategoryService;



@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDao cd;
	
	public List<Category> getAllCategory() {
		return cd.getAllCategory();
	}

	public Category getCategoryById(int cid) {
		return cd.getCategoryById(cid);		
	}

	public void addCategory(Category category) {
		cd.addCategory(category);
	}

	public void deleteCategory(int cid) {
		cd.deleteCategory(cid);
	}
	
	public void editCategory(Category category) {
		cd.editCategory(category);
	}

	public Category getByName(String name) {
		return cd.getByName(name);
	}

}
