package com.niit.service;

import java.util.List;

import com.niit.model.Product;

public interface ProductService {

	public List<Product> getAllProduct();

	public Product getProductById(int pid);

	public void addProduct(Product product);

	public void editProduct(Product product);

	public void deleteProduct(int pid);

}
