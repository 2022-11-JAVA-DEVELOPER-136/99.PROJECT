package com.itwill.product.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ProductDao {
	private DataSource ds;

	public ProductDao() throws Exception {
		InitialContext ic = new InitialContext();
		ds = (DataSource) ic.lookup("java:/comp/env/jdbc/OracleDB");
	}

	// create
	public int create(Product product) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String insertQuery = "insert into Product values(?,?,?,?,?,?);";
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(insertQuery);
			pstmt.setInt(1, product.getP_no());
			pstmt.setString(2, product.getP_name());
			pstmt.setInt(3, product.getP_price());
			pstmt.setInt(4, product.getP_kcal());
			pstmt.setString(5, product.getP_desc());
			pstmt.setInt(6, product.getP_up_no());
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
	}
	
	// read all
	public ArrayList<Product> getProductList() throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Product> productList = null;
		try {

			con = ds.getConnection();
			String sql = "select * from Product";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			productList = new ArrayList<Product>();
			Product product = null;
			while (rs.next()) {
				product = new Product();
				product.setP_no(rs.getInt("p_no"));
				product.setP_name(rs.getString("p_name"));
				product.setP_price(rs.getInt("p_price"));
				product.setP_kcal(rs.getInt("p_kcal"));
				product.setP_desc(rs.getString("p_desc"));
				product.setP_no(rs.getInt("p_up_no"));
				productList.add(product);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (con != null)
				con.close();

		}

		return productList;
	}

	// read one by p_no
	public Product getProductByNo(int p_no) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Product product = null;
		try {
			con = ds.getConnection();
			String sql = "Select * from Product where p_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, p_no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				product = new Product();
				product.setP_up_no(rs.getInt("p_up_no"));
				product.setP_no(rs.getInt("p_no"));
				product.setP_name(rs.getString("p_name"));
				product.setP_price(rs.getInt("p_price"));
				product.setP_kcal(rs.getInt("p_kcal"));
				product.setP_desc(rs.getString("p_desc"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (con != null)
				con.close();

		}
		return product;

	}

	// read product list by p_up_no
	public ArrayList<Product> getProductListByNo(int p_up_no) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Product> productList = null;
		try {

			con = ds.getConnection();
			String sql = "select * from Product where p_up_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, p_up_no);
			rs = pstmt.executeQuery();
			productList = new ArrayList<Product>();
			Product product = null;
			while (rs.next()) {
				product = new Product();
				product.setP_no(rs.getInt("p_no"));
				product.setP_name(rs.getString("p_name"));
				product.setP_price(rs.getInt("p_price"));
				product.setP_kcal(rs.getInt("p_kcal"));
				product.setP_desc(rs.getString("p_desc"));
				product.setP_up_no(rs.getInt("p_up_no"));
				productList.add(product);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (con != null)
				con.close();

		}

		return productList;
	}

	// update
	public int update(Product product) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String updateQuery = "update Product set p_name=?,p_price=?,p_kacl=?,p_desc=?,p_up_no=? where p_no=? ";
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(updateQuery);
			pstmt.setString(1, product.getP_name());
			pstmt.setInt(2, product.getP_price());
			pstmt.setInt(3, product.getP_kcal());
			pstmt.setString(5, product.getP_desc());
			pstmt.setInt(6, product.getP_up_no());
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
	}

	// delete by p_no
	public int delete(int p_no) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String deleteQuery = "delete from Product where p_no=?";
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(deleteQuery);
			pstmt.setInt(1, p_no);
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
	}

}