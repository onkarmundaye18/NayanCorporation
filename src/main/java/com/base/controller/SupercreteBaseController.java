package com.base.controller;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
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
	
	
	@RequestMapping(value = "/sendMailTemplate", method = RequestMethod.POST, headers="Accept=*/*",produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Map<String, Object> sendMailTemplate(@RequestParam String senderName,
			@RequestParam String senderEmailId, @RequestParam String senderMobileNumber,
			@RequestParam String senderMessage,
			HttpServletRequest request, HttpServletResponse response) {
			Map<String, Object> map = new HashMap<String, Object>();
			try {
				
				System.out.println("senderName:-"+senderName+" senderEmailId:-"+senderEmailId+" senderMobileNumber:-"+senderMobileNumber+" senderMessage:-"+senderMessage);
				Map<String, Object> mailParam = new HashMap<String, Object>();
				mailParam.put("senderName", senderName);
				mailParam.put("senderEmailId", senderEmailId);
				mailParam.put("senderMobileNumber", senderMobileNumber);
				mailParam.put("senderMessage", senderMessage);
				String result = emailservice.sendContactUsMail(mailParam);
				if(StringUtils.isBlank(result)){
					map.put("success", "false");
					map.put("msg", "An error occured while retriving your details.Please fill those again");
					//return "An error occured while retriving your details.Please fill those again";
					return map;
				}
				map.put("success", "true");
				map.put("msg", "Thank you for getting in touch with us! We will get back to you soon.");
				//return "Thank you so much for contacting with Supercrete Associates, You will get your response soon!!!";
				return map;
			} catch (Exception e) {
				System.out.println("Error occurred while saving the template - "+ e);
				map.put("success", "false");
				map.put("msg", "An error occured while retriving your details.Please fill those again");
				//return "An error occured while retriving your details.Please fill those again";
				return map;
			}
	}
	
	@RequestMapping(value = "/replyBackToVisitor", method = {RequestMethod.POST}, headers="Accept=*/*" , produces = MediaType.APPLICATION_JSON_VALUE)
	public  @ResponseBody Map<String, Object> replyBackToVisitor(String visitorName,String visitorEmailId, String visitorMobileNumber,
			String visitorMessage) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			
			System.out.println("visitorName:-"+visitorName+" visitorEmailId:-"+visitorEmailId+" visitorMobileNumber:-"+visitorMobileNumber+" visitorMessage:-"+visitorMessage);
			Map<String, Object> mailParam = new HashMap<String, Object>();
			mailParam.put("visitorName", visitorName);
			mailParam.put("visitorEmailId", visitorEmailId);
			mailParam.put("visitorMobileNumber", visitorMobileNumber);
			mailParam.put("visitorMessage", visitorMessage);
			String result = emailservice.sendVisitorsReplyEmail(mailParam);
			System.out.println("Visitor Result:- "+result);
			if(StringUtils.isBlank(result)){
				map.put("success", "false");
				map.put("msg", "An error occured while retriving your details.Please fill those again");
				return map;
			}
			map.put("success", "true");
			map.put("msg", "Thank you for getting in touch with us! We will get back to you soon.");
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", "false");
			map.put("msg", "An error occured while retriving your details.Please fill those again");
			return map;
		}

	}
}
