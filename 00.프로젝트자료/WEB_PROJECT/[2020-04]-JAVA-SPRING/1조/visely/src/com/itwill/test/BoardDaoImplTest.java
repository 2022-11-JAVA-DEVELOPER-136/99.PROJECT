package com.itwill.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import java.util.ArrayList;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.itwill.dao.BoardDaoImpl;
import com.itwill.dto.Board;

import jdk.nashorn.internal.ir.annotations.Ignore;

class BoardDaoImplTest {
	static BoardDaoImpl boardDaoImpl;
	static Board board;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		boardDaoImpl = new BoardDaoImpl(JavaSeDataSource.getDataSource());
		board = new Board();
	}

	/*
    assertArrayEquals(a,b) : 배열 a와b가 일치함을 확인
	assertEquals(a,b) : 객체 a와b의 값이 같은지 확인
	assertSame(a,b) : 객체 a와b가 같은 객체임을 확인
	assertTrue(a) : a가 참인지 확인
	assertNotNull(a) : a객체가 null이 아님을 확인
	이외에도 다양한 단정문이 존재합니다. 
		http://junit.sourceforge.net/javadoc/org/junit/Assert.html
	 */
	@Test
	void testCreate() throws Exception {
		board = new Board(1111, "오늘은", "불백이다", null, null, 0, 1111, 1, 0);
		int rowCount = boardDaoImpl.create(board);
		assertEquals(1, rowCount);
	}
	
	@Test
	void testCreateReply() throws Exception {
		board = new Board(1112, "오늘은2", "불백이다2", null, null, 0, 1111, 2, 0);
		int rowCount = boardDaoImpl.createReply(board);
		assertEquals(1, rowCount);
	}

	@Test
	void testUpdate() throws Exception {
		assertEquals(1, boardDaoImpl.update(new Board(6, "lalala", "lalalala", null, null, 0, 1, 1, 0)));
	}

	@Test
	void testDelete() throws Exception {
		assertEquals(1, boardDaoImpl.delete(7));
	}

	@Test
	void testSelectAll() throws Exception {
		ArrayList<Board> boardList = boardDaoImpl.selectAll(1, 10);
		assertNotNull(boardList);
	}

	@Test
	void testSelectKey() throws Exception {
		Board board = boardDaoImpl.selectKey(6);
		assertNotNull(board);
	}
	
	@Test
	void testUpdateViewCNT() throws Exception {
		int count = boardDaoImpl.updateViewCNT(55);
		assertEquals(1, count);
	}
	
	

}
