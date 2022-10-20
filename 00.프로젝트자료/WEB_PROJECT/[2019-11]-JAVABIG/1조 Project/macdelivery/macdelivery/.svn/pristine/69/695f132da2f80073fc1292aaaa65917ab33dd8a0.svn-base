package com.itwill.jumun_detail.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JumunDetailDao {
	private DataSource ds;

	public JumunDetailDao() throws Exception {
		InitialContext ic = new InitialContext();
		ds = (DataSource) ic.lookup("java:/comp/env/jdbc/OracleDB");
	}

	/*
	 * 주문상세 추가 (반복해서 여러개)
	 */
	public boolean insertJumunDetail(ArrayList<JumunDetail> jumunDetail) throws Exception {
		boolean isSuccess = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(JumunDetailSQL.insertJumunDetail);
			for (int i = 0; i < jumunDetail.size(); i++) {

				pstmt.setInt(1, jumunDetail.get(i).getP_no());
				//pstmt.setInt(2, jumunDetail.get(i).getJ_no());
				pstmt.setInt(2, jumunDetail.get(i).getJd_quantity());
				int count = pstmt.executeUpdate();
				rowCount = rowCount + count;
			}
			if (rowCount == jumunDetail.size()) {
				isSuccess = true;
			}
		} catch (Exception e) {
			isSuccess = false;
		} finally {
			if (conn != null)
				conn.close();

		}
		return isSuccess;
	}

	/*
	 * READ ALL
	 */
	public ArrayList<JumunDetail> selectByNo(int j_no) throws Exception {
		ArrayList<JumunDetail> jumunDetailList = new ArrayList<JumunDetail>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(JumunDetailSQL.selectAll);
			pstmt.setInt(1, j_no);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				jumunDetailList
						.add(new JumunDetail(rs.getInt("j_no"), rs.getString("s_name"), rs.getString("j_address"),
								rs.getString("p_name"), rs.getInt("j_price"), rs.getString("j_demand")));

			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();

		}
		return jumunDetailList;
	}

	/*
	 * CREATE
	 */

	/*
	 * DELETE
	 */
	public boolean deleteJumunDetail(int j_no) throws Exception {
		boolean deleteOK = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(JumunDetailSQL.deleteJumunDetail);
			pstmt.setInt(1, j_no);
			pstmt.executeUpdate();
			deleteOK = true;
		} catch (Exception e) {
			deleteOK = false;
			e.printStackTrace();
		} finally {
			if (conn != null)
				conn.close();

		}
		return deleteOK;
	}

}
