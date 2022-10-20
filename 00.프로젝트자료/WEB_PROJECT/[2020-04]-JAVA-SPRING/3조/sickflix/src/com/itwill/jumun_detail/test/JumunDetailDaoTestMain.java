package com.itwill.jumun_detail.test;

import com.itwill.jumun_detail.JumunDetail;
import com.itwill.jumun_detail.JumunDetailDAO;

public class JumunDetailDaoTestMain {

	public static void main(String[] args) throws Exception {
		JumunDetailDAO jdDao = new JumunDetailDAO(JavaSeDataSource.getDataSource());
		
		System.out.println("<<<<<<<<<<<<<<<  Jumun_Detail  >>>>>>>>>>>>>>>");
		System.out.println("------- create --------");
		System.out.println(jdDao.create(new JumunDetail(6004, 5000, 2)));
		
		
		System.out.println("------- update --------");
		System.out.println(jdDao.update(new JumunDetail(6004,5000, 7 )));
		
		
		System.out.println("------- remove --------");
		System.out.println(jdDao.remove(6002));
		System.out.println(jdDao.remove(6004));
		System.out.println(jdDao.remove(6005));
		
		System.out.println("------- find Jumun_Detail --------");
		System.out.println(jdDao.findJumunDetail(1001));
		
		
		System.out.println("------- find Jumun_Detail_List --------");
		System.out.println(jdDao.findJumunDetailList());
		
	}

}
