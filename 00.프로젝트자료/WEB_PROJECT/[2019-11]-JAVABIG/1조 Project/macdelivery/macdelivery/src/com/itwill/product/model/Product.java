package com.itwill.product.model;

public class Product {
	private int p_no;
	private String p_name;
	private int p_price;
	private int p_kcal;
	private String p_desc;
	private int p_up_no;

	public Product() {
	
	}
	public Product(int p_no, String p_name, int p_price, int p_kcal, String p_desc) {
		this.p_no = p_no;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_kcal = p_kcal;
		this.p_desc = p_desc;
	}
	
	public Product(int p_no, String p_name, int p_price, int p_kcal, String p_desc, int p_up_no) {
		this.p_no = p_no;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_kcal = p_kcal;
		this.p_desc = p_desc;
		this.p_up_no = p_up_no;
	}
	
	


	public String getP_desc() {
		return p_desc;
	}

	public void setP_desc(String p_desc) {
		this.p_desc = p_desc;
	}

	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getP_kcal() {
		return p_kcal;
	}
	public void setP_kcal(int p_kcal) {
		this.p_kcal = p_kcal;
	}
	public int getP_up_no() {
		return p_up_no;
	}
	public void setP_up_no(int p_up_no) {
		this.p_up_no = p_up_no;
	}

	@Override
	public String toString() {
		return "Product [p_no=" + p_no + ", p_name=" + p_name + ", p_price=" + p_price + ", p_kcal=" + p_kcal
				+ ", p_desc=" + p_desc + ", p_up_no=" + p_up_no + "]";
	}


	
}
