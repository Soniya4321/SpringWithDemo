package com.bosch.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bosch.project.dao.ProductDAO;
@Service("loginService")
public class LoginServiceImpl implements LoginServices {

	 @Autowired
	 private ProductDAO productDAO;

	   public void setLoginDAO(ProductDAO productDAO) {
             this.productDAO = productDAO;
      }
     
      public boolean checkLogin(String userName, String userPassword){
             System.out.println("In Service class...Check Login");
             return productDAO.checkLogin(userName, userPassword);
      }

	

}
