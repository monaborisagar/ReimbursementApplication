package com.revature.dao;

import java.util.List;

import com.revature.model.User;


public interface UserDao {
	public List<User> getUsers();
	public User getUserById(String id);
	public int createUser(User user);
	public int updateUserJointRequest(User user);
	public int deleteUser(User user);
	int deleteUserById(String id);
	User getUserByUsername(String usernamevalue);
	int getUserIDByUsername(String usernamevalue);
}
