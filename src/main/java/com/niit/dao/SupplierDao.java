package com.niit.dao;

import java.util.List;

import com.niit.model.Supplier;

public interface SupplierDao {

	public List<Supplier> getAllSupplier();

	public Supplier getSupplierById(int id);

	public void addSupplier(Supplier supplier);
	
	public void deleteSupplier(int id);
	
	public Supplier getByName(String name);

	public void editSupplier(Supplier supplier);

	
}
