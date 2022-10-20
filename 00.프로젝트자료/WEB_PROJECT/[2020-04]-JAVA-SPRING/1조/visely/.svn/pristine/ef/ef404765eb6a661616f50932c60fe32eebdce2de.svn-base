package com.itwill.util;

public class Calculator {
	private String stringPage;	// 현재 위치한 페이지 
	private int page;			// 현재 위치한 페이지
	private int startIdx;		// 시작 페이지 
	private int endIdx;			// 끝 번호 페이지 
	private int boardNum;	//한 페이지의 나오는 게시물 수
	
	
	
	public Calculator(String stringPage, int boardNum) {
		super();
		this.stringPage = stringPage;
		this.boardNum = boardNum;
		createIdx();
	}
	
	private void createIdx() {
		page = 1;
		if(stringPage != null){
			page = Integer.parseInt(stringPage);
		}
		
		startIdx = page == 1 ? 1 : ((page-1)*boardNum)+1; 
		
		endIdx = page * boardNum; 
		
	}
	
	public String getStringPage() {
		return stringPage;
	}
	public void setStringPage(String stringPage) {
		this.stringPage = stringPage;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getStartIdx() {
		return startIdx;
	}
	public void setStartIdx(int startIdx) {
		this.startIdx = startIdx;
	}
	public int getEndIdx() {
		return endIdx;
	}
	public void setEndIdx(int endIdx) {
		this.endIdx = endIdx;
	}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	
	
	
}
