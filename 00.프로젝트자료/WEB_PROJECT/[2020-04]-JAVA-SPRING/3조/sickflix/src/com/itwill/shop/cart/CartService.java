package com.itwill.shop.cart;

import java.util.ArrayList;
import java.util.HashMap;

import com.itwill.member.ExistedMemberException;

public class CartService{
	private CartDao cartDao;
	private static CartService _instance;
	
	public CartService() throws Exception{
		cartDao = new CartDao();
		System.out.println("CartService()생성자:"+this);
	}
	public static CartService getInstance() throws Exception{
		if(CartService._instance==null) {
			CartService._instance=new CartService();
		}
		return CartService._instance;
	}
	
	
	/*
	 * 카트에 아이템 이미 담겨져있는지 체크
	 */
	public boolean isProductExist(String m_id, int p_no) throws Exception{
		return isProductExist(m_id, p_no);
	}
	
	
	/*
	 * 카트생성
	 */
	public int add (CartItemDto cart) throws Exception, ExistedMemberException {
		if (cartDao.existedCart(cart.getM_id(), cart.getP_no())) {
			throw new ExistedCartException("이미 카트에 담긴 영화입니다.");
		}
		return cartDao.add(cart);
	}

	
	/*
	 * 카트아이템삭제
	 */
	public int deleteCartItem(int c_item_no) throws Exception{
		return cartDao.deleteCartItem(c_item_no);
	}
	
	
	/*
	 * 카트삭제
	 */
	public int deleteCart(String m_id) throws Exception{
		return cartDao.deleteCart(m_id);
	}
	
	
	/*
	 * 카트에 특정멤버가 추가한 것 전체 리스트
	 */
	public ArrayList<CartItemDto> findCartItemList(String m_id) throws Exception {
		return cartDao.findCartItemList(m_id);
	}
	
	
	/*
	 * 카트에 특정멤버가 추가한 것 전체 리스트 (제품정보와 조인)
	 */
	public ArrayList<HashMap> findCartsWithProduct(String m_id) throws Exception {
		return cartDao.findCartsWithProduct(m_id);
	}
	
	
	/*
	 * 카트에 특정멤버가 추가한 제품의 타이틀 전체 리스트
	 */
	public ArrayList<String> findAllPtitle(String m_id) throws Exception {
		return cartDao.findAllPtitle(m_id);
	}
	
}
