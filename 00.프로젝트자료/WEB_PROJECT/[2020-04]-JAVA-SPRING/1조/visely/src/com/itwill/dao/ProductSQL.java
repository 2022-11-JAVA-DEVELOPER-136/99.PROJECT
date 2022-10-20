package com.itwill.dao;

public class ProductSQL {
	public final static String INSERT = 
			"insert into product (pNo, pName, pDesc, pPrice, pPoint, pStockQty, pUnit)"
			+ " values (Product_pNO_SEQ.nextval, ?, ?, ?, ?, ?, ?)";
	
	public final static String  UPDATE = "update product "
											+"set pName = ?, "
											+"    pDesc = ?, "
											+"    pPrice = ?, "
											+"    pStockQty = ?, "
											+"    pUnit = ?"
											+" where pNo = ?";
	
	public final static String  UPDATE_BUYCOUNT = "update product "
													+"set BUYCOUNT = BUYCOUNT + ?"
													+" where pNo = ?";
	
	public final static String DELETE = "delete from product where pNo = ? ";			
			
	
	public final static String SELECT_ALL = "select pNo, pName, pDesc, pPrice, pPoint, pStockQty, pUnit, '' imgname, buyCount from product";
	
	public final static String SELECT_KEY = "select pNo, pName, pDesc, pPrice, pPoint, pStockQty, pUnit, '' imgname, buyCount from product"
    							   + " where pNo = ?";

	
	
	public final static String IMG_INSERT = "insert into productimage (pNo, imgname)"
							        +" values (?, ?)";
	
	public final static String IMG_SELECT = "select p.pNo, p.pName, p.pDesc, p.pPrice, p.pPoint, p.pStockQty, p.pUnit, nvl(pi.imgname,'A1.jpg') imgname  "
			                              + " from product p left outer join (select pno, max(imgname) imgname from productimage group by pno) pi "
			                              + " on p.pno = pi.pno";
	
	public final static String IMG_LIST = "select pNo, imgName from productimage where pno = ?";
	
			

	public static final String PAGING_LIST = "SELECT * FROM (SELECT rownum idx, s.* FROM (SELECT * FROM product) s) WHERE idx >= ? AND idx <= ?";
	
	
	
	public static final String Select_Count(String queryString) {
		return "select COUNT(*) CNT  from product where pname like '%"+queryString+"%'";
		
	}
	
	public static final String Select_Page(String ordByCol, String queryString) {
		
		return "SELECT P.pNo, P.pName, P.pDesc, P.pPrice, P.pPoint, P.pStockQty, P.pUnit, P.imgName, P.buyCount FROM " + 
	            " (SELECT ROW_NUMBER() OVER(ORDER BY "+ordByCol+") RNUM, pi.* FROM "
	            + "(select p.pNo, p.pName, p.pDesc, p.pPrice, p.pPoint, p.pStockQty, p.pUnit, nvl(pi.imgname,'A1.jpg') imgname, p.regdate, p.buyCount " + 
	            "			                             from product p left outer join (select pno, max(imgname) imgname from productimage group by pno) pi " + 
	            "			                               on p.pno = pi.pno"
	            + "                                     where P.PNAME LIKE '%"+queryString+"%') pi"
	            + " ORDER BY "+ordByCol+") P" + 
	            " WHERE P.RNUM >= ? AND P.RNUM <= ?";
		
	}
	
	
}
