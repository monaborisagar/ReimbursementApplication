package com.revature.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.revature.dao.UserDao;
import com.revature.dao.UserDaoImpl;
import com.revature.model.User;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userdao;
	private static User user;

    public LoginServlet() {
      super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);
		//System.out.println("call comes gere");
		 //String dv= (String) request.getParameter("username");
		// System.out.println(dv);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       System.out.println("this server is redirected");
       ObjectMapper mapper = new ObjectMapper();
       User u = mapper.readValue(request.getInputStream(), User.class);
		System.out.println(u);
		
		  PrintWriter pw = response.getWriter();
		  response.setContentType("appllication/json");
		  String s = mapper.writeValueAsString(u);
		  response.setCharacterEncoding("UTF-8"); pw.write(s); pw.close();
		  System.out.println();
		  
      // if(request.getParameter("username").equalsIgnoreCase("Mona"))
       
    //   response.getWriter().write("Success Data");
		/*
		 * String username = request.getParameter("username"); String password =
		 * request.getParameter("password"); String firstname =
		 * request.getParameter("firstname"); String lastname =
		 * request.getParameter("lastname"); String email =
		 * request.getParameter("email");
		 * System.out.println(username+" "+password+" "+firstname+" "+lastname); int
		 * rolevalues = Integer.parseInt(request.getParameter("inputstate"));
		 * System.out.println(rolevalues); user = new User(username, password,
		 * firstname, lastname, email, rolevalues); userdao= new UserDaoImpl(); int
		 * userCreatedStatus = userdao.createUser(user);
		 * 
		 * if(userCreatedStatus==1) System.out.println("user created successfully");
		 * else System.out.println("user is not created successfully");
		 */
		
		
		
		
	}

}
