package com.itwill.jumun;

public class JumunSQL {

	//주문 추가하기
	public static final String INSERT_JUMUN =
			"insert into jumun values (jno_seq.nextval, ?, sysdate, ?, ?)";
	//주문 업데이트
	public static final String UPDATE_JUMUN =
			"update jumun set j_desc=?,j_date=?,j_price=?,m_id=? where j_no=?";
	//주문 삭제하기
	public static final String DELETE_JUMUN =
			"delete from jumun where j_no=?";
	//주문 1개 찾기
	public static final String FIND_MEMBER_JUMUN =
			"select j_no, j_desc, j_date, j_price from jumun where m_id=? order by j_date desc";
	//주문 모든 정보 찾기
	public static final String FIND_ALL_JUMUN =
			"select j_no, j_desc, j_date, j_price, m_id from jumun";
	//최근 주문 순으로 주문번호 찾기
	public static final String FIND_RECENT_JUMUN =
			"select j_no from jumun where m_id = ? order by j_date desc";
		
}
