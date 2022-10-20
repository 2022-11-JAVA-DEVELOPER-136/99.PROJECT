package com.itwill.jumun.test;

import com.itwill.genre.Genre;
import com.itwill.genre.test.JavaSeDataSource;
import com.itwill.jumun.Jumun;
import com.itwill.jumun.JumunDAO;

import java.text.SimpleDateFormat;
import java.util.Date;

public class JumunDaoTestMain {

	public static void main(String[] args) throws Exception {
		JumunDAO jDao = new JumunDAO(JavaSeDataSource.getDataSource());
		
		System.out.println("<<<<<<<<<< Jumun >>>>>>>>>>");
		System.out.println("------ create ------");
		Date obj = new Date();           
		java.sql.Date date = new java.sql.Date(obj.getTime());
		System.out.println(jDao.create(new Jumun(7000, "추격자 외 (1)", date, 10000, "been")));
		
		System.out.println("------ update ------");
		System.out.println(jDao.update(new Jumun(7000, "인사이드 아웃 외 (2)",date,15000, "min")));
		
		System.out.println("------ remove ------");
		System.out.println(jDao.remove(6000));
		
		System.out.println("------ findJumun ------");
		System.out.println(jDao.findJumun(1000));
		
		System.out.println("------ findJumunList ------");
		System.out.println(jDao.findJumunList());
	}

}
