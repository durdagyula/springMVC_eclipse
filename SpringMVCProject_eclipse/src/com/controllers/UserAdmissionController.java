package com.controllers;

import java.util.ArrayList;
import java.util.List;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.model.User;
//import com.service.UserManager;

@Controller
@EnableWebMvc
public class UserAdmissionController {
	
	//@Autowired
	//private UserManager userManager;
	private List<User> users = new ArrayList<>();
	
	@RequestMapping(value="/admissionForm.html", method = RequestMethod.GET)
	public ModelAndView getAdmissionForm() {
		
		ModelAndView model = new ModelAndView("AdmissionForm");
		
		return model;
	}
	
	@RequestMapping(value="/submitAdmissionForm.html", method = RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@ModelAttribute("user1") User user1) {
		
		ModelAndView model = new ModelAndView("AdmissionSuccess");
		model.addObject("headerMessage", "Spring MVC");
		
		addUser(user1);
		
		return model;
	}
	
	@RequestMapping(value="/admin.html", method = RequestMethod.GET)
	public ModelAndView getUserList() {
		
		ModelAndView model = new ModelAndView("Admin");
		
		List<User> ulist = getUsers();
		
		model.addObject("ulist", ulist);
		
		return model;
	}
	
	public void addUser(User user) {
        users.add(user);
    }
	
	public List<User> getUsers() {		
        return users;
    }
}
