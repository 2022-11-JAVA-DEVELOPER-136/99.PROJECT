package com.itwill.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.itwill.db.RdbmsDao;
import com.itwill.dto.Product;
import com.itwill.dto.ProductImage;

public class ProductDaoImpl extends RdbmsDao implements ProductDao   {
	
	public ProductDaoImpl() throws Exception {
	}

	@Override
	public int create(Product prod) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = getConnection();
			pstmt = con.prepareStatement(ProductSQL.INSERT);
			pstmt.setString(1, prod.getpName());
			pstmt.setString(2, prod.getpDesc());
			pstmt.setInt(3, prod.getpPrice());
			pstmt.setDouble(4, prod.getpPoint());
			pstmt.setInt(5, prod.getpStockQty());
			pstmt.setString(6, prod.getpUnit());
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			if(pstmt!=null)pstmt.close();
			releaseConnection(con);
		}
	}

	@Override
	public int update(Product prod) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = getConnection();
			pstmt = con.prepareStatement(ProductSQL.UPDATE);
			pstmt.setString(1, prod.getpName());
			pstmt.setString(2, prod.getpDesc());
			pstmt.setInt(3, prod.getpPrice());
			pstmt.setInt(4, prod.getpStockQty());
			pstmt.setString(5, prod.getpUnit());
			pstmt.setInt(6, prod.getpNO());
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			if(pstmt!=null)pstmt.close();
			releaseConnection(con);
		}
	}

	@Override
	public int delete(int pNO) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = getConnection();
			pstmt = con.prepareStatement(ProductSQL.DELETE);
			pstmt.setInt(1, pNO);
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			if(pstmt!=null)pstmt.close();
			releaseConnection(con);
		}
	}

	@Override
	public ArrayList<Product> selectAll() throws Exception {
		ArrayList<Product> productList = new ArrayList<Product>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			pstmt = con.prepareStatement(ProductSQL.SELECT_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				productList.add(new Product(
						rs.getInt("pNo"),
						rs.getString("pName"),
						rs.getString("pDesc"),
						rs.getInt("pPrice"),
						rs.getDouble("pPoint"),
						rs.getInt("pStockQty"),
						rs.getString("pUnit"),
						rs.getString("imgname"),
						rs.getInt("buyCount")
						));
			}
		} finally {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			releaseConnection(con);
		}
		
		
		return productList;
	}

	@Override
	public Product selectKey(int pNO) throws Exception {
		Product product = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			pstmt = con.prepareStatement(ProductSQL.SELECT_KEY);
			pstmt.setInt(1, pNO);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				product = new Product(
						rs.getInt("pNo"),
						rs.getString("pName"),
						rs.getString("pDesc"),
						rs.getInt("pPrice"),
						rs.getDouble("pPoint"),
						rs.getInt("pStockQty"),
						rs.getString("pUnit"),
						rs.getString("imgname"),
						rs.getInt("buyCount")
						);
			}
		} finally {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			releaseConnection(con);
		}
		
		
		return product;
	}
	
	public int imgInsert(ProductImage pImage) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = getConnection();
			pstmt = con.prepareStatement(ProductSQL.IMG_INSERT);
			pstmt.setInt(1, pImage.getpNo());
			pstmt.setString(2, pImage.getImgName());
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			if(pstmt!=null)pstmt.close();
			releaseConnection(con);
		}
	} 
	
	public ArrayList<Product> selectAllIncImg() throws Exception {
		ArrayList<Product> productList = new ArrayList<Product>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			pstmt = con.prepareStatement(ProductSQL.IMG_SELECT);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				productList.add(new Product(
						rs.getInt("pNo"),
						rs.getString("pName"),
						rs.getString("pDesc"),
						rs.getInt("pPrice"),
						rs.getDouble("pPoint"),
						rs.getInt("pStockQty"),
						rs.getString("pUnit"),
						rs.getString("imgname"),
						rs.getInt("buyCount")
						));
			}
			
			
		} finally {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			releaseConnection(con);
		}
		
		
		return productList;
	}
	
	public ArrayList<ProductImage> getImgList(int pNO) throws Exception {
		ArrayList<ProductImage> productImage = new ArrayList<ProductImage>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			pstmt = con.prepareStatement(ProductSQL.IMG_LIST);
			pstmt.setInt(1, pNO);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				productImage.add(new ProductImage(
						rs.getInt("pNo"),
						rs.getString("imgName")
						));
			}
		} finally {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			releaseConnection(con);
		}
		
		
		return productImage;
	}


	public int getProductCount(String queryString) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int returnQty = 0;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(ProductSQL.Select_Count(queryString));
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				returnQty = rs.getInt("CNT");
			}
			
		} finally {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			releaseConnection(con);
		}
		
		return returnQty;
	}
	
	
	public ArrayList<Product> selectPagingRow(int st, int ed, int orderMethod, String queryString) throws Exception {
		ArrayList<Product> product = new ArrayList<Product>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String ordCol=null;
		try {
			con = getConnection();
			

			if(orderMethod == Product.ORDER_METHOD_POINT) {
				ordCol="buycount DESC";
			} else if(orderMethod == Product.ORDER_METHOD_HPRICE) {
				ordCol="PPRICE DESC";
			} else if(orderMethod == Product.ORDER_METHOD_LPRICE) {
				ordCol="PPRICE";
			} else {
				ordCol="REGDATE DESC";
			}
				
			pstmt = con.prepareStatement(ProductSQL.Select_Page(ordCol, queryString));
			
			pstmt.setInt(1, st);
			pstmt.setInt(2, ed);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				product.add(new Product(
						rs.getInt("pNo"),
						rs.getString("pName"),
						rs.getString("pDesc"),
						rs.getInt("pPrice"),
						rs.getDouble("pPoint"),
						rs.getInt("pStockQty"),
						rs.getString("pUnit"),
						rs.getString("imgname"),
						rs.getInt("buyCount")
						));
			}
		} finally {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			releaseConnection(con);
		}
		
		
		return product;
	}
	
	public int updateBuyCount(Product prod) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = getConnection();
			pstmt = con.prepareStatement(ProductSQL.UPDATE_BUYCOUNT);
			pstmt.setInt(1, prod.getBuyCount());
			pstmt.setInt(2, prod.getpNO());
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			if(pstmt!=null)pstmt.close();
			releaseConnection(con);
		}
	}
	
	public ArrayList<Product> PagingList(int start, int end) throws Exception {
		ArrayList<Product> product = new ArrayList<Product>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(ProductSQL.PAGING_LIST);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				product.add(new Product(
						rs.getInt("pNo"),
						rs.getString("pName"),
						rs.getString("pDesc"),
						rs.getInt("pPrice"),
						rs.getDouble("pPoint"),
						rs.getInt("pStockQty"),
						rs.getString("pUnit"),
						null,
						rs.getInt("buyCount")
						));
			}
		} finally {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			releaseConnection(con);
		}
		return product;
	}
	
	
}
