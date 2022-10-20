package com.itwill.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.InitialContext;
import javax.sql.DataSource;


public class BoardDao {
	private DataSource dataSource;

	public BoardDao() throws Exception {
		InitialContext ic = new InitialContext();
		dataSource = (DataSource) ic.lookup("java:/comp/env/jdbc/OracleDB");
	}

	public int create(Board board) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String insertQuery = "insert into Board values(seq_board_no.nextval, ?, ?, ?, ?);";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(insertQuery);
			pstmt.setInt(1, board.getB_no());
			pstmt.setString(2, board.getB_title());
			pstmt.setString(3, board.getB_content());
			pstmt.setDate(4, board.getB_regdate());
			pstmt.setInt(5, board.getM_no());
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
	}

	public int update(Board board) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String updateQuery = "update Board set b_title= ? , b_content = ? where b_no = ?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(updateQuery);
			pstmt.setString(1, board.getB_title());
			pstmt.setString(2, board.getB_content());
			pstmt.setInt(3, board.getB_no());
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
	}

	public int delete(int b_no) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String deleteQuery = "delete from Board where b_no = ?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(deleteQuery);
			pstmt.setInt(1, b_no);
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
	}

	public HashMap findBoard(int b_no) throws Exception {
		HashMap board = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String selectQuery = "select b.b_no, b.b_title, b.b_content, b.b_regdate, m.m_name "
				+ "from Board b, Member m "
				+ "where b.m_no=m.m_no and b.b_no=?";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(selectQuery);
			pstmt.setInt(1, b_no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				board = new HashMap();
				board.put("b_no", rs.getInt("b.b_no"));
				board.put("b_title", rs.getInt("b.b_title"));
				board.put("b_content", rs.getInt("b.b_content"));
				board.put("b_regdate", rs.getInt("b.b_regdate"));
				board.put("m_name", rs.getInt("m.m_name"));
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return board;
	}
	
	public ArrayList<HashMap> findBoardAll()throws Exception{
		ArrayList<HashMap> boardList = new ArrayList<HashMap>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String selectQuery = "select b.b_no, b.b_title, b.b_content, b.b_regdate, m.m_name "
				+ "from Board b, Member m "
				+ "where b.m_no = m.m_no ";
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(selectQuery);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				HashMap board = new HashMap();
				board.put("b_no", rs.getInt("b.b_no"));
				board.put("b_title", rs.getInt("b.b_title"));
				board.put("b_content", rs.getInt("b.b_content"));
				board.put("b_regdate", rs.getInt("b.b_regdate"));
				board.put("m_name", rs.getInt("m.m_name"));
				
				boardList.add(board);
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		
		return boardList;
	}

}
