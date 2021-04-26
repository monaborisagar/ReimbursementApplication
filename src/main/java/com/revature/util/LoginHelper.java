package com.revature.util;

import javax.servlet.http.HttpServletRequest;

import com.revature.dao.UserDao;
import com.revature.dao.UserDaoImpl;
import com.revature.model.User;

public class LoginHelper {//this helper class decide user rolewise homepage
	private final String SALT_PHRASE = "theoffice";
	public String process(HttpServletRequest request) {
		User user = new User();
		String roleRedirect="loginpage";
		UserDao userDao = new UserDaoImpl();
		System.out.println("inside LoginHelper page");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		user.setUserName(username);
		user.setPassWord(password);
		
		System.out.println(password+"password");
		userDao = new UserDaoImpl();
		 User user1 =userDao.getUserByUsername(username);
		 
		 
			if(user1 == null)
			{
				return roleRedirect;
			}else
			{
				Hasher hash = new Hasher();
				String encryptedstored = user1.getPassWord();
				String saltedPassword = SALT_PHRASE + password;
				String hashedPassword = hash.generateHash(saltedPassword);
				
				if(user1.getPassWord().equalsIgnoreCase(hashedPassword))
				{
					if(user1.getRoleId()==1) //employee
					{
						roleRedirect="homepage";
					}
					if(user1.getRoleId()==2)//manager
					{
					    roleRedirect="homepage";
					}
				}
			}
			return roleRedirect;
			
				/*
			 * if(user1 == null) { return roleRedirect; }
			 * 
			 * else if(user1.getPassWord().equalsIgnoreCase(password)) {
			 * if(user1.getRoleId()==1) //employee { roleRedirect="homepage"; }
			 * if(user1.getRoleId()==2)//manager { roleRedirect="homepage"; }
			 * 
			 * }else { roleRedirect="loginpage"; } return roleRedirect;
			 */
}
}