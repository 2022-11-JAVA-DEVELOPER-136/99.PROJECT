package com.itwill.dao;

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

import com.itwill.dto.Address;
import com.itwill.dto.OrderDetailDTO;

public class OrderDetailDaoImpl implements OrderDetailDao {
	DataSource ds = null;

	public OrderDetailDaoImpl() {
		try {
			InitialContext ic = new InitialContext();
			ds = (DataSource) ic.lookup("java:/comp/env/jdbc/OracleDB");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public int insertOrderDetail(OrderDetailDTO ordDetail) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		int insertCnt = 0;
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
		} finally {
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

	@Override
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
		} finally {
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

	@Override
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
		} finally {
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

	@Override
	public OrderDetailDTO findOrderDetail(int odNo) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		OrderDetailDTO orderDetail = null;

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(OrderDetailSql.FIND_ORDER);
			pstmt.setInt(1, odNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				orderDetail = new OrderDetailDTO(rs.getInt("odNo"), rs.getInt("odQty"), rs.getInt("odPrice"),
						rs.getInt("oNo"), rs.getInt("pNo"));

			}
			return orderDetail;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
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

	@Override
	public ArrayList<OrderDetailDTO> findOrderDetailAll() {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<OrderDetailDTO> orderDetailList = null;
		OrderDetailDTO orderDetail = null;

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(OrderDetailSql.FIND_ORDERDETAIL_ALL);
			rs = pstmt.executeQuery();
			orderDetailList = new ArrayList<OrderDetailDTO>();
			while (rs.next()) {
				orderDetail = new OrderDetailDTO(rs.getInt("odNo"), rs.getInt("odQty"), rs.getInt("odPrice"),
						rs.getInt("oNo"), rs.getInt("pNo"));

				orderDetailList.add(orderDetail);
			}
			return orderDetailList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
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
		ArrayList<Map> orderResultList = new ArrayList<Map>();

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(OrderDetailSql.FIND_ORDER_DETAIL_JOIN);
			pstmt.setInt(1, oNo);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				HashMap rowMap = new HashMap();
				rowMap.put("oNo", rs.getInt("ONO"));
				rowMap.put("oDate", rs.getString("ODATE"));
				rowMap.put("pName", rs.getString("PNAME"));
				rowMap.put("pPrice", rs.getInt("PRICE"));
				rowMap.put("oDqty", rs.getInt("ODQTY"));
				rowMap.put("oAmount", rs.getInt("OAMOUNT"));
				rowMap.put("oCharge", rs.getString("OCHARGE"));
				rowMap.put("aNo", rs.getInt("ANO"));
				rowMap.put("aName", rs.getString("ANAME"));
				rowMap.put("address", rs.getString("ADDRESS"));
				rowMap.put("aPhone", rs.getString("APHONE"));
				rowMap.put("aMemo", rs.getString("AMEMO"));
				rowMap.put("aMemo", rs.getString("AMEMO"));
				rowMap.put("imgName",rs.getString("imgName"));
				orderResultList.add(rowMap);
			}
			return orderResultList;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		if (rs != null) {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return orderResultList;
	}
}
