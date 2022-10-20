package com.itwill.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.itwill.dto.OrderDTO;

import javafx.scene.input.DataFormat;

public class OrderDaoImpl implements OrderDao{
	
	private DataSource ds = null;
	
	
	public OrderDaoImpl() throws Exception{
		try {
			InitialContext ic = new InitialContext();
			ds = (DataSource) ic.lookup("java:/comp/env/jdbc/OracleDB");
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@Override
	public int insertOrder(OrderDTO order){
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pstmt=null;
		int inCnt=0;
		//ResultSet rs = null;
		try {
			conn = ds.getConnection();
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

	@Override
	public int updateOrder(OrderDTO order){
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pstmt=null;
		int updateCnt =0;
		
		try {
			conn = ds.getConnection();
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

	@Override
	public int deleteOrder(int oNo){
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pstmt=null;
		int deleteCnt =0;
		
		try {
			conn= ds.getConnection();
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

	@Override
	public OrderDTO findOrder(int oNo){
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		OrderDTO order=null;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(OrderSql.FIND_ORDER);
			pstmt.setInt(1, oNo);
			rs = pstmt.executeQuery();
			SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD");
			
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
			} finally {
				rs.close();
				pstmt.close();
				conn.close();
			}
			return order;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return order;
	}

	@Override
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
			rs = pstmt.executeQuery();
			//SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD");
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
		} finally {
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


	@Override
	public ArrayList<Map> findOrderJoinAll(String loginId, int startIDX, int lastIDX) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Map> orderList = new ArrayList<Map>(); 
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(OrderSql.FIND_USER_ORDER_ALLPAGING);
			pstmt.setString(1, loginId);
			pstmt.setInt(2, startIDX);
			pstmt.setInt(3, lastIDX);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				HashMap rowMap = new HashMap();
				rowMap.put("idx",rs.getInt("IDX"));
				rowMap.put("oNo",rs.getInt("ONO"));
				rowMap.put("oAmount",rs.getInt("OAMOUNT"));
				rowMap.put("oDate",rs.getString("ODATE"));
				rowMap.put("pName",rs.getString("PNAME"));
				rowMap.put("oCnt",rs.getInt("OCNT")-1);
				rowMap.put("pNo",rs.getInt("PNO"));
				rowMap.put("imgName",rs.getString("imgName"));
				orderList.add(rowMap);
			}
			return orderList;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return orderList;
	}


	@Override
	public int recentlyONO(String email) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		int ono=-1;
		try {
			conn=ds.getConnection();
			pstmt = conn.prepareStatement(OrderSql.RECENTLY_ONO);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				ono = rs.getInt("ono");
			}
			
			return ono;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return ono;
	}


	@Override
	public int getOrderCount(String loginId) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(OrderSql.FIND_ORDER_COUNT);
			pstmt.setString(1, loginId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return count;
	}
	
	

	
	
	
	
	
}
