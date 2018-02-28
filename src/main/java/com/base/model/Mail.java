/**
 * 
 */
package com.base.model;

/**
 * @author piyusha.kulkarni
 */
public class Mail {

	private String mailFrom;
	private String mailTo;
	private String mailSubject;
	private String templateName;

	public Mail(String mailFrom, String mailTo, String mailSubject, String templateName) {
		this.mailFrom = mailFrom;
		this.mailSubject = mailSubject;
		this.mailTo = mailTo;
		this.templateName = templateName;
	}

	public String getMailFrom(){
		return mailFrom;
	}

	public void setMailFrom(String mailFrom){
		this.mailFrom = mailFrom;
	}

	public String getMailTo(){
		return mailTo;
	}

	public void setMailTo(String mailTo){
		this.mailTo = mailTo;
	}

	public String getMailSubject(){
		return mailSubject;
	}

	public void setMailSubject(String mailSubject){
		this.mailSubject = mailSubject;
	}

	public String getTemplateName(){
		return templateName;
	}

	public void setTemplateName(String templateName){
		this.templateName = templateName;
	}

	@Override
	public String toString(){
		StringBuilder lBuilder = new StringBuilder();
		lBuilder.append("Mail From:- ").append(getMailFrom());
		lBuilder.append("Mail To:- ").append(getMailTo());
		lBuilder.append("Mail Subject:- ").append(getMailSubject());
		return lBuilder.toString();
	}
}
