package com.itwill.shop.cart.test;

import com.itwill.genre.test.JavaSeDataSource;
import com.itwill.shop.cart.CartDao;
import com.itwill.shop.cart.CartItemDto;

public class CartDaoTestMain {
	public static void main(String[] args) throws Exception {
		CartDao cDao = new CartDao(JavaSeDataSource.getDataSource());
		/*
		System.out.println("<<<<<<<<<< Cart >>>>>>>>>>");
		System.out.println("------ isProductExist ------");
		System.out.println(cDao.isProductExist("gin", 4));
		
		System.out.println("------ add ------");
		System.out.println(cDao.add(new CartItemDto(104, "gin", 10)));
		
		System.out.println("------ deleteCartItem ------");
		System.out.println(cDao.deleteCartItem(104));
		
		System.out.println("------ deleteCart ------");
		System.out.println(cDao.deleteCart("been"));
		
		System.out.println("------ findCartItemList ------");
		System.out.println(cDao.findCartItemList("sick"));
		*/
		System.out.println("----");
		System.out.println(cDao.findCartsWithProduct("sick"));
		
	}
	
}
