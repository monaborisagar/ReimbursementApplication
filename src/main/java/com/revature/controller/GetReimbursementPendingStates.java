package com.revature.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.revature.dao.ReimbursementDao;
import com.revature.dao.ReimbursementDaoImpl;
import com.revature.dao.UserDao;
import com.revature.dao.UserDaoImpl;
import com.revature.model.ReimbJoint;
import com.revature.model.Reimbursement;

/**
 * Servlet implementation class GetReimbursementPendingStates
 */
public class GetReimbursementPendingStates extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetReimbursementPendingStates() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println(request.getParameter("username"));
		System.out.println(request.getParameter("statusid"));
		System.out.println("server redireected wirg valhe");

		ReimbursementDao rd = new ReimbursementDaoImpl();
		UserDao userdao = new UserDaoImpl();
		ReimbursementDao reimbdao = new ReimbursementDaoImpl();
		int userid = userdao.getUserIDByUsername(request.getParameter("username"));
		System.out.println(userid);
		int statusid = Integer.parseInt(request.getParameter("statusid"));
		List<ReimbJoint> reimbList =  rd.getReimbursementDifferentStatusUserwise(userid, statusid);
        if(reimbList.size() !=0)System.out.println("Data retrived successfully");
        else System.out.println("three is no data associated with given values");
		PrintWriter pw = response.getWriter();
		ObjectMapper mapper = new ObjectMapper();
		String s = mapper.writeValueAsString(reimbList);
		System.out.println(s);
		response.setCharacterEncoding("UTF-8");
		pw.write(s);
		pw.close();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
