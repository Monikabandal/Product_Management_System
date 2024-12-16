package com.spring.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.model.Product;
import com.spring.repository.ProdRepository;
import com.spring.serviceI.ServiceI;

@Service
public class ServiceImp implements ServiceI {

	@Autowired
	ProdRepository pr;
	
	@Override
	public void add(Product p) {
		pr.save(p);
	}

	@Override
	public Iterable<Product> view() {
	    return pr.findAll();
	}

	@Override
	public void delete(Product p) {
		pr.delete(p);
		
	}

	@Override
	public Product edit(int id) {
		return pr.findById(id);
	}
 
	}
