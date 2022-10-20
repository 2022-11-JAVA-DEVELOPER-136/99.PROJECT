/**
 * 
 */
package com.itwill.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.itwill.dto.OrderDTO;

/**
 * @author STU
 *
 */
class OrderDaoTestUnit {
	OrderTestDao ordertestdao;
	/**
	 * @throws java.lang.Exception
	 */
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		
	}

	/**
	 * @throws java.lang.Exception
	 */
	@AfterAll
	static void tearDownAfterClass() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@BeforeEach
	void setUp() throws Exception {
		ordertestdao = new OrderTestDao(JavaSeDataSource.getDataSource());
	}

	/**
	 * @throws java.lang.Exception
	 */
	@AfterEach
	void tearDown() throws Exception {
	}

	
	@Test
	public void insert() throws Exception{
		assertEquals(1,ordertestdao.insertOrder(new OrderDTO(null,3,30000,"카카오페이",2,null,"9012@email.com",21)));
	}
	@Test
	public void update() throws Exception{
		assertEquals(1,ordertestdao.updateOrder(new OrderDTO(15,4,50000,"신용카드",1,null,null,null)));
	}
	@Test
	public void delete() throws Exception{
		assertEquals(1,ordertestdao.deleteOrder(8));
	}
	
	@Test
	public void selectOne() throws Exception{
		assertNotNull(ordertestdao.findOrder(21));
	}
	@Test
	public void selectALL() throws Exception{
		assertNotNull(ordertestdao.findOrderAll());
	}
	

}
