package com.itwill.service;

import java.util.ArrayList;


import com.itwill.dao.BoardDaoImpl;
import com.itwill.dto.Board;
import com.itwill.exception.BoardException;


public class BoardService {
	private static BoardService _getInstance;
	private BoardDaoImpl boardDaoImpl;
	
	private BoardService() {
		boardDaoImpl = new BoardDaoImpl();
	}
	
	public static BoardService getInstance() {
		if(BoardService._getInstance==null) {
			_getInstance = new BoardService();
		}
		return _getInstance;
	}
	
	
	//페이징하여 보여줄 리스트화면 메소드
	public ArrayList<Board> selectAll(int start, int last) throws Exception {
		ArrayList<Board> boardList = null;
		
		boardList = boardDaoImpl.selectAll(start, last);
		return boardList;
	}
	
	//게시글 상세보기 메소드(조회수 같이 올려줌)
	public Board lookupBoard(int bNo) throws Exception {
		Board selectBoard = null;
		
		selectBoard = boardDaoImpl.selectKey(bNo);
		if(selectBoard!=null) {
			boardDaoImpl.updateViewCNT(bNo);
		}
		return selectBoard;
	}
	
	//하나의 게시글을 가져오는 메소드(조회수 파괴)
	public Board selectOne(int bNo) throws Exception {
		Board selectBoard = null;
		
		selectBoard = boardDaoImpl.selectKey(bNo);
		return selectBoard;
	}
	
	//새로운 원글생성
	public int create(Board board) throws Exception {
		int rowCount = -999;
		
		rowCount = boardDaoImpl.create(board);
		return rowCount;
	}
	
	/*
	//답글생성
	public int creatReply(Board board) throws Exception {
		int rowCount = -999;
		
		rowCount = boardDaoImpl.createReply(board);
		return rowCount;
	}
	*/
	
	public int createReply(Board board) throws Exception{
		return boardDaoImpl.createReply(board);
	}
	
	
	
	//수정하기
	public int update(Board board) throws Exception {
		int rowCount = -999;
		
		rowCount = boardDaoImpl.update(board);
		return rowCount;
	}
	
	/*
	//삭제하기
	public int delete(int bNo) throws Exception {
		//Board tempBoard = boardDaoImpl.selectKey(bNo);
		int rowCount = -999;
		
		rowCount = boardDaoImpl.delete(bNo);
		return rowCount;
	}
	*/
	
	//삭제하기
	public int delete(int bNo) throws Exception, BoardException{
		Board tempBoard = boardDaoImpl.selectKey(bNo);
		boolean rExist = boardDaoImpl.countReplay(tempBoard);
		if(rExist){
			//답글존재
			throw new BoardException("답글이 있는 게시글은 삭제할 수 없습니다.");
		}else{
			//답글안존재
			return boardDaoImpl.delete(bNo);
		}
	}
	
	//총 게시글 수
	public int count() throws Exception {
		int count = boardDaoImpl.getBoardCount();
		return count;
	}
	
	
}
