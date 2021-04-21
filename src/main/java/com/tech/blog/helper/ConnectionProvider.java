package com.tech.blog.helper;

import java.sql.*;



public class ConnectionProvider {
	
	private static Connection conn;
	private static String url = "jdbc:mysql://localhost:3306/techblog";
	private static String username = "root";
	private static String password = "mysql";
	
	public static Connection getConnection()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, password);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}

}
