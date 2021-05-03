package com.revature.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revature.dao.UserDao;
import com.revature.dao.UserDaoImpl;
import com.revature.model.User;

/**
 * Servlet implementation class EditUserServlet
 */
public class EditUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUserServlet() {
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
		System.out.println("user servlet is redirected");
		String username = request.getParameter("r_username");
		String email = request.getParameter("r_email");
		String password = request.getParameter("r_password");
		String repassword = request.getParameter("r_repassword");
		String firstname = request.getParameter("r_repassword");
		String lastname = request.getParameter("r_lastname");
		
		User user = new User();
		user.setEmail(email);
		user.setUserName(username);
		user.setPassWord(password);
		user.setFirstName(firstname);
		user.setLastName(lastname);
		user.setRoleId(1); 
		
		UserDao userdao = new UserDaoImpl();
		int userid = userdao.getUserIDByUsername(username);
	}  

}
