package com.itwill.test;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.itwill.dao.OrderSql;
import com.itwill.dto.OrderDTO;

public class OrderTestDao{
	
	private DataSource ds = null;
	
	
	public OrderTestDao(DataSource ds) throws Exception{
		this.ds = ds;
		
	}
	
	

	public int insertOrder(OrderDTO order){
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		int inCnt=0;
		//ResultSet rs = null;
		try {
			
			//new OrderDTO(0,3,30000,"카카오페이",2,null,null,null
			conn = ds.getConnection();
			conn.getAutoCommit();
			pstmt = conn.prepareStatement(OrderSql.INSERT_ORDER);
			pstmt.setInt(1, order.getoCnt());
			pstmt.setInt(2, order.getoAmount());
			pstmt.setString(3, order.getChargeWay());
			pstmt.setInt(4, order.getoSts());
			pstmt.setString(5, order.getcEmail()); //FK
			pstmt.setInt(6, order.getaNo()); //FK
			
			inCnt = pstmt.executeUpdate();
			
			return inCnt;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return inCnt;
	}

	
	public int updateOrder(OrderDTO order){
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pstmt=null;
		int updateCnt =0;
		
		try {
			
			conn = ds.getConnection();
			conn.getAutoCommit();
			pstmt = conn.prepareStatement(OrderSql.UPDATE_ORDER);
			pstmt.setInt(1, order.getoCnt());
			pstmt.setInt(2, order.getoAmount());
			pstmt.setString(3, order.getChargeWay());
			pstmt.setInt(4, order.getoSts());
			pstmt.setInt(5, order.getoNo());
			
			updateCnt = pstmt.executeUpdate(); 
			
			return updateCnt;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return updateCnt;
		
	}

	
	public int deleteOrder(int oNo){
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pstmt=null;
		int deleteCnt =0;
		
		try {
			conn= ds.getConnection();
			conn.getAutoCommit();
			pstmt = conn.prepareStatement(OrderSql.DELETE_ORDER);
			pstmt.setInt(1, oNo);
			deleteCnt = pstmt.executeUpdate();
			return deleteCnt;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return deleteCnt;
	}

	
	public OrderDTO findOrder(int oNo){
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		OrderDTO order=null;
		try {
			conn = ds.getConnection();
			conn.getAutoCommit();
			pstmt = conn.prepareStatement(OrderSql.FIND_ORDER);
			pstmt.setInt(1, oNo);
			rs = pstmt.executeQuery();
			SimpleDateFormat sdf = new SimpleDateFormat("YY/MM/DD");
			System.out.println("내부입니다.");
			
			try {
				if(rs.next()) {
						order = new OrderDTO(rs.getInt("oNo"),
										  rs.getInt("oCnt"),
										  rs.getInt("oAmount"),
										  rs.getString("oCharge"),
										  rs.getInt("oSts"),
										  rs.getDate("oDate"),
										  rs.getString("cEmail"),
										  rs.getInt("aNo"));
				}
				
				return order;
				
			} finally {
				rs.close();
				pstmt.close();
				conn.close();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return order;
	}

	
	public ArrayList<OrderDTO> findOrderAll(){
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		OrderDTO order = null;
		ArrayList<OrderDTO> orderlist=null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(OrderSql.FIND_ORDER_ALL);
			conn.getAutoCommit();
			rs = pstmt.executeQuery();
			SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD");
			orderlist = new ArrayList<OrderDTO>();
			while(rs.next()) {
					order = new OrderDTO(rs.getInt("oNo"),
									  rs.getInt("oCnt"),
									  rs.getInt("oAmount"),
									  rs.getString("oCharge"),
									  rs.getInt("oSts"),
									  rs.getDate("oDate"),
									  rs.getString("cEmail"),
									  rs.getInt("aNo"));
					orderlist.add(order);
			}
			
			return orderlist;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return orderlist;
	}
	
}
