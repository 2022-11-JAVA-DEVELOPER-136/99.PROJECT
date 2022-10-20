package com.itwill.dao;

public class CustomerSQL {
	
	// 회원 가입
	public static final String CREATE = "insert into customer(cEmail, cPassword, cBirth, cTel, cSex) values(?, ?, ?, ?, ?)";
	
	// 회원 정보 수정
	public static final String UPDATE = "update customer set cPassword=?, cBirth=?, cTel=?, cSex=? where cEmail=?";
	
	// 회원 탈퇴
	public static final String REMOVE = "delete from customer where cEmail=?";
	
	// 이메일로 회원 찾기
	public static final String FIND_BY_EMAIL = "select cEmail, cPassword, cBirth, cTel, cSex from customer where cEmail=?";
	
	// 이메일 찾기
	public static final String FIND_EMAIL = "select cEmail from customer where cBirth=? and cTel=?";
	
	// 비밀번호 재설정(이메일로)
	public static final String UPDATE_BY_EMAIL = "update customer set cPassword=? where cEmail=?";

	// 비밀번호 재설정(전화번호로)
	public static final String UPDATE_PASSWORD_BY_TEL = "update customer set cPassword=? where cTel=?";
	
	// 회원 전체 보기
	public static final String FIND_ALL = "select cEmail, cPassword, cBirth, cTel, cSex from customer";
	
	// 회원 존재여부 체크
	public static final String EXISTED = "select count(*) cnt from customer where cEmail=?";
	
	// 전화번호 병경
	public static final String UPDATE_TEL = "update customer set cTel=? where cEmail=?";
	
}
