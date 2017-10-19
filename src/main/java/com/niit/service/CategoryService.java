package com.niit.service;

import java.util.List;

import com.niit.model.Category;

public interface CategoryService {

	
	public List<Category> getAllCategory();

	public Category getCategoryById(int cid);

	public void addCategory(Category category);
	
	public void deleteCategory(int cid);

	public void editCategory(Category category);
	
	public Category getByName(String name);

}
