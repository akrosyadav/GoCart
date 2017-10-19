package com.niit.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CategoryDao;
import com.niit.model.Category;
import com.niit.model.Product;

@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDao {	
	
	@Autowired
	private SessionFactory sessionFactory;

	public List<Category> getAllCategory() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Category");
		List<Category> category = query.list();
		session.close();
		return category;
		
	}

	public Category getCategoryById(int cid) {
		Session session = sessionFactory.openSession();
		Category category = (Category) session.get(Category.class, cid);
		session.close();
		return category;
		
	}

	public void addCategory(Category category) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(category);
		session.flush();
		session.close();
		
	}
	
	public void deleteCategory(int id) {
		Session session = sessionFactory.openSession();
		Category categories = (Category) session.get(Category.class, id);
		session.delete(categories);
		session.flush();
		session.close();
		
	}

	public void editCategory(Category category) {
		Session session = sessionFactory.openSession();
		session.update(category);
		session.flush();
		session.close();
		
	}

	public Category getByName(String name) {
		 String hql="from Category where description=?";
         Query query=sessionFactory.openSession().createQuery(hql);
         query.setString(0, name);
         @SuppressWarnings("unchecked")
         List<Category> listCategory=(List<Category>) query.list();
         if (listCategory != null && !listCategory.isEmpty()) {
               return listCategory.get(0);
         }
         else
         {
               return null;
         }		
	}


}
