package com.bosch.project.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bosch.project.bean.Registration;
import com.bosch.project.service.LoginServices;




@Controller
@RequestMapping("loginform.html")
public class LoginController {

	
	@Autowired
	public LoginServices loginService;

	@RequestMapping(method = RequestMethod.GET)
	public String showForm(Map model) {
		Registration loginForm = new Registration();
		model.put("loginForm", loginForm);
		return "loginform";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String processForm(@Valid Registration loginForm, BindingResult result,
			Map model) {

		
		if (result.hasErrors()) {
			return "loginform";
		}
		
		/*
		String userName = "UserName";
		String password = "password";
		loginForm = (LoginForm) model.get("loginForm");
		if (!loginForm.getUserName().equals(userName)
				|| !loginForm.getPassword().equals(password)) {
			return "loginform";
		}
		*/
		boolean userExists = loginService.checkLogin(loginForm.getUsername(),loginForm.getPassword());
		if(userExists){
			model.put("loginForm", loginForm);
			return "loginsuccess";
		}else{
			result.rejectValue("userName","invaliduser");
			return "loginform";
		}

	}

}
