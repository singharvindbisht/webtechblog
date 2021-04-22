package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

}
