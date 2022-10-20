package com.itwill.dao;
/*
이름       널?       유형             
-------- -------- -------------- 
BNO      NOT NULL NUMBER(12)     
BTITLE            VARCHAR2(255)  
BCONTENT          VARCHAR2(4000) 
BDATE             DATE           
CEMAIL            VARCHAR2(50)   
VIEWCNT           NUMBER(10)     
GROUPNO           NUMBER(12)     
STEP              NUMBER(3)      
DEPTH             NUMBER(3)
 */

public class BoardDaoSQL {
	public static final String insertSQL = 
			"insert into board (bno, btitle, bcontent, bdate, cemail, viewcnt, groupno, step) " + 
			"values(BOARD_BNO_SEQ.nextval, ?, ?, sysdate, ?, 0, BOARD_BNO_SEQ.currval, 1)";
	public static final String insertReplySQL = 
			"insert into board (bno, btitle, bcontent, bdate, cemail, viewcnt, groupno, step) " + 
			"values(BOARD_BNO_SEQ.nextval, ?, ?, sysdate, ?, 0, ?, ?)";
	public static final String updateSQL = 
			  "update board "
			+ "set btitle = ?, bcontent = ?"
			+ "where bno = ? ";
	public static final String updateStep = "UPDATE board SET step = step + 1 WHERE step > ? AND groupno = ?";
	public static final String updateViewCNT = 
			  "update board " 
	        + "set viewcnt = viewcnt + 1 " 
		    + "where bno = ?";
	public static final String deleteSQL = "delete from board where bno = ? ";
	public static final String selectKeySQL = "select * from board where bno = ? ";
	public static final String selectAllSQL = "SELECT *  "
											+ "FROM ( SELECT rownum idx, s.* "
											+ 		 "FROM ( SELECT * "
			               							      + "FROM board " + 
			               							        "ORDER BY groupno DESC, step ASC ) s ) "
			               				    + "WHERE idx >= ? AND idx <= ?";
	public static final String countStep = "select count(*) cnt from board where groupno = ?";
	public static final String countReply = "SELECT count(*) cnt FROM board WHERE groupno = ?  AND step >= ?";
	
}
