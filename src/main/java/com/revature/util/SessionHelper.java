package com.revature.util;

import javax.servlet.http.HttpSession;

import com.revature.dao.UserDao;
import com.revature.dao.UserDaoImpl;
import com.revature.model.User;


public class SessionHelper {
  
	public void addIsManagerToSessionByEmail(String username, HttpSession session) {
		UserDao userDao = new UserDaoImpl();
		User user = userDao.getUserByUsername(username);
		session.setAttribute("isManager",(user.getRoleId() == 2)?"true":"false");
	}
}
