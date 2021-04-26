package com.revature.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class SendMail {  
	/*
	 * public static void main(String[] args) { SendMail smb = new SendMail();
	 * boolean status =
	 * smb.sendingmail("monaborisagar@gmail.com","mona","Mona@123");
	 * System.out.println(status); }
	 */

public boolean sendingmail(String to,String username,String temppassword)
{
	//in gamil account setting please change allow less secure app to true 
	  String host="smtp.gmail.com";  
	  final String user="monaborisagar@gmail.com";//change accordingly  
	  final String password="shivakrishnaram@mona";//change accordingly  
	    
	 // String to="monaborisagar@gmail.com";//change accordingly  
	  
	   //Get the session object  
	   Properties props = new Properties();  
	   props.put("mail.smtp.host",host);  
	   props.put("mail.smtp.ssl.trust", host);

	   props.put("mail.smtp.auth", "true");  
	   props.put("mail.debug", "true");
	   props.put("mail.smtp.starttls.enable", "true");
	   props.put("mail.smtp.port", "587");
	   Session session = Session.getDefaultInstance(props,  
	    new javax.mail.Authenticator() {  
	      protected PasswordAuthentication getPasswordAuthentication() {  
	    return new PasswordAuthentication(user,password);  
	      }  
	    });  
	  
	   //Compose the message  
	    try {  
	     MimeMessage message = new MimeMessage(session);  
	     message.setFrom(new InternetAddress(user));  
	     message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
	     message.setSubject("Regarding Email and Password to logged in with Reimbursement System.");  
	     message.setText("Hello " +username+",\n\nUsername: "+username+"\n Password:"+temppassword+"\n Website link: http://localhost:8081/ReimursementSystem/loginpage.jsp \n\n\n Regards, \n Mona Borisagar \n Financial Manager \n Reimbursement System");  
	       
	    //send the message  
	     Transport.send(message);  
	     
	     System.out.println("message sent successfully...");  
	     return true;
	     } catch (MessagingException e) {
	    	 
	    	 e.printStackTrace();
	    	 return false;}
		
}

}  