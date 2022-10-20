package com.itwill.dto;

public class ProductImage {
	private int pNo;
	private String imgName;
	
	
	
	public ProductImage(int pNo, String imgName) {
		this.pNo = pNo;
		this.imgName = imgName;
	}
	
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	
	
	
}
