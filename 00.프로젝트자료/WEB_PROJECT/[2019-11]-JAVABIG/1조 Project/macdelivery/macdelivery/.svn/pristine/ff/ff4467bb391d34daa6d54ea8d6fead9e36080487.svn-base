package com.itwill.board.model;

import java.util.ArrayList;
import java.util.HashMap;

public class BoardService {
	BoardDao boardDao;
	public BoardService() throws Exception{
		boardDao = new BoardDao();
	}
	/*
	 * 게시글 쓰기 
	 */
	public int writeBoard(Board board)throws Exception{
		return boardDao.create(board);
	}
	/*
	 * 게시글 수정 
	 */
	public int updateBoard(Board board)throws Exception{
		return boardDao.update(board); 
	}
	/*
	 * 게시글 삭제 
	 */
	public int deleteBoard(int b_no)throws Exception{
		return boardDao.delete(b_no);
	}
	/*
	 * 게시글 상세보기   
	 */
	public HashMap findBoard(int b_no)throws Exception {
		return boardDao.findBoard(b_no);
	}
	/*
	 * 게시글 전체보기
	 */
	public ArrayList<HashMap> findBoardAll()throws Exception{
		return boardDao.findBoardAll();
	}

}
