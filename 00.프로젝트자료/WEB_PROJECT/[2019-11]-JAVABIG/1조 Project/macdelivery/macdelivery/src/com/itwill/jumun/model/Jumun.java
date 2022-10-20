package com.itwill.jumun.model;

public class Jumun {
	private int j_no;
	private int m_no;
	private int s_no;
	private String j_date;
	private int j_price;
	private String j_address;
	private String j_demand;
	private int j_phone;

	public Jumun() {

	}

	public Jumun(int m_no, int s_no, int j_price, String j_address, String j_demand, int j_phone) {
		this.m_no = m_no;
		this.s_no = s_no;
		this.j_price = j_price;
		this.j_address = j_address;
		this.j_demand = j_demand;
		this.j_phone=j_phone;

	}

	public Jumun(int j_no, int m_no, int s_no, String j_date, int j_price, String j_address, String j_demand,
			int j_phone) {
		this.j_no = j_no;
		this.m_no = m_no;
		this.s_no = s_no;
		this.j_date = j_date;
		this.j_price = j_price;
		this.j_address = j_address;
		this.j_demand = j_demand;

	}

	public int getJ_phone() {
		return j_phone;
	}

	public void setJ_phone(int j_phone) {
		this.j_phone = j_phone;
	}

	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

	public int getJ_no() {
		return j_no;
	}

	public void setJ_no(int j_no) {
		this.j_no = j_no;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getJ_date() {
		return j_date;
	}

	public void setJ_date(String j_date) {
		this.j_date = j_date;
	}

	public int getJ_price() {
		return j_price;
	}

	public void setJ_price(int j_price) {
		this.j_price = j_price;
	}

	public String getJ_address() {
		return j_address;
	}

	public void setJ_address(String j_address) {
		this.j_address = j_address;
	}

	public String getJ_demand() {
		return j_demand;
	}

	public void setJ_demand(String j_demand) {
		this.j_demand = j_demand;
	}

}
