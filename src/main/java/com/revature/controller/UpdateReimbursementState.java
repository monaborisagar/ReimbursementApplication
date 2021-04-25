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
import com.revature.model.ReimbJoint;

/**
 * Servlet implementation class UpdateReimbursementState
 */
public class UpdateReimbursementState extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateReimbursementState() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Update page is redirected");
		PrintWriter pw = response.getWriter();
		ReimbursementDao reimbdao = new ReimbursementDaoImpl();
		String operationid = request.getParameter("id");
		System.out.println("id is"+operationid);
		//String str = "abcd1234";
		String[] part = operationid.split("(?<=\\D)(?=\\d)");
		System.out.println(part[0]);
		System.out.println(part[1]);
		String operationname= part[0];
		int opid= Integer.parseInt(part[1]);
        System.out.println(opid+"dfvdfvsfdv   :"+operationname);
        int status = reimbdao.updateReimbStatuswithReimid(operationname, opid);
        if(status ==1) pw.write(operationname);
        else pw.write("failure");
		
		//ObjectMapper mapper = new ObjectMapper();
		//String s = mapper.writeValueAsString("success");
		//System.out.println(s);
		//response.setCharacterEncoding("UTF-8");
		//pw.write("suceess");
		pw.close();
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
