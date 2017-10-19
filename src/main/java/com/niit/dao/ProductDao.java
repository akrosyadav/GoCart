package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {

	public List<Product> getAllProduct();

	public Product getProductById(int pid);

	public void addProduct(Product product);

	public void editProduct(Product product);

	public void deleteProduct(int pid);

}
