package com.itwill.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.itwill.dto.Address;



public interface AddressDao {
	
	int create(Address address) throws Exception;	// 주소록 생성
	
	int update(Address address) throws Exception;	// 주소록 업데이트
	
	int delete(int aNo) throws Exception;			// 주소록 삭제
	
	ArrayList<Address> selectAll() throws Exception;// 주소전체 출력
	
	Address selectKey(int aNo) throws Exception;	// 주소 하나 출력
	
	Address selectEmailKey(String email) throws Exception; //주소 email로 검색
	
	
}
