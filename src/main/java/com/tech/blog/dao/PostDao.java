package com.tech.blog.dao;
import java.sql.*;
import java.util.ArrayList;

import com.tech.blog.servlet.Category;


public class PostDao {
	
	private Connection conn;
	
	public PostDao(Connection conn) {
		this.conn = conn;
	}
	
	public ArrayList<Category>getAllCategories(){
		ArrayList<Category> list = new ArrayList<>();
		
		try {
			String query = "select * from category";
			Statement stmt = conn.createStatement();
			ResultSet res = stmt.executeQuery(query);
			while(res.next()) {
				int cid = res.getInt("cid");
				String cname = res.getString("cname");
				String description = res.getString("description");
				Category category = new Category(cid, cname, description);
				list.add(category);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	 

}
