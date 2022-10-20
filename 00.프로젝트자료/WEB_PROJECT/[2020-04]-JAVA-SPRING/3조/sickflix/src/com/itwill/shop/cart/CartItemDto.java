package com.itwill.shop.cart;

public class CartItemDto {
	private int c_item_no;	//카트 아이템 번호
	private String m_id;	//회원 아이디
	private int p_no;		//제품 번호
	
	public CartItemDto() {

	}

	public CartItemDto(int c_item_no, String m_id, int p_no) {
		this.c_item_no = c_item_no;
		this.m_id = m_id;
		this.p_no = p_no;
	}

	public int getC_item_no() {
		return c_item_no;
	}

	public void setC_item_no(int c_item_no) {
		this.c_item_no = c_item_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	
	
	
}
