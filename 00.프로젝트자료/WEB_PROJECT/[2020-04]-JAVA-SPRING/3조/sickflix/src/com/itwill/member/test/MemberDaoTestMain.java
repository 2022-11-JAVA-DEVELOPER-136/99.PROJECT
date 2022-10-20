package com.itwill.member.test;

import javax.sql.DataSource;

import com.itwill.genre.Genre;
import com.itwill.genre.GenreDAO;
import com.itwill.member.Member;
import com.itwill.member.MemberDAO;

public class MemberDaoTestMain {

	public static void main(String[] args) throws Exception {
		MemberDAO mDao = new MemberDAO(JavaSeDataSource.getDataSource());
		
		System.out.println("<<<<<<<<<< Member >>>>>>>>>>");
		System.out.println("------ create ------");
		System.out.println(mDao.create(new Member("Nor","north","김정은","010-5147-6832","North@naver.com")));
		
		System.out.println("------ update ------");
		System.out.println(mDao.update(new Member("Nor","nortd","김정","010-5137-6832","No5th@naver.com")));
		
		System.out.println("------ remove ------");
		System.out.println(mDao.remove("Nor"));
		
		System.out.println("------ findMember------");
		System.out.println(mDao.findMember("gin"));
		
		System.out.println("------ findMemberList ------");
		System.out.println(mDao.findMemberList());
	}

}
