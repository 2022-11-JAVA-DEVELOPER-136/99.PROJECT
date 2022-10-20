﻿package com.itwill.board;

import java.sql.Date;

public class Board {
	
	
	private int b_no;
	private String b_title;
	private String m_id;
	private String b_content;
	private Date b_date;
	private int b_readcount;
	//글의 논리적인 순서번호를 관리하기 위한 필드 (3개)
	private int groupno;
	private int step;
	private int depth;
	
	public Board() {
		
	}
	
	
	public Board(int b_no, String b_title, String m_id, String b_content, Date b_date, int b_readcount, int groupno, int step) {
		this.b_no = b_no;
		this.b_title = b_title;
		this.m_id = m_id;
		this.b_content = b_content;
		this.b_date = b_date;
		this.b_readcount = b_readcount;
		this.groupno = groupno;
		this.step = step;
	}


	public int getB_no() {
		return b_no;
	}


	public void setB_no(int b_no) {
		this.b_no = b_no;
	}


	public String getB_title() {
		return b_title;
	}


	public void setB_title(String b_title) {
		this.b_title = b_title;
	}


	public String getM_id() {
		return m_id;
	}


	public void setM_id(String m_id) {
		this.m_id = m_id;
	}


	public String getB_content() {
		return b_content;
	}


	public void setB_content(String b_content) {
		this.b_content = b_content;
	}


	public Date getB_date() {
		return b_date;
	}


	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}


	public int getB_readcount() {
		return b_readcount;
	}


	public void setB_readcount(int b_readcount) {
		this.b_readcount = b_readcount;
	}


	public int getGroupno() {
		return groupno;
	}


	public void setGroupno(int groupno) {
		this.groupno = groupno;
	}


	public int getStep() {
		return step;
	}


	public void setStep(int step) {
		this.step = step;
	}


	public int getDepth() {
		return depth;
	}


	public void setDepth(int depth) {
		this.depth = depth;
	}

}
