package com.itwill.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.itwill.dao.CustomerDaoImpl;
import com.itwill.dto.Customer;


public class CustomerDaoJunitTest {
	CustomerDaoImpl customerDaoImpl;

	@Before
	public void setUpBefore() throws Exception {
		customerDaoImpl = new CustomerDaoImpl(JavaSeDataSource.getDataSource());
	}

	@Test
	public void readOne() throws Exception {
		assertNotNull(customerDaoImpl.findByEmail("1234@email.com"));
	}

	@Test
	public void readAll() throws Exception {
		assertNotNull(customerDaoImpl.findAll());
	}

	@Test
	public void create() throws Exception {
		assertEquals(1, customerDaoImpl.create(new Customer("0000@email.com", "abc12345", "18620707", "111-9898-7979", "F")));
	}

	@Test
	public void existedUser() throws Exception {
		assertTrue(customerDaoImpl.existedEmail("1234@email.com"));
	}
	
	@Test
	public void update() throws Exception {
		Customer customer = customerDaoImpl.findByEmail("9012@email.com");
		assertEquals(1, customerDaoImpl.update(new Customer("9012@email.com", "aaaa", "1994-09-27", "800-820-8820", "F")));
	}
	
	@Test
	public void remove() throws Exception {
		Customer customer = customerDaoImpl.findByEmail("0000@email.com");
		assertEquals(1, customerDaoImpl.remove("0000@email.com"));
	}

}
