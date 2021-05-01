package com.tech.blog.servlet;

public class Category {
	
	private int cid;
	private String cname;
	private String description;
	
	
	public Category(int cid, String cname, String description) {
		
		this.cid = cid;
		this.cname = cname;
		this.description = description;
	}
	
	public Category() {
		
	}

	public Category(String cname, String description)
	{
		this.cname = cname;
		this.description = description;
	}

	/**
	 * @return the cid
	 */
	public int getCid() {
		return cid;
	}

	/**
	 * @param cid the cid to set
	 */
	public void setCid(int cid) {
		this.cid = cid;
	}

	/**
	 * @return the cname
	 */
	public String getCname() {
		return cname;
	}

	/**
	 * @param cname the cname to set
	 */
	public void setCname(String cname) {
		this.cname = cname;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	
}
