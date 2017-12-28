package com.base;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BaseController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView login(){
		ModelAndView model = new ModelAndView();
		System.out.println("Inside Nayan app");

		model.setViewName("basePage");
		//model.setViewName("editor-template");
		return model;
	}

}
