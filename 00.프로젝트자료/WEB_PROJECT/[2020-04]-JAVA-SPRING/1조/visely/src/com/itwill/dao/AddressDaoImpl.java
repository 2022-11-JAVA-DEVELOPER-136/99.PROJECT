package com.itwill.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.itwill.dto.Address;
import com.itwill.db.RdbmsDao;

public class AddressDaoImpl extends RdbmsDao implements AddressDao {
	DataSource dataSource;
	
	
	public AddressDaoImpl(DataSource dataSource) throws Exception{
		this.dataSource = dataSource;
	}
	
	public AddressDaoImpl() throws Exception{
		InitialContext ic = new InitialContext();
		dataSource =(DataSource)ic.lookup("java:/comp/env/jdbc/OracleDB");
	}
	
	@Override
	public int create(Address address) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
//			con = dataSource.getConnection();	// test용 커넥션(웹컴포넌트에서 SE환경 커넥션을 사용하기 위해 사용
			con = getConnection();				// 화면에 연결시 사용할 커넥션(DB서버)
			pstmt = con.prepareStatement(AddressSQL.INSERT);
			pstmt.setString(1, address.getaName());
			pstmt.setString(2, address.getAddress());
			pstmt.setString(3, address.getAddressDetail());
			pstmt.setString(4, address.getaPhone());
			pstmt.setString(5, address.getcEmail());
			pstmt.setString(6, address.getaMemo());
			
			
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			pstmt.close();
			releaseConnection(con);
		}
	}

	@Override
	public int update(Address address) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = getConnection();
			pstmt = con.prepareStatement(AddressSQL.UPDATE);
			pstmt.setString(1, address.getaName());
			pstmt.setString(2, address.getAddress());
			pstmt.setString(3, address.getAddressDetail());
			pstmt.setString(4, address.getaPhone());
			pstmt.setString(5, address.getaMemo());
			pstmt.setInt(6, address.getaNo());
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			pstmt.close();
			releaseConnection(con);
		}
	}

	@Override
	public int delete(int aNo) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(AddressSQL.DELETE);
			pstmt.setInt(1, aNo);
			int rows = pstmt.executeUpdate();
			return rows;
		} finally {
			if(pstmt!=null)
				pstmt.close();
			if(con!=null)
				releaseConnection(con);
		}
	}

	@Override
	public ArrayList<Address> selectAll() throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			ArrayList<Address> addressList = new ArrayList<Address>();
			con = getConnection();
			pstmt = con.prepareStatement(AddressSQL.SELECT_ALL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				addressList.add(new Address(
						rs.getInt("ANO"),
						rs.getString("ANAME"),
						rs.getString("ADDRESS"),
						rs.getString("ADDRESSDETAIL"),
						rs.getString("APHONE"),
						rs.getString("CEMAIL"),
						rs.getString("AMEMO")));
			}
			return addressList;
		} finally {
			if(rs != null) {
				rs.close();
			}
			if(pstmt!=null)
				pstmt.close();
			if(con!=null)
				releaseConnection(con);
		}
	}

	@Override
	public Address selectKey(int aNo) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Address address = null;
			con = getConnection();
			pstmt = con.prepareStatement(AddressSQL.SELECT_PK);
			pstmt.setInt(1, aNo);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				address = new Address(
						rs.getInt("ANO"),
						rs.getString("ANAME"),
						rs.getString("ADDRESS"),
						rs.getString("ADDRESSDETAIL"),
						rs.getString("APHONE"),
						rs.getString("CEMAIL"),
						rs.getString("AMEMO"));
			}
			return address;
		} finally {
			if(rs != null) {
				rs.close();
			}
			if(pstmt!=null)
				pstmt.close();
			if(con!=null)
				releaseConnection(con);
		} 
	}
	
	//++ 추가
	@Override
	public Address selectEmailKey(String email) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Address address = null;
			con = getConnection();
			//System.out.println(email);
			pstmt = con.prepareStatement(AddressSQL.SELECT_ONE_EMAIL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				address = new Address(
						rs.getInt("ANO"),
						rs.getString("ANAME"),
						rs.getString("ADDRESS"),
						rs.getString("ADDRESSDETAIL"),
						rs.getString("APHONE"),
						rs.getString("CEMAIL"),
						rs.getString("AMEMO"));
			}
			return address;
		} finally {
			if(rs != null) {
				rs.close();
			}
			if(pstmt!=null)
				pstmt.close();
			if(con!=null)
				releaseConnection(con);
		} 
	}
	
}
