package com.niit.daoImpl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	public List<Product> getAllProduct() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Product");
		List<Product> products = query.list();
		session.close();
		return products;
	}

	public Product getProductById(int pid) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, pid);
		session.close();
		return product;
	}

	public void addProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(product);
		session.flush();
		session.close();
	}

	
	public void editProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.update(product);
		session.flush();
		session.close();
	}

	public void deleteProduct(int pid) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, pid);
		session.delete(product);
		session.flush();
		session.close();
	}

}
