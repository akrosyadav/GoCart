package com.niit.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.SupplierDao;
import com.niit.model.Supplier;
import com.niit.service.SupplierService;

@Service
public class SupplierServiceImpl implements SupplierService {

	@Autowired
	private SupplierDao sd;
	
	public List<Supplier> getAllSupplier() {
		return sd.getAllSupplier();
	}

	public Supplier getSupplierById(int id) {
		return sd.getSupplierById(id);
	}

	public void addSupplier(Supplier supplier) {
		sd.addSupplier(supplier);
	}
	
	public void deleteSupplier(int id) {		
		sd.deleteSupplier(id);
	}

	public Supplier getByName(String name) {
		return sd.getByName(name);
	}

	/*public void editSupplier(Supplier supplier) {
		sd.editSupplier(supplier);
	}

	*/

}
