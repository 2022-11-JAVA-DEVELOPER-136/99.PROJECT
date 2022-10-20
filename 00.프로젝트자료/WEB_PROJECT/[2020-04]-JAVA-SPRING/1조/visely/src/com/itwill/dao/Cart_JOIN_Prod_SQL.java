package com.itwill.dao;

public class Cart_JOIN_Prod_SQL {
	private static String CART_JOIN_PROD = 
			"select * " +
			"from cart join product using(pno) " +
			"where cart.cemail = ?";
	
	
}
