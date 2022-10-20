package com.itwill.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.itwill.dao.AddressDaoImpl;
import com.itwill.dao.OrderDetailSql;
import com.itwill.dto.Address;
import com.itwill.dto.OrderDetailDTO;

public class OrderDetailTestDao{
	
	DataSource ds;
			
	public OrderDetailTestDao(DataSource ds) {
		this.ds = ds;
	}
	
	
	
	public int insertOrderDetail(OrderDetailDTO ordDetail) {
		// TODO Auto-generated method stub
		Connection conn =null;
		PreparedStatement pstmt = null;
		int insertCnt =0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(OrderDetailSql.INSERT_ORDERDETAIL);
			pstmt.setInt(1, ordDetail.getOdQty());
			pstmt.setInt(2, ordDetail.getOdPrice());
			pstmt.setInt(3, ordDetail.getoNo());
			pstmt.setInt(4, ordDetail.getpNo());
			insertCnt = pstmt.executeUpdate();
			
			
			return insertCnt;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		return insertCnt;
	}

	
	public int updateOrderDetail(OrderDetailDTO ordDetail) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		int updateCnt = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(OrderDetailSql.UPDATE_ORDER);
			pstmt.setInt(1, ordDetail.getOdQty());
			pstmt.setInt(2, ordDetail.getOdPrice());
			pstmt.setInt(3, ordDetail.getOdNo());
			updateCnt = pstmt.executeUpdate();
			return updateCnt;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return updateCnt;
		
	}

	
	public int deleteOrderDetail(int odNo) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		int deleteCnt = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(OrderDetailSql.DELETE_ORDER);
			pstmt.setInt(1, odNo);
			deleteCnt = pstmt.executeUpdate();
			return deleteCnt;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return deleteCnt;
	}

	
	public OrderDetailDTO findOrderDetail(int odNo) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		OrderDetailDTO orderDetail=null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(OrderDetailSql.FIND_ORDER);
			pstmt.setInt(1, odNo);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				orderDetail =new OrderDetailDTO(
									rs.getInt("odNo"),
									rs.getInt("odQty"),
									rs.getInt("odPrice"),
									rs.getInt("oNo"),
									rs.getInt("pNo"));
				
				
			}
			return orderDetail;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return orderDetail;
	}

	
	public ArrayList<OrderDetailDTO> findOrderDetailAll() {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<OrderDetailDTO> orderDetailList =null;
		OrderDetailDTO orderDetail=null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(OrderDetailSql.FIND_ORDERDETAIL_ALL);
			rs = pstmt.executeQuery();
			orderDetailList = new ArrayList<OrderDetailDTO>();
			while(rs.next()) {
				orderDetail =new OrderDetailDTO(
									rs.getInt("odNo"),
									rs.getInt("odQty"),
									rs.getInt("odPrice"),
									rs.getInt("oNo"),
									rs.getInt("pNo"));
				
				orderDetailList.add(orderDetail);
			}
			return orderDetailList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return orderDetailList;
	}
	
	public ArrayList<Map> selectionJoin(int oNo) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Address address = null;
		int aNo = 0;
		ArrayList<Map> orderResultList = new ArrayList<Map>();

		try {
			AddressDaoImpl adi = new AddressDaoImpl();

			con = ds.getConnection();
			pstmt = con.prepareStatement(OrderDetailSql.FIND_ORDER_RESULT);
			pstmt.setInt(1, oNo);
			rs = pstmt.executeQuery();
			aNo = rs.getInt("ANO");
			address = adi.selectKey(aNo);
			while (rs.next()) {
				HashMap rowMap = new HashMap();
				rowMap.put("oDate", rs.getString("ODATE"));
				rowMap.put("pName", rs.getString("PNAME"));
				rowMap.put("oNo", rs.getString("ONO"));
				rowMap.put("oDqty", rs.getString("ODQTY"));
				rowMap.put("oAmount", rs.getString("AMOUNT"));
				rowMap.put("oCharge", rs.getString("OCHARGE"));
				rowMap.put("address", address);
				orderResultList.add(rowMap);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		if (rs != null) {
			try {
				rs.close();
				if (pstmt != null) {
					pstmt.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return orderResultList;
	}
}
