package com.itwill.dao;

import java.util.ArrayList;

import com.itwill.dto.Customer;
import com.itwill.dto.Product;

public interface CustomerDao {
	
	// 회원 가입
	public int create(Customer customer) throws Exception;
	
	// 회원 정보 수정
	public int update(Customer customer) throws Exception;
	
	// 회원 탈퇴
	public int remove(String cEmail) throws Exception;
	
	// 이메일로 회원 찾기
	public Customer findByEmail(String cEmail) throws Exception;
	
	// 이메일 찾기
	public String findEmail(String cBirth, String Tel) throws Exception;
	
	// 비밀번호 재설정(이메일로)
	public int updateByEmail(String cPassword, String cEmail) throws Exception;
	
	// 비밀번호 재설정(전화번호로)
	public int updateByTel(String cPassword, String cTel) throws Exception;
	
	// 회원 전체 보기
	public ArrayList<Customer> findAll() throws Exception;
	
	// 전화번호 병경
	public int updateTel(String cEmail, String cTel) throws Exception;
	
}