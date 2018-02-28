package com.base.controller;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.base.mail.impl.EmailService;

@Controller
public class SupercreteBaseController {
	
	@Autowired
	private EmailService emailservice;
	
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
	
	
	@RequestMapping(value = "/sendMailTemplate", method = RequestMethod.POST)
	public void sendMailTemplate(@RequestParam String senderName,
			@RequestParam String senderEmailId, @RequestParam String senderMobileNumber,
			@RequestParam String senderMessage,
			HttpServletRequest request, HttpServletResponse response) {
		boolean success = false;
		Map<String, Object> data = new HashMap<String, Object>();
		try {
			
			System.out.println("senderName:-"+senderName+" senderEmailId:-"+senderEmailId+" senderMobileNumber:-"+senderMobileNumber+" senderMessage:-"+senderMessage);
			Map<String, Object> mailParam = new HashMap<String, Object>();
			mailParam.put("senderName", senderName);
			mailParam.put("senderEmailId", senderEmailId);
			mailParam.put("senderMobileNumber", senderMobileNumber);
			mailParam.put("senderMessage", senderMessage);
			String result = emailservice.sendContactUsMail(mailParam);
			System.out.println("Email send result:- "+result);
			success = true;
		} catch (Exception e) {
			System.out.println("Error occurred while saving the template - "+ e);
		}
	}

}
