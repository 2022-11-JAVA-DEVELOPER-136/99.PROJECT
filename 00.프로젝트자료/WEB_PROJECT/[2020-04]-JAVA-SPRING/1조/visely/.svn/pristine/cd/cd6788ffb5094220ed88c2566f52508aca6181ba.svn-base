package com.itwill.test;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class OrderDetailJunsuTest {
	static OrderDetailTestDao odtd;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		odtd = new OrderDetailTestDao(JavaSeDataSource.getDataSource());
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
	}
	
	@Test
	public void selectionJoin() throws Exception{
		assertNotNull(odtd.selectionJoin(10));
	}

}
