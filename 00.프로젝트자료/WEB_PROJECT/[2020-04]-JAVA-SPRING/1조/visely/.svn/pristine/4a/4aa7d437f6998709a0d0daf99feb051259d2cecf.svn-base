package com.itwill.dao;

public class OrderDetailSql {
	
	//주문상세 시퀀스 ORDDETAIL_ODNO_SEQ 주문상세번호 , 제품별수량, 가격, 주문번호(FK), 제품번호(FK)
	public static String INSERT_ORDERDETAIL = "INSERT INTO ORDDETAIL(ODNO,ODQTY,ODPRICE,ONO,PNO) "+
					       "VALUES(ORDDETAIL_ODNO_SEQ.NEXTVAL, ?, ?, ?, ?)";
	
	
	//주문 상세에서 제품번호(PNO = FK)와 주문번호(ONO = FK) 임으로 멋대로 변경 불가.
	public static String UPDATE_ORDER = "UPDATE ORDDETAIL " +
				            "SET ODQTY=? ,ODPRICE= ?" +
				            "WHERE ODNO = ?";
	
	//잘생각해보니 주문에 주문 상태컬럼이 "취소됨" 이라는 상태값이 있기에 사실상 DELETE는 사용하면 안됨.
	public static String DELETE_ORDER = "DELETE FROM ORDDETAIL WHERE ODNO=?";
	
	
	public static String FIND_ORDER = "SELECT * FROM ORDDETAIL WHERE ODNO=?";
	
	public static String FIND_ORDERDETAIL_ALL= "SELECT * FROM ORDDETAIL";
	
	public static String FIND_ORDER_RESULT = "SELECT * FROM ORD JOIN ORDDETAIL ON ord.ono = orddetail.ono JOIN PRODUCT ON product.pno = orddetail.pno WHERE ord.ono = ?";
	
	public static String FIND_ORDER_DETAIL_JOIN = "SELECT ord.ono ONO, TO_CHAR(ord.odate,'MM/DD') ODATE, product.pname PNAME, product.pprice PRICE, orddetail.odqty ODQTY, ord.oamount OAMOUNT, ord.ocharge OCHARGE, address.ano ANO, address.aname ANAME, address.address ADDRESS, address.aphone APHONE, AMEMO, (select max(x.imgName) from productImage x where x.pno =  PRODUCT.pno) as imgName FROM ORD JOIN ORDDETAIL ON ord.ono = orddetail.ono JOIN PRODUCT ON orddetail.pno = product.pno JOIN ADDRESS ON ADDRESS.ano = ORD.ano WHERE ord.ono = ?";
	
	
}
