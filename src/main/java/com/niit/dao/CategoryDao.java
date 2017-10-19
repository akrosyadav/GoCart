package com.niit.dao;

import java.util.List;

import com.niit.model.Category;


public interface CategoryDao {

	
	public List<Category> getAllCategory();

	public Category getCategoryById(int cid);

	public void addCategory(Category category);
	
	public void deleteCategory(int cid);

	public void editCategory(Category category);

	public Category getByName(String name);
}
