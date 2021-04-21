package com.revature.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logoutServlet
 */
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LogoutServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		PrintWriter pw = new PrintWriter(System.out);
		System.out.println("this is redirectioh of logout page");
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		session.setAttribute("username", null);
		session.setAttribute("isManager",null); // instead of true and false
		request.getSession().invalidate();
		request.getSession().setAttribute("logoutsuccessmessage", "Hello "+username+", You have successfully logout to the Application.");
		response.sendRedirect("loginpage.jsp");
	}

}
