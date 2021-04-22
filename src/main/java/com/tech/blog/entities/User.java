package com.tech.blog.entities;

public class User {
	
	private int id;
	private String name;
	private String email;
	private String password;
	private String gender;
	
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

	public String getPassword() {
		return password;
	}

	public String getGender() {
		return gender;
	}


}
