package com.base;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SupercreteBaseController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView login(){
		ModelAndView model = new ModelAndView();
		System.out.println("Inside Nayan app");

		model.setViewName("home");
		return model;
	}
	
	
	@RequestMapping(value = "/aboutUs", method = RequestMethod.GET)
	public ModelAndView aboutUs(){
		ModelAndView model = new ModelAndView();
		System.out.println("About us will land !!!");

		model.setViewName("aboutUs");
		return model;
	}
	
	
	@RequestMapping(value = "/technology", method = RequestMethod.GET)
	public ModelAndView technology(){
		ModelAndView model = new ModelAndView();
		System.out.println("technology will land !!!");

		model.setViewName("technology");
		return model;
	}
	
	@RequestMapping(value = "/projects", method = RequestMethod.GET)
	public ModelAndView projects(){
		ModelAndView model = new ModelAndView();
		System.out.println("projects will land !!!");

		model.setViewName("projects");
		return model;
	}
	
	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public ModelAndView contactUs(){
		ModelAndView model = new ModelAndView();
		System.out.println("Contact Us will land !!!");

		model.setViewName("contactUs");
		return model;
	}

}
