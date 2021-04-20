package com.revature.util;
import java.awt.PageAttributes;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionUtil {
	private static Connection connection = null;

	private ConnectionUtil() {

	}

	public static Connection getConnection() {
		// this comment is added to check
		/*
		 * Properties p = new Properties(); InputStream input = new
		 * FileInputStream("connection.properties"); p.load(input); String url =
		 * p.getProperty("url"); System.out.println("this is the url: "+url); String
		 * username = p.getProperty("username"); String pass =
		 * p.getProperty("password"); if (connection == null || connection.isClosed()) {
		 * 
		 * connection = DriverManager.getConnection(url, username, pass); }
		 */

		Properties props = new Properties();
		try (InputStream resourceStream = Thread.currentThread().getContextClassLoader()
				.getResourceAsStream("connection.properties")) {
			props.load(resourceStream);
			String dbName = props.getProperty("dbname");
			String userName = props.getProperty("username");
			String password = props.getProperty("password");
			String hostname = props.getProperty("url");
			String port = props.getProperty("port");
			System.out.println(dbName+" "+userName+" "+password+" "+hostname+" "+port);
			String jdbcUrl = "jdbc:postgresql://" + hostname + ":" + port + "/" + dbName + "?user=" + userName
					+ "&password=" + password;
			System.out.println("hard coded");
			//String url1 = "jdbc:postgresql://database-1.cyxuqcprjao8.us-east-2.rds.amazonaws.com/reimbdb?user=reimb_user&password=MonaRushil";
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection(jdbcUrl);
             System.out.println("connecitoh successfuly");
		} catch (Exception e) {
			e.getStackTrace();
		}

		return connection;

	}
}
