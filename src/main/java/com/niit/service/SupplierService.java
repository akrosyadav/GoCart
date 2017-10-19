package com.niit.service;

import java.util.List;

import com.niit.model.Supplier;

public interface SupplierService {

	
	public List<Supplier> getAllSupplier();

	public Supplier getSupplierById(int id);

	public void addSupplier(Supplier supplier);
	
	public void deleteSupplier(int id);
	
	public Supplier getByName(String name);

	/*public void editSupplier(Supplier supplier);

	public void deleteSupplier(int id);*/
}
