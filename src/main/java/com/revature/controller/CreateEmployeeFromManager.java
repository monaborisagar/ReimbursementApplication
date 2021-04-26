package com.revature.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revature.dao.UserDao;
import com.revature.dao.UserDaoImpl;
import com.revature.model.User;
import com.revature.util.Hasher;
import com.revature.util.SendMail;

/**
 * Servlet implementation class CreateEmployeeFromManager
 */
public class CreateEmployeeFromManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String SALT_PHRASE = "theoffice";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateEmployeeFromManager() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		SendMail sendmail = new SendMail();
		System.out.println("create employee page redirected");
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		String firstname =request.getParameter("firstname");
		String lastname =request.getParameter("lastname");
		String email =request.getParameter("email");
		
		Hasher hash = new Hasher();
		String saltedPassword = SALT_PHRASE + password;
		String hashedPassword = hash.generateHash(saltedPassword);
		
		  User user = new User();
		  user.setUserName(username);
		  user.setPassWord(hashedPassword);
		  user.setFirstName(firstname);
		  user.setLastName(lastname);
		  user.setEmail(email);
		  user.setRoleId(1);
		  
		  UserDao userdao = new UserDaoImpl();
		int status =  userdao.createUser(user);
		if(status!=0)
		{
			System.out.println("Employee saved successfully");
			System.out.println(email+" "+username+" "+password);
			boolean emailstatus  =sendmail.sendingmail(email, username, password);
			if(emailstatus) System.out.println("email sent successfully");
			else System.out.println("there is an issue sending mai");
			request.getSession().setAttribute("registerusersuccess", "Employee with username "+username+" saved successfully with "+(emailstatus==true?"Email send":"no Email send")+".");
			response.sendRedirect("registrationemployee.jsp");
		}
		else
		{
			System.out.println("Employee is not saved successfully");	
			request.getSession().setAttribute("registeruserfailure", "Employee with username "+username+" is not saved successfully");
			response.sendRedirect("registrationemployee.jsp");
		}

		
		
	}

}
