package com.revature.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.revature.model.User;
import com.revature.util.ConnectionUtil;


public class UserDaoImpl  implements UserDao{

	@Override
	public List<User> getUsers() {
		List<User> userList = new ArrayList<>();
		String sql = "SELECT * FROM USERS;";// only users
 
		// ok to use statement because we're not taking any user input
		try (Connection con = ConnectionUtil.getConnection();
				Statement s = con.createStatement();
				ResultSet rs = s.executeQuery(sql);) {
			while (rs.next()) {
				User u = new User();
				
				int userid = rs.getInt("userid");
				String username = rs.getString("username");
				String passsword = rs.getString("password");
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				String email = rs.getString("email");
				int roleid = rs.getInt("roleid");
				
				u.setUserId(userid);
				u.setUserName(username);
				u.setPassWord(passsword);
				u.setFirstName(firstname);
				u.setLastName(lastname);
				u.setEmail(email);
				u.setRoleId(roleid);
				userList.add(u);
			   System.out.println("the user listall is "+u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return userList;
		
		
	}

	@Override
	public User getUserByUsername(String usernamevalue) {
		User u = null;
		String sql = "SELECT * FROM USERS WHERE USERNAME=?;";// only users
		try (Connection con = ConnectionUtil.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);) {
			ps.setString(1, usernamevalue);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new User();
				int userid = rs.getInt("userid");
				String username = rs.getString("username");
				String passsword = rs.getString("password");
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				String email = rs.getString("email");
				int roleid = rs.getInt("roleid");
				
				u.setUserId(userid);
				u.setUserName(username);
				u.setPassWord(passsword);
				u.setFirstName(firstname);
				u.setLastName(lastname);
				u.setEmail(email);
				u.setRoleId(roleid);
				
			  
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
		
	}
	
	
	@Override
	public int getUserIDByUsername(String usernamevalue) {
		int userid =0;
		System.out.println("username ia"+usernamevalue+".");
		String sql = "SELECT USERID FROM USERS WHERE USERNAME='mona';";// only users
		try (Connection con = ConnectionUtil.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);) {
			//ps.setString(1, usernamevalue);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				userid = rs.getInt("userid");
				System.out.println("user id is "+userid);
			}
			System.out.println("we did not get userid "+userid);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userid;
		
	}
	
	
	@Override
	public int createUser(User user) {
		int usersCreated = 0;
		String sql = "INSERT INTO USERS(username, password, firstname, lastname,email,roleid) VALUES (?, ?, ?, ?,?,?)";
		
		try (Connection con = ConnectionUtil.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassWord());
			ps.setString(3, user.getFirstName());
			ps.setString(4, user.getFirstName());
			ps.setString(5, user.getEmail());
			ps.setInt(6, user.getRoleId());
			usersCreated = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return usersCreated;
	}

	@Override
	public int updateUserJointRequest(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUser(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUserById(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User getUserById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
