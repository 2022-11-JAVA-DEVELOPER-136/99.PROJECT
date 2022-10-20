package com.itwill.jumun_detail.model;

public class JumunDetail {

	private int p_no;
	private int j_no;
	private int jd_quantity;

	private String s_name;
	private String p_name;
	private String j_address;
	private int j_price;
	private String j_demand;

	// constructor
	public JumunDetail() {

	}
	public JumunDetail(int p_no, int jd_quantity) {
		this.p_no = p_no;
		this.jd_quantity = jd_quantity;
	}
	
	public JumunDetail(int p_no, int j_no, int jd_quantity) {
		this.p_no = p_no;
		this.j_no = j_no;
		this.jd_quantity = jd_quantity;
	}

	public JumunDetail(int j_no, String s_name, String j_address, String p_name, int j_price, String j_demand) {
		this.j_no = j_no;
		this.s_name = s_name;
		this.j_address = j_address;
		this.p_name = p_name;
		this.j_price = j_price;
		this.j_demand = j_demand;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public int getJ_no() {
		return j_no;
	}

	public void setJ_no(int j_no) {
		this.j_no = j_no;
	}

	public int getJd_quantity() {
		return jd_quantity;
	}

	public void setJd_quantity(int jd_quantity) {
		this.jd_quantity = jd_quantity;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getJ_address() {
		return j_address;
	}

	public void setJ_address(String j_address) {
		this.j_address = j_address;
	}

	public int getJ_price() {
		return j_price;
	}

	public void setJ_price(int j_price) {
		this.j_price = j_price;
	}

	public String getJ_demand() {
		return j_demand;
	}

	public void setJ_date(String J_demand) {
		this.j_demand = j_demand;
	}

	
	
}
