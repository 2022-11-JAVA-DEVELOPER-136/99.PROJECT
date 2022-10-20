package com.itwill.service;

import java.util.ArrayList;
import java.util.Map;

import com.itwill.dao.CartDaoImpl;
import com.itwill.dao.ProductDaoImpl;
import com.itwill.dto.Cart;
import com.itwill.dto.Product;

public class CartService {	
	CartDaoImpl cartDaoImpl = null;
	private static CartService _getInstance=null;
	
	private CartService() throws Exception {
		cartDaoImpl = new CartDaoImpl();		
	}
	
	public static CartService getInstance() throws Exception{
		if(CartService._getInstance==null) {
			_getInstance = new CartService();
		}
		return _getInstance;
	}		
	
	public int create(Cart cart) throws Exception{
		int cNo = cartDaoImpl.isDuplicate(cart.getcEmail(), cart.getpNo());
		if(cNo==0) {
			return cartDaoImpl.create(cart);			
		}else {		
			Cart bfCart = cartDaoImpl.selectKey(cNo);
			bfCart.setcQty(bfCart.getcQty()+cart.getcQty());
			bfCart.setcPrice(bfCart.getcPrice()+cart.getcPrice());
			return cartDaoImpl.update(bfCart);		
		}
	}
	/* 2020-02-28 한종석
	 *  반환값을 합계금액으로 처리
	 *  
	 * */
	public int update(Cart cart) throws Exception {
		if(cart.getcQty()<=0 || cart.getcPrice()<=0) {
			return 0;
		}
		int rn = cartDaoImpl.update(cart);	
		
		return cartDaoImpl.sumAmt(cart.getcEmail());
	}
	
	public int delete(int cNo) throws Exception {
		return cartDaoImpl.delete(cNo);
	}
	
	public int delete(String cEmail) throws Exception{
		return cartDaoImpl.delete(cEmail);
	}
	
	public ArrayList<Cart> selectKey(String cEmail) throws Exception {
		return cartDaoImpl.selectKey(cEmail);
	}
	
	public Cart selectKey(int cNo) throws Exception {
		return cartDaoImpl.selectKey(cNo);
	}
	
	public ArrayList<Map> selectJoin(String cEmail) throws Exception{
		return cartDaoImpl.selectJoin(cEmail);
	}
	
	
	
}
