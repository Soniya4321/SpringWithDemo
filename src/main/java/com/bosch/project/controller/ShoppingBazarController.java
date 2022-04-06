package com.bosch.project.controller;

import java.io.IOException;
import java.sql.Blob;
import java.util.Map;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bosch.project.bean.Product;
import com.bosch.project.bean.Registration;
import com.bosch.project.dao.ProductDAO;

@Controller
@RequestMapping("login.jsp")
public class ShoppingBazarController {
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(
			@ModelAttribute("product") Product product,
			@RequestParam("file") MultipartFile file) {
		
		
		System.out.println("Name:" + product.getProductName());
		System.out.println("Desc:" + product.getProductId());
		System.out.println("getName:" + file.getName());
		System.out.println("getItemCategories:" + product.getItemCategories());
		System.out.println("getPrice:" + product.getPrice());
		System.out.println("getQuantity:" + product.getQuantity());
		System.out.println("getSize:" + product.getSize());
		System.out.println("ContentType:" + file.getContentType());
		System.out.println("getImage:" + file.getContentType());
		
	
		
		try {
			product.setImage(file.getBytes());
			productDAO.insert(product);
		} catch(Exception e) {
			e.printStackTrace();
		}
		/*String returnStr ="";
		if(userType == "Admin"){
			returnStr = "redirect:/admin.html";
		}
		else{
			returnStr = "redirect:/admin.html";
		}
		return "redirect:/home.jsp";*/
		return null;
	}
	
	  /*It saves object into database. The @ModelAttribute puts request data 
     *  into model object. You need to mention RequestMethod.POST method  
     *  because default request is GET*/  
    @RequestMapping(value="/registerProcess",method = RequestMethod.POST)  
    public ModelAndView save(@ModelAttribute("registration") Registration registration){  
    	System.out.println("inside registerProcess");
    	productDAO.registrationInsert(registration);  
        return new ModelAndView("redirect:/home");//will redirect to viewemp request mapping  
    }  
}
