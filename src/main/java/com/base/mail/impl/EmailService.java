/**
 * 
 */
package com.base.mail.impl;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.constants.Constants;
import com.base.mail.EmailComponent;
import com.base.model.Mail;

/**
 * @author piyusha.kulkarni
 */

@Service
public class EmailService {


	@Autowired
	private EmailComponent eMailComponent;

	public String sendContactUsMail(Map<String, Object> mailParam){
		System.out.println("sendContactUsMail method starts");
		String result = "";
		boolean mailSendStatus = false;
		Mail mail = new Mail(Constants.EmailConstants.MAIL_SENDER_EMAIL_ID, Constants.EmailConstants.MAIL_RECEIVER_EMAIL_ID,
			Constants.EmailConstants.VISITOR_SUBJECT, Constants.EmailTemplateName.CONTACT_US_MAIL);
		try{
			mailSendStatus = eMailComponent.sendMail(mail, mailParam);
			if(mailSendStatus){
				result = "SUCCESS";
			}else{
				result = "Failed mail send!!!";
			}
		}catch(Exception e){
			System.out.println("Error in sendContactUsMail method : " + e);
		}

		return result;
	}

}
