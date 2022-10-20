package com.itwill.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import com.itwill.dto.Cart;
import com.itwill.dto.Product;
import com.itwill.db.RdbmsDao;

public class CartDaoImpl extends RdbmsDao implements CartDao{
	@Override
	public int create(Cart cart) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		con = getConnection();
		//insert into cart (cNo, cQty, cPrice, pNo, cEmail) values(Cart_cNo_SEQ.NEXTVAL, ?, ?, ?, ?')
		try {
			pstmt = con.prepareStatement(CartSQL.CART_INSERT);
			pstmt.setInt(1, cart.getcQty());
			pstmt.setInt(2, cart.getcPrice());
			pstmt.setInt(3, cart.getpNo());
			pstmt.setString(4, cart.getcEmail());
			int createRow = pstmt.executeUpdate();
			return createRow;
		}finally {
			if(pstmt !=null) {
				pstmt.close();
			}
			if(con != null) {
				con.close();
			}
		}
		
	}
	//select count(*) as count from cart where pNo = ? and cEmail = ?;
	public int isDuplicate(String cEmail, int pNo) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;	
		try {
			con = getConnection();
			pstmt = con.prepareStatement(CartSQL.CART_ISDUPLICATE);
			pstmt.setInt(1, pNo);
			pstmt.setString(2,cEmail);
			rs = pstmt.executeQuery();
			int cNo = 0;
			if(rs.next()) {
				cNo = rs.getInt(1);
			}
			return cNo;
		}finally {
			if(rs!=null) {
				rs.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null) {
				con.close();
			}
		}
		
	}

	@Override
	public int update(Cart cart) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = getConnection();
			//"update cart set cQty=?, cPrice=?, pNo=? cEmail=? where cNo=?  "
			pstmt = con.prepareStatement(CartSQL.CART_UPDATE);
			pstmt.setInt(1, cart.getcQty());
			pstmt.setInt(2, cart.getcPrice());
			pstmt.setInt(3, cart.getpNo());
			pstmt.setString(4, cart.getcEmail());
			pstmt.setInt(5, cart.getcNo());
			int updateRow = pstmt.executeUpdate();			
			return updateRow;
			
		}finally {
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null) {
				con.close();
			}
		}
				
	}


	@Override
	public int delete(int cNo) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(CartSQL.CART_DELETE_CNO);
			pstmt.setInt(1, cNo);
			int deleteRow = pstmt.executeUpdate();
			return deleteRow;
		}finally {
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null) {
				con.close();
			}
		}
		
	}
	public int delete(String cEmail) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(CartSQL.CART_DELETE_CEMAIL);
			pstmt.setString(1, cEmail);
			int deleteRow = pstmt.executeUpdate();
			return deleteRow;
		}finally {
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null) {
				con.close();
			}
		}		
		
	}

	@Override
	public ArrayList<Cart> selectAll() throws Exception {
		ArrayList<Cart> cartList = new ArrayList<Cart>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			pstmt = con.prepareStatement(CartSQL.CART_SELCT_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				cartList.add(new Cart(rs.getInt("cNo"),rs.getInt("cQty"), rs.getInt("cPrice"),
					    rs.getInt("pNo"), rs.getString("cEmail")));
			}
			return cartList;			
			
		}finally {
			if(rs!=null) {
				rs.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null) {
				con.close();
			}
		}			
		
	}

	@Override
	public Cart selectKey(int cNo) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Cart cart = null;
		try {
			con = getConnection();
			//"select cNo, cQty, cPrice, pNo, cEmail from cart where cNo = ?;"
			pstmt = con.prepareStatement(CartSQL.CART_SELECT_cNo);
			pstmt.setInt(1, cNo);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				cart = new Cart(rs.getInt("cNo"),rs.getInt("cQty"), rs.getInt("cPrice"),
							    rs.getInt("pNo"), rs.getString("cEmail"));
			}
			return cart;
		}finally {
			if(rs!=null) {
				rs.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null) {
				con.close();
			}
		}
		
	}	
	
	public ArrayList<Cart> selectKey(String cEmail) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Cart> cartList = new ArrayList<Cart>();
		try {
			con = getConnection();
			pstmt = con.prepareStatement(CartSQL.CART_SELECT_CEMAIL);
			pstmt.setString(1, cEmail);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				cartList.add(new Cart(rs.getInt("cNo"),rs.getInt("cQty"), rs.getInt("cPrice"),
					    rs.getInt("pNo"), rs.getString("cEmail")));
			}
			return cartList;
		}finally {
			if(rs!=null) {
				rs.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null) {
				con.close();
			}
		}		
		
	}
	
	public ArrayList<Map> selectJoin(String cEmail) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Map> cartList = new ArrayList<Map>();
		try {
			con = getConnection();
			//"select p.pname, p.pdesc, c.cqty, c.cPrice from cart c join product p on c.pNo = p.pNO where cEmail=?"
			pstmt = con.prepareStatement(CartSQL.CART_SELECT_JOIN);
			pstmt.setString(1, cEmail);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				HashMap rowMap = new HashMap();
				rowMap.put("pName", rs.getString("pName"));
				rowMap.put("pDesc", rs.getString("pDesc"));
				rowMap.put("cQty", rs.getInt("cQty"));
				rowMap.put("cPrice", rs.getInt("cPrice"));
				rowMap.put("cNo", rs.getInt("cNo"));
				rowMap.put("pPrice", rs.getInt("pPrice"));
				rowMap.put("pNo", rs.getInt("pNo"));
				rowMap.put("imgName", rs.getString("imgName"));
				cartList.add(rowMap);
				
			}			
			return cartList;
		}finally {
			if(rs!=null) {
				rs.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null) {
				con.close();
			}
		}
	}
	
	public int sumAmt(String eMail) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int amt=0;
		try {
			con = getConnection();
			//"select cNo, cQty, cPrice, pNo, cEmail from cart where cNo = ?;"
			pstmt = con.prepareStatement(CartSQL.CART_SUM_AMT);
			pstmt.setString(1, eMail);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				amt = rs.getInt("samt");
			}
			
		}finally {
			if(rs!=null) {
				rs.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
			if(con!=null) {
				con.close();
			}
		}
		return amt;
	}

	

	
	
	

	
}
