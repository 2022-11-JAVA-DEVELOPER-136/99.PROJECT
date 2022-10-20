package com.itwill.jumun_detail;

public class JumunDetailSQL {

			//주문상세 추가하기
			public static final String INSERT_JUMUNDETAIL =
					"insert into jumun_detail values (jdno_seq.nextval, ?, ?)";
			//주문상세 업데이트
			public static final String UPDATE_JUMUNDETAIL =
					"update jumun_detail set j_no=?, p_no=? where jd_no=?";
			//주문상세 삭제
			public static final String DELETE_JUMUNDETAIL =
					"delete from jumun_detail where jd_no=?";
			//주문상세 한 개 찾기
			public static final String FIND_JUMUNDETIAL =
					"select j_no, p_no from jumun_detail where jd_no=?";
			//특정 주문의 주문상세 찾기
			public static final String FIND_DETAIL_BY_JUMUN =
					"select jd_no, p_no from jumun_detail where j_no=?";
}
