package com.revature.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.ZonedDateTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.revature.dao.ReimbursementDao;
import com.revature.dao.ReimbursementDaoImpl;
import com.revature.dao.UserDao;
import com.revature.dao.UserDaoImpl;
import com.revature.model.Reimbursement;

/**
 * Servlet implementation class EmployeeReimSubmit
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB
public class EmployeeReimSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String SAVE_DIRECTORY = "images";
	String filePath="";
   
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeReimSubmit() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("hello my namer is mons");

		BigDecimal amount = new BigDecimal(request.getParameter("amount"));
		int ReimTypeValue = Integer.parseInt(request.getParameter("inputstate"));
		String username = request.getParameter("usernamepass");
		System.out.println("this is my username gidded"+username);
		String description = request.getParameter("description");
		System.out.println(amount);System.out.println(ReimTypeValue);System.out.println(username);
		System.out.println(description);
		
		
		
		//Reimbursement reimb = new Reimbursement(amount,Timestamp.from(ZonedDateTime.now().toInstant()), null, description, SAVE_DIRECTORY, SAVE_DIRECTORY, 0, 0, 0, 0);
		try {

			// Gets absolute path to root directory of web app.
			String appPath = "C:\\Users\\nikun\\eclipse-workspace\\ReimursementSystem\\src\\main\\webapp\\";
			System.out.println("finding app path" + appPath);
			appPath = appPath.replace('\\', '/');

			// The directory to save uploaded file
			String fullSavePath = null;
			if (appPath.endsWith("/")) {
				fullSavePath = appPath + SAVE_DIRECTORY;
			} else {
				fullSavePath = appPath + "/" + SAVE_DIRECTORY;
				System.err.println(fullSavePath);
			}

			// Creates the save directory if it does not exists
			File fileSaveDir = new File(fullSavePath);
			if (!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
			}

			// Part list (multi files).
			for (Part part : request.getParts()) {
				String fileName = extractFileName(part);
				if (fileName != null && fileName.length() > 0) {
					 filePath = fullSavePath + "/" + fileName;
					System.out.println("Write attachment to file: " + filePath);
					// Write to file
					part.write(filePath);
				}
			}
			
			 UserDao userdao = new UserDaoImpl();
			    ReimbursementDao reimbdao = new ReimbursementDaoImpl();
			  int userid = userdao.getUserIDByUsername(username);
			  System.out.println(userid);
			  
			Reimbursement reimb = new Reimbursement();
			reimb.setReimbAmount(amount);
			reimb.setReimbSubmitted(Timestamp.from(ZonedDateTime.now().toInstant()));
			reimb.setReimbResolved(null);
			reimb.setReimbDescription(description);
			System.out.println(filePath);
			reimb.setReimbReciptURL(filePath);
			reimb.setReimbAuthor(userid);
			reimb.setReimbTypeId(ReimTypeValue);
			reimb.setReimbResolver(4);//for admin
			reimb.setReimbStatusId(1); //pending
		
			int status=reimbdao.createReimbursement(reimb);
			if(status==1)System.out.println("data in reimb is saved successfully");
			else throw new Exception("data in reimb is not saved successfully");
			request.getSession().setAttribute("ReimDataSuccess", "Reimbursement Data is saved successfully.But it is Pending state, Please wait to be approved by authority.");
			response.sendRedirect("employeereimbursement.jsp");
			// Upload successfully!.
			//request.getSession().setAttribute("uploadSuccessMessage", "")
			//response.sendRedirect("employeereimbursement.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			request.getSession().setAttribute("ReimbDataSaveError", "Data is not saved successfully.");
			response.sendRedirect("employeereimbursement.jsp");
			/*
			 * request.setAttribute("errorMessage", "Error: " + e.getMessage());
			 * RequestDispatcher dispatcher =
			 * request.getRequestDispatcher("employeereimbursement.jsp");
			 * dispatcher.forward(request, response);
			 */
		}

		//saving to databsse
		
	}

	private String extractFileName(Part part) {
		// form-data; name="file"; filename="C:\file1.zip"
		// form-data; name="file"; filename="C:\Note\file2.zip"
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				// C:\file1.zip
				// C:\Note\file2.zip
				String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
				clientFileName = clientFileName.replace("\\", "/");
				int i = clientFileName.lastIndexOf('/');
				// file1.zip
				// file2.zip
				return clientFileName.substring(i + 1);
			}
		}
		return null;
	}

	
	
	//saving to database 
	 
	
}
