package com.itwill.board.test;

import java.util.Date;

import javax.sql.DataSource;

import com.itwill.board.Board;
import com.itwill.board.BoardDao;
import com.itwill.jumun.JumunDAO;
import com.itwill.jumun.test.JavaSeDataSource;


public class BoardDaoTestMain {
	//테스트
	public static void main(String[] args) throws Exception {
		BoardDao bDao = new BoardDao(JavaSeDataSource.getDataSource());
	
		System.out.println("<<<<<<<<<< Board >>>>>>>>>>");
		System.out.println("------ create ------");
		
		Date obj = new Date();           
		java.sql.Date date = new java.sql.Date(obj.getTime());
		
		System.out.println(bDao.create(new Board(10, "諛섍컩�뒿�땲�떎", "min", "�삤�뒛�� 利먭굅�슫 湲덉슂�씪�엯�땲�떎.", date, 1, 1, 0)));
		System.out.println(bDao.create(new Board(11, "諛섍컩�뒿�땲�떎", "min", "�삤�뒛�� 利먭굅�슫 湲덉슂�씪�엯�땲�떎.", date, 1, 1, 0)));
		
		
		System.out.println("------ update ------");
		System.out.println(bDao.update(new Board(28, "2�썡7�씪 �엯�땲�떎", "sick", "�궡�씪�� �넗�슂�씪 �엯�땲�떎", date, 1, 1, 1)));
		
		
		System.out.println("------ findBoard------");
		System.out.println(bDao.findBoard(2));
		
		System.out.println("------ findBoard ------");
		System.out.println(bDao.findBoardList(1, 10));
		
		System.out.println("------ remove ------");
		System.out.println(bDao.remove(1));
		
		System.out.println("------ increaseReadCount ------");
		
		
		System.out.println("------ getBoardCount------");
		System.out.print(bDao.getBoardCount());
		
		
	}

}
