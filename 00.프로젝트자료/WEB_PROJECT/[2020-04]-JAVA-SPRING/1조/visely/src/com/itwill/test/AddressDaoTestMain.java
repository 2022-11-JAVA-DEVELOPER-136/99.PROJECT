package com.itwill.test;

import com.itwill.dao.AddressDaoImpl;
import com.itwill.dto.Address;

public class AddressDaoTestMain {

	public static void main(String[] args) throws Exception{
		AddressDaoImpl adi = new AddressDaoImpl(JavaSeDataSource.getDataSource());
		/****CREATE 테스트****/
		System.out.println(adi.create(new Address(-999, "메인통과", "경기도부천쉬", "010-9146-4495", null)));
		/****SELECT ALL테스트***/
		System.out.println(adi.selectAll());
		System.out.println("----------------------------------------------------");
		/***SELECT ONE 테스트****/
		System.out.println(adi.selectKey(15));
		/***UPDATE 테스트******/
		System.out.println(adi.update(new Address(15, "15번이니", "경기도부천쉬", "010-9146-4495", null)));
		/***DELETE 테스트*****/
		System.out.println(adi.delete(15));
	}

}
