package com.bosch.project.dao;

import java.util.List;

import com.bosch.project.bean.Product;
import com.bosch.project.bean.Registration;



public interface ProductDAO {
	
	public void insert(Product product);
	public void updateProduct(Product product);
	public void delete(Product product);
	public List<Product> view();
	public Product getProduct(long operationId);
	public boolean checkLogin(String userName,String Password);
	public void registrationInsert(Registration regis);

}
