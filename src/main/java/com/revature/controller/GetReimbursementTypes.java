package com.revature.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.revature.dao.ReimbursementDao;
import com.revature.dao.ReimbursementDaoImpl;

/**
 * Servlet implementation class GetReimbursementTypes
 */
public class GetReimbursementTypes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ReimbursementDao reimbDao;
    public GetReimbursementTypes() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("appllication/json");
		 reimbDao = new ReimbursementDaoImpl();
		 TreeMap<Integer, String> reimbTypeList =  reimbDao.getReimbursementType();
		 
		 
		 PrintWriter pw = response.getWriter();
		 ObjectMapper mapper = new ObjectMapper();
		  String s = mapper.writeValueAsString(reimbTypeList);
		  System.out.println(s);
		  response.setCharacterEncoding("UTF-8"); pw.write(s); pw.close();
	}

}
