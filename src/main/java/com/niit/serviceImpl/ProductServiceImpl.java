package com.niit.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ProductDao;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	
	@Autowired
	private ProductDao pd;
	
	public List<Product> getAllProduct() {
		return pd.getAllProduct();
	}

	public Product getProductById(int pid) {
		return pd.getProductById(pid);
	}

	public void addProduct(Product product) {
		pd.addProduct(product);
		
	}

	public void editProduct(Product product) {
		pd.editProduct(product);	
	}

	public void deleteProduct(int pid) {
		pd.deleteProduct(pid);
	}

	

}
