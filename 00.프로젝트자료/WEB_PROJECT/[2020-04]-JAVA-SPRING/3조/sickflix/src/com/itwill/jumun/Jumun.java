package com.itwill.jumun;

import java.util.Date;

public class Jumun {
	private int j_no;
	private String j_desc;
	private Date j_date;
	private int j_price;
	private String m_id;
	
	public Jumun() {
		
	}
	
	public Jumun(int j_no, String j_desc, Date j_date, int j_price, String m_id) {
		this.j_no = j_no;
		this.j_desc = j_desc;
		this.j_date = j_date;
		this.j_price = j_price;
		this.m_id = m_id;
	}

	public int getJ_no() {
		return j_no;
	}

	public void setJ_no(int j_no) {
		this.j_no = j_no;
	}

	public String getJ_desc() {
		return j_desc;
	}

	public void setJ_desc(String j_desc) {
		this.j_desc = j_desc;
	}

	public Date getJ_date() {
		return j_date;
	}

	public void setJ_date(Date j_date) {
		this.j_date = j_date;
	}

	public int getJ_price() {
		return j_price;
	}

	public void setJ_price(int j_price) {
		this.j_price = j_price;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
}
