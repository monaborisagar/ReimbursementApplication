package com.revature.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revature.dao.UserDao;
import com.revature.dao.UserDaoImpl;
import com.revature.model.User;
import com.revature.util.LoginHelper;
import com.revature.util.SessionHelper;

/**
 * Servlet implementation class LoginLogicServlet
 */
public class LoginLogicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userdao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginLogicServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("inside loginServlet");
		LoginHelper loginHelper = new LoginHelper();
		SessionHelper sessionhelper = new SessionHelper();
		String destination =loginHelper.process(request);
		
		System.out.println(destination);
		if(destination.equalsIgnoreCase("homepage"))
		{
			System.out.println("home");
			HttpSession session = request.getSession();
			session.setAttribute("username", request.getParameter("username"));
			sessionhelper.addIsManagerToSessionByEmail(request.getParameter("username"),session);
			response.sendRedirect(destination+".jsp");
		}else
		{
			System.out.println("inside");
			
			//response.sendRedirect(destination+".html");	
			request.setAttribute("error", "UserName and Password does not match.");
			//response.sendRedirect(destination+".jsp");
			 //request.getRequestDispatcher(destination+".jsp").forward(request, response);
			request.getSession().setAttribute("error1", "Amount of items ordered is too big. No more than 100 is currently available.");
			 response.sendRedirect(request.getHeader("Referer"));
		}
		
	}

}
