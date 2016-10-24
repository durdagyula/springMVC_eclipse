package com.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class UserAdmissionController {
	
	@RequestMapping(value="/admissionForm.html", method = RequestMethod.GET)
	public ModelAndView getAdmissionForm() {
		
		ModelAndView model = new ModelAndView("AdmissionForm");
		
		return model;
	}
	
	@RequestMapping(value="/submitAdmissionForm.html", method = RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@ModelAttribute("user1") User user1) {
		
		//ModelAndView model = new ModelAndView("AdmissionSuccess");
		//model.addObject("message", "Details submitted by you:: Name:" + userName+ ", password: " + psw);
		
		ModelAndView model = new ModelAndView("AdmissionSuccess");
		model.addObject("headerMessage", "Spring MVC Form");
		
		return model;
	}
}
