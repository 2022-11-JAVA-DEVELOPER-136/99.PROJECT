package com.itwill.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.PStmtKey;

import com.itwill.db.RdbmsDao;
import com.itwill.dto.Board;



public class BoardDaoImpl extends RdbmsDao{
	private DataSource dataSource;
	
	public BoardDaoImpl() {
		// TODO Auto-generated constructor stub
	}
	
	/*
	 * 테스트용 생성자
	 */
	/*
	public BoardDaoImpl() throws Exception {
			InitialContext ic = new InitialContext();
			dataSource =(DataSource)ic.lookup("java:/comp/env/jdbc/OracleDB");
	}
	*/
	
	public BoardDaoImpl(DataSource dataSource) throws Exception{
		this.dataSource = dataSource;
	}
	
	

	public int create(Board board) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			//테스트용 코드
			//con = dataSource.getConnection();
			con = this.getConnection();
			pstmt = con.prepareStatement(BoardDaoSQL.insertSQL);
			pstmt.setString(1, board.getbTitle());
			pstmt.setString(2, board.getbContent());
			pstmt.setString(3, board.getcEmail());
			int insertCount = pstmt.executeUpdate();
			
			return insertCount;
		} finally {
			if(pstmt!=null) {
				pstmt.close();
				this.releaseConnection(con);
			}
		}
	}
	
	/*
	//시간날때 메소드 깔끔하게 분리하자
	public int countStep() {
		
		return 0;
	}
	*/
	
	
	/*
	public int createReply(Board board) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int stepCount= 0;
		int insertReplyCount = 0;
		
		try {
			
			con = getConnection();
			
			//같은 groupno의 마지막 step을 알아내기 
			pstmt = con.prepareStatement(BoardDaoSQL.countStep);
			pstmt.setInt(1, board.getGroupNo());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				stepCount = rs.getInt("cnt");
			}
			pstmt.close();
			
			//댓글 작성
			pstmt = con.prepareStatement(BoardDaoSQL.insertReplySQL);
			pstmt.setString(1, board.getbTitle());
			pstmt.setString(2, board.getbContent());
			pstmt.setString(3, board.getcEmail());
			pstmt.setInt(4, board.getGroupNo());
			pstmt.setInt(5, stepCount+1);
			
			insertReplyCount = pstmt.executeUpdate();
			
			return insertReplyCount;
		} finally {
			if(pstmt!=null) {
				pstmt.close();
				this.releaseConnection(con);
			}
		}
		
		
	}
	*/
	
	/**
	 * 답글 게시물을 추가하는 메써드
	 * @throws Exception 
	 */
	public int createReply(Board board) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int count = 0;
		try {
			// 댓글을 작성할 대상글(원글)의 정보를 조회
			Board temp = selectKey(board.getbNo());
			System.out.println(temp);
			// 영향을 받는 기존 글들의 논리적인 순서 번호 변경
			con = getConnection();
			String sql = "UPDATE board " + "SET step = step + 1 "
					+ "WHERE step > ? AND groupno = ?";
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, temp.getStep());// step 번호
			pstmt.setInt(2, temp.getGroupNo());// group 번호
			pstmt.executeUpdate();
			pstmt.close();

			// 댓글 삽입
			pstmt = con.prepareStatement(BoardDaoSQL.insertReplySQL);
			pstmt.setString(1, board.getbTitle());// 제목
			pstmt.setString(2, board.getbContent());// 내용
			pstmt.setString(3, board.getcEmail());// 작성자
			pstmt.setInt(4, temp.getGroupNo());// groupno
			pstmt.setInt(5, temp.getStep() + 1);// step

			count = pstmt.executeUpdate();
		} catch (Exception ex) {
			count = 0;
			ex.printStackTrace();
		} finally {
			if(pstmt!=null) {
				pstmt.close();
				this.releaseConnection(con);
			}
		}
		return count;
	}
	
	public int update(Board board) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			//테스트용 코드
			//con = dataSource.getConnection();
			con = this.getConnection();
			pstmt = con.prepareStatement(BoardDaoSQL.updateSQL);
			pstmt.setString(1, board.getbTitle());
			pstmt.setString(2, board.getbContent());
			pstmt.setInt(3, board.getbNo());
			int updateCount = pstmt.executeUpdate();
			
			return updateCount;
		}finally {
			if(pstmt!=null) {
				pstmt.close();
				this.releaseConnection(con);
			}
		}
	}


	public int updateViewCNT(int bNo) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			//테스트용 코드
			//con = dataSource.getConnection();
			con = this.getConnection();
			pstmt = con.prepareStatement(BoardDaoSQL.updateViewCNT);
			pstmt.setInt(1, bNo);
			int updateViewCNT = pstmt.executeUpdate();
			
			return updateViewCNT;
		}finally {
			if(pstmt!=null) {
				pstmt.close();
				this.releaseConnection(con);
			}
		}
	}
	

	public int delete(int bNo) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			//테스트용 코드
			//con = dataSource.getConnection();
			con = this.getConnection();
			pstmt = con.prepareStatement(BoardDaoSQL.deleteSQL);
			pstmt.setInt(1, bNo);
			int deleteCount = pstmt.executeUpdate();
			
			return deleteCount;
		}finally {
			if(pstmt!=null) {
				pstmt.close();
				this.releaseConnection(con);
			}
		}
	}

	/*
	public ArrayList<Board> selectAll() throws Exception {
		ArrayList<Board> boardList = new ArrayList<Board>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		
		try {
			//테스트용 코드
			//con = dataSource.getConnection();
			con = this.getConnection();
			pstmt = con.prepareStatement(BoardDaoSQL.selectAllSQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				boardList.add(new Board(rs.getInt(1), 
						                rs.getString(2), 
						                rs.getString(3), 
						                rs.getDate(4), 
						                rs.getString(5),
						                rs.getInt(6),
						                rs.getInt(7),
						                rs.getInt(8),
						                rs.getInt(9)));
			}
			return boardList;
		}finally {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			releaseConnection(con);
		}
	}
	*/
	public ArrayList<Board> selectAll(int start, int last) throws Exception {
		ArrayList<Board> boardList = new ArrayList<Board>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		
		try {
			//테스트용 코드
			//con = dataSource.getConnection();
			con = this.getConnection();
			pstmt = con.prepareStatement(BoardDaoSQL.selectAllSQL);
			pstmt.setInt(1, start);
			pstmt.setInt(2, last);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				boardList.add(new Board(rs.getInt("bno"), 
						                rs.getString("btitle"), 
						                rs.getString("bcontent"), 
						                rs.getDate("bdate"), 
						                rs.getString("cemail"),
						                rs.getInt("viewcnt"),
						                rs.getInt("groupNo"),
						                rs.getInt("step"),
						                rs.getInt("depth")));
			}
			return boardList;
		}finally {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			releaseConnection(con);
		}
	}
  

	public Board selectKey(int pNO) throws Exception {
		Board board = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			//테스트용 코드
			//con = dataSource.getConnection();
			con = this.getConnection();
			pstmt = con.prepareStatement(BoardDaoSQL.selectKeySQL);
			pstmt.setInt(1, pNO);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				board = new Board(rs.getInt(1), 
				                  rs.getString(2), 
				                  rs.getString(3), 
				                  rs.getDate(4), 
				                  rs.getString(5),
				                  rs.getInt(6),
				                  rs.getInt(7),
				                  rs.getInt(8),
				                  rs.getInt(9));
			}
			return board;
		}finally {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			releaseConnection(con);
		}
	}
	
	
	/**
	 * 게시물 총 건수를 조회, 반환
	 * @throws Exception 
	 */
	public int getBoardCount() throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		try {
			//테스트용 코드
			//con = dataSource.getConnection();
			con = getConnection();
			String sql = "SELECT COUNT(*) FROM board";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next())
				count = rs.getInt(1);

		} catch (Exception ex) {
			count = 0;
			ex.printStackTrace();
		} finally {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				releaseConnection(con);
			}
		return count;
	}
	
	/**
	 * 답변게시물 존재여부확인메쏘드
	 */
	public boolean countReplay(Board board) throws SQLException {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Boolean  isExist = false;
		int cnt=0;
		try {
			con = getConnection();
			
			pstmt = con.prepareStatement(BoardDaoSQL.countReply);
			pstmt.setInt(1, board.getGroupNo());
			pstmt.setInt(2, board.getStep());
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cnt=rs.getInt("cnt");
			}
			if(cnt>1){
				isExist=true;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				releaseConnection(con);
		}
		return isExist;

	}



}
