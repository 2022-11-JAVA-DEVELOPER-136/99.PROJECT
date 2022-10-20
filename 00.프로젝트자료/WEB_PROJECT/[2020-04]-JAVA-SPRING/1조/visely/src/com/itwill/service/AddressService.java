package com.itwill.service;

import java.util.ArrayList;


import com.itwill.dao.AddressDaoImpl;
import com.itwill.dto.Address;

public class AddressService {
	private static AddressService _instance = null;
	AddressDaoImpl adi = null;
	
	private AddressService() throws Exception{
		adi = new AddressDaoImpl();
	}
	
	public static AddressService getInstance() throws Exception{
		if(_instance==null) {
			_instance = new AddressService();
		}
		return _instance;
	}
	//주소록 전체 반환
	public ArrayList<Address> findAllAddress() throws Exception{
		return adi.selectAll();
	}
	//주소록 중 한개 반환
	public Address findOneAddress(int aNo) throws Exception {
		return adi.selectKey(aNo);
	}
	
	//++이메일로 검색
	public Address findOneAddress(String eMail) throws Exception {
		
		return adi.selectEmailKey(eMail);
	}
	
	// 주소록 업데이트
	public int updateAddress(Address address) throws Exception {
		return adi.update(address);
	}
	// 주소록 삭제
	public int deleteAddress(int aNo) throws Exception {
		return adi.delete(aNo);
	}
	
	//Address 입력
	public int createAddress(Address address) throws Exception{
		return adi.create(address);
	}
	
	
}
