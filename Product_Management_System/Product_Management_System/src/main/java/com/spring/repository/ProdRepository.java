package com.spring.repository;

import org.springframework.data.repository.CrudRepository;

import com.spring.model.Product;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface ProdRepository extends CrudRepository<Product, Integer>{
	public Product findById(int id);
}
