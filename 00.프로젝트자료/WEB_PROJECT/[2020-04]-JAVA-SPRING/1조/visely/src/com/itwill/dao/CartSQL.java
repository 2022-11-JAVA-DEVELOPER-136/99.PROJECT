package com.itwill.dao;

public class CartSQL {
	public final static String CART_INSERT = 
			"insert into cart (cNo, cQty, cPrice, pNo, cEmail) values (Cart_cNo_SEQ.NEXTVAL, ?, ?, ?, ?)";
	
	public final static String CART_UPDATE =
			"update cart set cQty=?, cPrice=?, pNo=?, cEmail=? where cNo=? ";
	
	public final static String CART_DELETE_CNO =
			"delete from cart where cNo =?";
	
	public final static String CART_DELETE_CEMAIL =
			"delete from cart where cEmail =?";
	
	public final static String CART_SELECT_cNo =
			"select cNo, cQty, cPrice, pNo, cEmail  from cart where cNo = ?";
	
	public final static String CART_SELECT_CEMAIL = 
			"select cNo, cQty, cPrice, pNo, cEmail from cart where cEmail = ?";
	
	public final static String CART_SELCT_ALL = 
			"select cNo, cQty, cPrice, pNo, cEmail from cart";
	
	public final static String CART_ISDUPLICATE = 
			"select cNo as count from cart where pNo = ? and cEmail = ?";
	
	public final static String CART_SELECT_JOIN =
			"select c.cNo, p.pName, p.pDesc, c.cQty, c.cPrice, p.pPrice, p.pNo, "
			+ " (select max(x.imgName) from productImage x where x.pno =  c.pNo) as imgName  "
			+ " from cart c join product p on c.pNo = p.pNO where cEmail=?";
	
	public final static String CART_SUM_AMT =
			"select sum(cPrice) samt from cart where cEmail = ?";
	
}
