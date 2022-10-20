package com.itwill.dao;

public class OrderSql {
	
	//주문시퀀스, 총 제품 수량, 총금액, 결재수단, 상태[1.배송중 2.배송완료 3.취소됨], 고객이메일 , 주문일은 sysdate로 이미 디폴트
	public static String INSERT_ORDER = "Insert into Ord(oNo, oCnt, oAmount, oCharge, oSts, cEMail, aNo) " 
									+ "VALUES(ORD_ONO_SEQ.nextval, ?, ?, ?, ?, ?, ?)";
	
	
	
	
	//cEMail - 회원테이블과 FK , 배송지 정보 aNo 가 FK  [FK 값은 참조테이블의 기본키값이거나 null이어야하는데 맘대로 바꾼다? -> 불가] 
	public static String UPDATE_ORDER = "Update Ord " +
										"set oCnt =? , oAmount = ? , oCharge=? , oSts=? " +
										"Where oNo = ?";
	
	
	// 주문 테이블에 주문상태라는 속성값이 있기때문에 취소시 주문테이블의 데이터를 삭제하지 않고 속성값만 돌려야함
	public static String DELETE_ORDER = "DELETE FROM ORD WHERE ONO=?";
	
	public static String FIND_ORDER = "SELECT * FROM ORD WHERE ONO=?";
	
	public static String FIND_ORDER_ALL= "SELECT * FROM ORD";
	
	public static String FIND_ORDER_JOINALL = "SELECT O.ONO, O.OAMOUNT, to_char(O.ODATE,'MM/DD') ODATE,  "
			+ " (select x.pname from product x where x.pno = (select max(x.pno) from orddetail x where x.ono = O.ONO)) pname, "
			+ " O.ocnt, (select max(x.pno) from orddetail x where x.ono = O.ONO) pno, "
			+ " (select max(x.imgName) from productImage x where x.pno =  (select max(x.pno) from orddetail x where x.ono = O.ONO)) as imgName "
			+ " FROM ORD O WHERE O.CEMAIL = ?";
	
	
	public static String RECENTLY_ONO = "SELECT MAX(ONO) ono FROM ORD WHERE cEmail=?";
	
	public static String FIND_ORDER_COUNT = "SELECT count(*) FROM ord WHERE CEMAIL = ?";
	public static String FIND_USER_ORDER_ALLPAGING = "SELECT * FROM " + 
			"    (SELECT ROWNUM idx, s.* " + 
			"      FROM ( SELECT O.ONO, O.OAMOUNT, to_char(O.ODATE,'MM/DD') ODATE," + 
			"                  (SELECT x.pname FROM product x WHERE x.pno = (SELECT MAX(x.pno) FROM orddetail x WHERE x.ono = O.ONO )) pname, O.ocnt," + 
			"                  (SELECT MAX(x.pno) FROM orddetail x WHERE x.ono = O.ONO) pno, " + 
			"                  (SELECT MAX(x.imgName) FROM productImage x WHERE x.pno =  (SELECT MAX(x.pno) FROM orddetail x WHERE x.ono = O.ONO)) as imgName            " + 
			"            FROM ORD O WHERE O.CEMAIL = ? ORDER BY ODATE DESC) s" + 
			"    ) " + 
			"WHERE idx >= ? AND idx <= ?";
	
	public static String FIND_ORDER_ALLPAGING = "SELECT * " + 
			"FROM ( SELECT rownum idx, s.* FROM (SELECT O.ONO, O.OAMOUNT, to_char(O.ODATE,'MM/DD') ODATE, " + 
			"      (select x.pname from product x where x.pno = (select max(x.pno) from orddetail x where x.ono = O.ONO)) pname," + 
			"        O.ocnt, (select max(x.pno) from orddetail x where x.ono = O.ONO) pno, " + 
			"        (select max(x.imgName) from productImage x where x.pno =  (select max(x.pno) from orddetail x where x.ono = O.ONO)) as imgName" + 
			"FROM ORD O) s )";
	
}
