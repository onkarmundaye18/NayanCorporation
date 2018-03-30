package com.base.controller;

import java.awt.Image;
import java.io.File;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import com.base.constants.Constants;
import com.base.mail.impl.EmailService;

@Controller
public class SupercreteBaseController {
	
	@Autowired
	private EmailService emailservice;
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	private String contextPath;
	private Resource imgResource;
	
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
	public @ResponseBody Map<String, Object> sendMailTemplate(@RequestParam String visitorName,
			@RequestParam String visitorEmailId, @RequestParam String visitorMobileNumber,
			@RequestParam String visitorMessage,
			HttpServletRequest request, HttpServletResponse response) {
			Map<String, Object> map = new HashMap<String, Object>();
			try {
			    contextPath = request.getContextPath()+"/resources/images/Logo.PNG"; 
			    System.out.println("contextPath is :"+contextPath);
			    imgResource = resourceLoader.getResource("resources/images/Logo.PNG");
			    File img = new File(imgResource.getURI());
				System.out.println("visitorName:-"+visitorName+" visitorEmailId:-"+visitorEmailId+" visitorMobileNumber:-"+visitorMobileNumber+" visitorMessage:-"+visitorMessage+" imgResource: "+imgResource.getFilename());
				Map<String, Object> mailParam = new HashMap<String, Object>();
				Map<String, Object> mailModel = new HashMap<String, Object>();
				mailParam.put("visitorName", visitorName);
				mailParam.put("visitorEmailId", visitorEmailId);
				mailParam.put("visitorMobileNumber", visitorMobileNumber);
				mailParam.put("visitorMessage", visitorMessage);
				mailParam.put("imgResource", img);
				//Mail model object
				mailModel.put("senderEmailId", Constants.EmailConstants.MAIL_SENDER_EMAIL_ID);
				mailModel.put("receiverEmailId",Constants.EmailConstants.MAIL_RECEIVER_EMAIL_ID);
				mailModel.put("emailSubject",Constants.EmailConstants.VISITOR_SUBJECT);
				mailModel.put("emailTemplateName",Constants.EmailTemplateName.CONTACT_US_MAIL);
				String result = emailservice.composeEmail(mailParam, mailModel);
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
				System.out.println("Error occurred while saving the template - "+ e);
				map.put("success", "false");
				map.put("msg", "An error occured while retriving your details.Please fill those again");
				return map;
			}
	}
	
	@RequestMapping(value = "/replyBackToVisitor", method = {RequestMethod.POST}, headers="Accept=*/*" , produces = MediaType.APPLICATION_JSON_VALUE)
	public  @ResponseBody Map<String, Object> replyBackToVisitor(@RequestParam String visitorName,
			@RequestParam String visitorEmailId, @RequestParam String visitorMobileNumber,
			@RequestParam String visitorMessage,
			HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			
			System.out.println("visitorName:-"+visitorName+" visitorEmailId:-"+visitorEmailId+" visitorMobileNumber:-"+visitorMobileNumber+" visitorMessage:-"+visitorMessage);
			Map<String, Object> mailParam = new HashMap<String, Object>();
			Map<String, Object> mailModel = new HashMap<String, Object>();
			mailParam.put("visitorName", visitorName);
			mailParam.put("visitorEmailId", visitorEmailId);
			mailParam.put("visitorMobileNumber", visitorMobileNumber);
			mailParam.put("visitorMessage", visitorMessage);
			//Mail model object
			mailModel.put("senderEmailId", Constants.EmailConstants.MAIL_SENDER_EMAIL_ID);
			mailModel.put("receiverEmailId",visitorEmailId);
			mailModel.put("emailSubject",Constants.EmailConstants.VISITOR_REPLY_SUBJECT);
			mailModel.put("emailTemplateName",Constants.EmailTemplateName.VISITORS_REPLY_MAIL);
			String result = emailservice.composeEmail(mailParam, mailModel);
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
