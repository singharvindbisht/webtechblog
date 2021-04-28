package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

public class UserDao {
	
	private Connection con;
	
	public UserDao(Connection con){
		this.con = con;
	}
	
	public int saveUser(User user) {
		
		try
		{
			String query = "insert into user(name, email, password, gender) values (?, ?, ?, ?)";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1, user.getName());
			stmt.setString(2, user.getEmail());
			stmt.setString(3, user.getPassword());
			stmt.setString(4,  user.getGender());
			int result = stmt.executeUpdate();
			if(result!=0)
			{
				System.out.println("query executed successfully");
			}
			else {
				System.out.println("not successfull");
			}
			
			return result;
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}
	
	
	public User getUserByEmailAndPassword(String email, String password) {
		
		try
		{
			String query = "select * from user where email=? and password=?";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1, email);
			stmt.setString(2,  password);
			ResultSet res = stmt.executeQuery();
			while(res.next()) {
				User user = new User();
				user.setName(res.getString("name"));
				user.setEmail(res.getString("email"));
				user.setGender(res.getString("gender"));
				user.setPassword(res.getString("password"));
				user.setId(res.getInt("id"));
				return user;
			}
			
			
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return null;
		
	}

}
