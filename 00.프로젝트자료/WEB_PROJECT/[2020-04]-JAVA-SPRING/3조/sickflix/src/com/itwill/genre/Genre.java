package com.itwill.genre;

public class Genre {

	private int g_no;
	private String g_name;
	
	public Genre () {
		
	}
	
	public Genre(int g_no, String g_name) {
		super();
		this.g_no = g_no;
		this.g_name = g_name;
	}
	
	public int getG_no() {
		return g_no;
	}
	
	public void setG_no(int g_no) {
		this.g_no = g_no;
	}
	
	public String getG_name() {
		return g_name;
	}
	
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	
}
