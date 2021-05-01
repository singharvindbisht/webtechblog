package com.tech.blog.servlet;

import java.sql.Timestamp;

public class Post {
	
	private int pid;
	private String ptitle;
	private String pcontent;
	private String pcode;
	private String pic;
	private Timestamp pdate;
	private int catid;
	
	
	public Post(int pid, String ptitle, String pcontent, String pcode, String pic, Timestamp pdate, int catid) {
		this.pid = pid;
		this.ptitle = ptitle;
		this.pcontent = pcontent;
		this.pcode = pcode;
		this.pic = pic;
		this.pdate = pdate;
		this.catid = catid;
	}


	public Post(String ptitle, String pcontent, String pcode, String pic, Timestamp pdate, int catid) {
		this.ptitle = ptitle;
		this.pcontent = pcontent;
		this.pcode = pcode;
		this.pic = pic;
		this.pdate = pdate;
		this.catid = catid;
	}


	/**
	 * @return the pid
	 */
	public int getPid() {
		return pid;
	}


	/**
	 * @param pid the pid to set
	 */
	public void setPid(int pid) {
		this.pid = pid;
	}


	/**
	 * @return the ptitle
	 */
	public String getPtitle() {
		return ptitle;
	}


	/**
	 * @param ptitle the ptitle to set
	 */
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}


	/**
	 * @return the pcontent
	 */
	public String getPcontent() {
		return pcontent;
	}


	/**
	 * @param pcontent the pcontent to set
	 */
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}


	/**
	 * @return the pcode
	 */
	public String getPcode() {
		return pcode;
	}


	/**
	 * @param pcode the pcode to set
	 */
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}


	/**
	 * @return the pic
	 */
	public String getPic() {
		return pic;
	}


	/**
	 * @param pic the pic to set
	 */
	public void setPic(String pic) {
		this.pic = pic;
	}


	/**
	 * @return the pdate
	 */
	public Timestamp getPdate() {
		return pdate;
	}


	/**
	 * @param pdate the pdate to set
	 */
	public void setPdate(Timestamp pdate) {
		this.pdate = pdate;
	}


	/**
	 * @return the catid
	 */
	public int getCatid() {
		return catid;
	}


	/**
	 * @param catid the catid to set
	 */
	public void setCatid(int catid) {
		this.catid = catid;
	}
	
}
	