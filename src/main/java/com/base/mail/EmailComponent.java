package com.base.mail;

import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.MailParseException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import org.springframework.ui.velocity.VelocityEngineUtils;

import com.base.model.Mail;


@Component
public class EmailComponent {


	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private VelocityEngine velocityEngine;

	/**
	 * This method will be used to send mail to recipient
	 * @param mail
	 * @param mailParams
	 */
	@Async
	public boolean sendMail(Mail mail, Map<String, Object> mailParams){
		System.out.println("sendMail method starts");
		boolean flag = true;
		MimeMessage mimeMessage = mailSender.createMimeMessage();
		String text = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, "./emailtemplate/" + mail.getTemplateName(), "UTF-8",
			mailParams);
		try{
			MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
			helper.setFrom(mail.getMailFrom());
			helper.setTo(mail.getMailTo());
			helper.setSubject(mail.getMailSubject());
			helper.setText(text, true);
			mailSender.send(mimeMessage);
		}catch(MessagingException e){
			flag = false;
			e.printStackTrace();
			throw new MailParseException(e);
		}catch(MailException e){
			flag = false;
			e.printStackTrace();
		}
		System.out.println("sendMail method ends");

		return flag;
	}

	/********************************* Getters And Setters ********************************************/

	public VelocityEngine getVelocityEngine(){
		return velocityEngine;
	}

	public void setVelocityEngine(VelocityEngine velocityEngine){
		this.velocityEngine = velocityEngine;
	}

	public JavaMailSender getMailSender(){
		return mailSender;
	}

	public void setMailSender(JavaMailSender mailSender){
		this.mailSender = mailSender;
	}

}
