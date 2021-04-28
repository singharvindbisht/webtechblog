package com.tech.blog.entities;

public class User {
	
	private int id;
	private String name;
	private String email;
	private String password;
	private String gender;
	
	public User() {
		
	}
	
	public User(String name, String email, String password, String gender)
	{
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public int getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public String getGender() {
		return gender;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}


}
