package com.itwill.test;


import static org.junit.Assert.assertNotNull;

import java.util.ArrayList;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;

import com.itwill.dao.AddressDaoImpl;
import com.itwill.dto.Address;

public class AddressDaoJUnitTest {
	AddressDaoImpl addressDaoImpl;
	public static void setUpBeforeClass() throws Exception {
		
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		addressDaoImpl = new AddressDaoImpl(JavaSeDataSource.getDataSource());
	}

	@After
	public void tearDown() throws Exception {
	}
	
	@Test
	public void delete() throws Exception{
		addressDaoImpl.delete(10);
	}
	@Test
	public void insert() throws Exception{
		addressDaoImpl.create(new Address(-999, "삽입통과", "경기도부천쉬", "010-9146-4495", null));
	}
	@Test
	public void selectALL() throws Exception{
		assertNotNull(addressDaoImpl.selectAll());
	}
	@Test
	public void selectPK() throws Exception{
		assertNotNull(addressDaoImpl.selectKey(8));
	}
	/*
	@Test
	public void selectMail() throws Exception{
		assertNotNull(addressDaoImpl.selectEmailKey("1234@mail.com"));
	}*/
}
