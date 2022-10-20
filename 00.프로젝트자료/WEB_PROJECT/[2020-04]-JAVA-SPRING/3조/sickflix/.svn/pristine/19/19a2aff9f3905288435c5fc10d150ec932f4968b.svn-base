package com.itwill.member;

public class MemberSQL {
			//회원 추가하기
			public static final String INSERT_MEMBER =
					"insert into member values(?,?,?,?,?)";
			//회원 업데이트
			public static final String UPDATE_MEMBER =
					"update member set m_password = ?, m_name = ?, m_phone = ?, m_email = ? where m_id = ?";
			//회원 삭제하기
			public static final String DELETE_MEMBER =
					"delete from member where m_id = ?";
			//회원 1개 찾기
			public static final String FIND_MEMBER =
					"select m_password,m_name,m_phone,m_email from member where m_id = ?";
			//회원 모든 정보 찾기
			public static final String FIND_ALL_MEMBER =
					"select m_id,m_password,m_name,m_phone,m_email from member";
}
