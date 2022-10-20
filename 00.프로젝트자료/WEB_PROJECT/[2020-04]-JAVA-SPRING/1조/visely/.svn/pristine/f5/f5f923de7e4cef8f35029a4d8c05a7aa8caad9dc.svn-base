package com.itwill.service;

import java.util.ArrayList;

import com.itwill.dto.Customer;
import com.itwill.dao.CustomerDaoImpl;
import com.itwill.exception.EmailNotFoundException;
import com.itwill.exception.ExistedException;

public class CustomerService {
	private CustomerDaoImpl customerDaoImpl;
	
	public CustomerService() throws Exception {
		customerDaoImpl = new CustomerDaoImpl();
	}
	
	/*
	 * 회원 가입
	 */
	public int create(Customer customer) throws ExistedException, Exception {
		if (customerDaoImpl.existedEmail(customer.getcEmail())) {
			throw new ExistedException(customer.getcEmail() + "은 이미존재하는 이메일입니다");
		}
		return customerDaoImpl.create(customer);
	}
	
	/*
	 * 회원 정보 수정
	 */
	public int update(Customer customer) throws Exception {
		return customerDaoImpl.update(customer);
	}
	
	/*
	 * 비밀번호 재설정(이메일로)
	 */
	public int updateByEmail(String cEmail, String cPassword) throws Exception {
		return customerDaoImpl.updateByEmail(cEmail, cPassword);
	}
	
	/*
	 * 비밀번호 재설정(전화번호로)
	 */
	public int updateByTel(String cPassword, String cTel) throws Exception {
		return customerDaoImpl.updateByTel(cPassword, cTel);
	}
	
	/*
	 * 회원 탈퇴
	 */
	public int remove(String cEmail) throws Exception {
		return customerDaoImpl.remove(cEmail);
	}
	
	/*
	 * 이메일로 회원 찾기
	 */
	public Customer findByEmail(String cEmail)throws EmailNotFoundException, Exception {
		Customer findOne = customerDaoImpl.findByEmail(cEmail);
		if(findOne == null) {
			throw new EmailNotFoundException(cEmail + "은 존재하지 않는 이메일입니다.");
		}
		return findOne;
	}
	
	/*
	 * 이메일 찾기
	 */
	public String findEmail(String cBirth, String cTel) throws Exception {
		return customerDaoImpl.findEmail(cBirth, cTel);
	}
	
	/*
	 * 회원 전체 보기
	 */
	public ArrayList<Customer> findAll() throws Exception{
		return customerDaoImpl.findAll();
	}
	
	/*
	 * 이메일 중복체크
	 */
	public boolean isDuplcateEmail(String cEmail) throws Exception{
		boolean isExist = customerDaoImpl.existedEmail(cEmail);
		if(isExist) {
			return true;
		} else {
			return false;
		}
	}
	
	/*
	 * 전화번호 병경
	 */
	public int updateTel(String cEmail, String cTel) throws Exception {
		return customerDaoImpl.updateTel(cEmail, cTel);
	}
}
