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
import com.itwill.dto.OrderDetailDTO;

/**
 * @author STU
 *
 */
 class OrderDetailTestUnitDao {

	OrderDetailTestDao odtd;
	
	
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
		odtd = new OrderDetailTestDao(JavaSeDataSource.getDataSource());
	}

	/**
	 * @throws java.lang.Exception
	 */
	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	public void insert() throws Exception{
		assertEquals(1,odtd.insertOrderDetail(new OrderDetailDTO(null,5,1000,25,2)));
	}
	@Test
	public void update() throws Exception{
		assertEquals(1,odtd.updateOrderDetail(new OrderDetailDTO(4,5,30000,25,3)));
	}
	@Test
	public void delete() throws Exception{
		assertEquals(1,odtd.deleteOrderDetail(3));
	}
	
	@Test
	public void selectOne() throws Exception{
		assertNotNull(odtd.findOrderDetail(4));
	}
	@Test
	public void selectALL() throws Exception{
		assertNotNull(odtd.findOrderDetailAll());
	}

}
