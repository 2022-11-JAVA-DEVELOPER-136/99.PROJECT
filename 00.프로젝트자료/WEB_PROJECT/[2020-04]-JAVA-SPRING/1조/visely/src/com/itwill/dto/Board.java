package com.itwill.dto;

import java.util.Date;

public class Board {
	private int bNo;
	private String bTitle;
	private String bContent;
	private Date bDate;
	private String cEmail;
	private int viewCNT;
	private int groupNo;
	private int step;
	private int depth;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	public Board(int bNo, String bTitle, String bContent, Date bDate, String cEmail, int viewCNT, int groupNo, int step,
			int depth) {
		this.bNo = bNo;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bDate = bDate;
		this.cEmail = cEmail;
		this.viewCNT = viewCNT;
		this.groupNo = groupNo;
		this.step = step;
		this.depth = depth;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public Date getbDate() {
		return bDate;
	}

	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}

	public String getcEmail() {
		return cEmail;
	}

	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}

	public int getViewCNT() {
		return viewCNT;
	}

	public void setViewCNT(int viewCNT) {
		this.viewCNT = viewCNT;
	}

	public int getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
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

	@Override
	public String toString() {
		return "Board [bNo=" + bNo + ", bTitle=" + bTitle + ", bContent=" + bContent + ", bDate=" + bDate + ", cEmail="
				+ cEmail + ", viewCNT=" + viewCNT + ", groupNo=" + groupNo + ", step=" + step + ", depth=" + depth
				+ "]\n";
	}
	
	
	

	

	
}
