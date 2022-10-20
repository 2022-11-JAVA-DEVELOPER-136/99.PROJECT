package com.itwill.shop.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.itwill.genre.test.JavaSeDataSource;


public class ProductDao {
	private static final String p_no = null;
	private DataSource dataSource;
	
	public ProductDao() throws Exception {
		InitialContext ic=new InitialContext();
		dataSource =(DataSource)ic.lookup("java:/comp/env/jdbc/OracleDB");
	}
	
	
	public ProductDao(DataSource dataSource) throws Exception {
		
		this.dataSource = JavaSeDataSource.getDataSource();
		
	}
	
	
	/*
	 * 제품테이블에 새로운 제품 생성.
	 */

	public int create(Product product) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String insertQuery = ProductSQL.INSERT_PRODUCT;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(insertQuery);
			pstmt.setInt(1, product.getP_no());
			pstmt.setString(2, product.getP_title());
			pstmt.setInt(3, product.getP_price());
			pstmt.setString(4, product.getP_desc());
			pstmt.setString(5, product.getP_image());
			pstmt.setString(6, product.getP_runtime());
			pstmt.setDouble(7, product.getP_rate());
			pstmt.setInt(8, product.getG_no());
			
			int rows = pstmt.executeUpdate();
			return rows;
		}finally {
			if (pstmt != null)
				pstmt.close();
			if(con != null)
				con.close();
		}
	}
			
	
	/*
	// UPDATE 제품정보 수정
	*/
		public int update(Product product) throws Exception {
			Connection con = null;
			PreparedStatement pstmt = null;
			String updateQuery = 
					ProductSQL.UPDATE_PRODUCT;
			try {
				con = dataSource.getConnection();
				pstmt = con.prepareStatement(updateQuery);
			
				pstmt.setString(1, product.getP_title());
				pstmt.setInt(2, product.getP_price());
				pstmt.setString(3, product.getP_desc());
				pstmt.setString(4, product.getP_image());			
				pstmt.setString(5, product.getP_runtime());
				pstmt.setDouble(6, product.getP_rate());
				pstmt.setInt(7, product.getG_no());
				pstmt.setInt(8, product.getP_no());
				int rows = pstmt.executeUpdate();
				return rows;
			} finally {
				if(pstmt != null)
					pstmt.close();
				if(con != null)
					con.close();
			}
		}
		/*
		 * 원하는 제품 삭제.
		 */
		public int remove(int p_no) throws Exception {
			Connection con = null;
			PreparedStatement pstmt = null;
			String removeQuery = ProductSQL.DELETE_PRODUCT;
			try {
				con = dataSource.getConnection();
				pstmt = con.prepareStatement(removeQuery);
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
/*
 *  원하는 제품찾기		
 */
		public Product findProduct(int p_no) throws Exception {
			Product product = null;
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String selectQuery = ProductSQL.FIND_PRODUCT;
			try {
				con = dataSource.getConnection();
				pstmt = con.prepareStatement(selectQuery);
				pstmt.setInt(1, p_no);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					product = new Product(p_no,
							rs.getString("p_title"), rs.getInt("p_price"),
							rs.getString("p_desc"), rs.getString("p_image"),
							rs.getString("p_runtime"),rs.getDouble("p_rate"), 
							rs.getInt("g_no"));
				}
			}finally {
				if (rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(con != null)
					con.close();
			}
			return product;
		}

		/*
		 * 모든제품 정보를 찾아서 
		 * list<ProductDto> 콜렉션에 저장하여 반환 
		 */
		//insert into product(p_no, p_title, p_price, p_desc, p_runtime, p_rate, g_no)
		
	public ArrayList<Product> findProductList() throws Exception {
		ArrayList<Product> productList = new ArrayList<Product>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String selectQuery = 
				ProductSQL.FIND_ALL_PRODUCT;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(selectQuery);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				productList.add(new Product(
						rs.getInt("p_no"),
						rs.getString("p_title"),
						rs.getInt("p_price"),
						rs.getString("p_desc"),
						rs.getString("p_image"),
						rs.getString("p_runtime"),
						rs.getDouble("p_rate"),
						rs.getInt("g_no")
										));
			}
		}finally {
			if(rs != null)
				rs.close();
			if(pstmt != null)
				pstmt.close();
			if(con != null)
				con.close();
		}
		return productList;
	
	}
	
	
	public HashMap findOneProductWithGenre(int p_no) throws Exception {
		HashMap productMap = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String selectQuery = ProductSQL.SELECT_ONEPRODUCT_WITHGENRE;
		
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(selectQuery);
			pstmt.setInt(1, p_no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				productMap = new HashMap();
				productMap.put("p_no",  rs.getInt("p_no"));
				productMap.put("p_title",  rs.getString("p_title"));
				productMap.put("p_price",  rs.getInt("p_price"));
				productMap.put("p_desc",  rs.getString("p_desc"));
				productMap.put("p_image",  rs.getString("p_image"));
				productMap.put("p_runtime",  rs.getString("p_runtime"));
				productMap.put("p_rate",  rs.getDouble("p_rate"));
				productMap.put("g_no",  rs.getInt("g_no"));
				productMap.put("g_name",  rs.getString("g_name"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null)
				rs.close();
			if(pstmt != null)
				pstmt.close();
			if(con != null)
				con.close();
		}
		return productMap;
	}
	
	
	public ArrayList<HashMap> findProductsWithGenre() throws Exception {
		ArrayList<HashMap> productList = new ArrayList<HashMap>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String selectQuery = ProductSQL.SELECT_ALLPRODUCT_WITHGENRE;
		
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(selectQuery);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				HashMap rowMap = new HashMap();
				rowMap.put("p_no",  rs.getInt("p_no"));
				rowMap.put("p_title",  rs.getString("p_title"));
				rowMap.put("p_price",  rs.getInt("p_price"));
				rowMap.put("p_desc",  rs.getString("p_desc"));
				rowMap.put("p_image",  rs.getString("p_image"));
				rowMap.put("p_runtime",  rs.getString("p_runtime"));
				rowMap.put("p_rate",  rs.getDouble("p_rate"));
				rowMap.put("g_no",  rs.getInt("g_no"));
				rowMap.put("g_name",  rs.getString("g_name"));
				productList.add(rowMap);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null)
				rs.close();
			if(pstmt != null)
				pstmt.close();
			if(con != null)
				con.close();
		}
		return productList;
	}
	
		
	public boolean existedProduct(Product product) throws Exception{
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String existedQuery=
				"select count(*) cnt from product where p_no=?";
		try {
			con=dataSource.getConnection();
			pstmt=con.prepareStatement(existedQuery);
			pstmt.setInt(1, product.getP_no());
			rs=pstmt.executeQuery();
			int count=0;
			if(rs.next()){
				count=rs.getInt("cnt");
			}
			if(count==1){
				return true;
			}else{
				return false;
			}
		}finally{
			if(rs!=null)
				rs.close();
			if(pstmt!=null)
				pstmt.close();
			if(con!=null)
				con.close();
		}
	}
	
}

