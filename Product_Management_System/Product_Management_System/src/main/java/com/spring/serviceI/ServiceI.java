package com.spring.serviceI;

import com.spring.model.Product;

public interface ServiceI {
	void add(Product p);
	Iterable<Product> view();
	void delete(Product p);
	Product edit(int id);
}
