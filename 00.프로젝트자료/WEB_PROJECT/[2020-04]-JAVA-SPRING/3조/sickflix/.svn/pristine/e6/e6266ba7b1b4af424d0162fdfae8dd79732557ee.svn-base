package com.itwill.shop.cart;

public class CartSQL {
	//카트 추가하기
	public static final String INSERT_CART =
			"INSERT INTO cart (c_item_no, m_id, p_no) VALUES (cno_seq.nextval, ?, ?)";
	//카트 삭제하기 (카트아이템 넘버로 선택)
	public static final String DELETE_CART =
			"delete from cart where c_item_no = ?";
	//카트 삭제하기 (회원아이디로 선택)
	public static final String DELETE_CART_ITEM =
			"delete from cart where m_id=?";
	//카트 모든 정보 갖고오기
	public static final String FIND_ALL_CART =
			"select c_item_no, p_no from cart where m_id=?";
	//카트 안에 특정 회원이 특정 제품을 이미 담았는지 확인하기
	public static final String FIND_ONE_CART =
	"select count(*) cnt from cart where m_id=? and p_no=?";
	//카트와 제품 조인해서 특정 멤버의 카드정보 가져오기
	public static final String FIND_ALL_CART_WITH_PRODUCT = 
			"select c.*, p.* from cart c inner join product p on c.p_no = p.p_no where c.m_id=?";
	public static final String FIND_ALL_PTITLE = 
			"select p.p_title from cart c inner join product p on c.p_no = p.p_no where c.m_id=?";
}
