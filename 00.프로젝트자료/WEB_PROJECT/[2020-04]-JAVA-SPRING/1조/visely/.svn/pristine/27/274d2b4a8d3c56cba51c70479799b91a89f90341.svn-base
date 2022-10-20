package com.itwill.test;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.apache.tomcat.jdbc.pool.PoolProperties;

public class JavaSeDataSource {
	/**************************************
	1. JAVA SE환경에서 Dao를 테스트하기위한코드
	2. tomcat-juli-9.0.0.M8.jar를 WEB-INF/lib에위치시킨후 테스트
	***************************************/
	public static DataSource getDataSource() {
		PoolProperties p = new PoolProperties();
		p.setUrl("jdbc:oracle:thin:@pjk7777.iptime.org:1521/orcl");
		p.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		p.setUsername("jshan");
		p.setPassword("jshan12!@");
		DataSource datasource = new DataSource();
		datasource.setPoolProperties(p);
		return datasource;
	}
	/**********************************************/
}
