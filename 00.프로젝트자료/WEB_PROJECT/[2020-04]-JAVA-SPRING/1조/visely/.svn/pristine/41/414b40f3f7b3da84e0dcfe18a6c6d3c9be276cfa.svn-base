package com.itwill.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.itwill.db.RdbmsDao;
import com.itwill.dto.Customer;

public class CustomerDaoImpl extends RdbmsDao implements CustomerDao {
	private DataSource dataSource;
	
	public CustomerDaoImpl() throws Exception {
	}
	
	/*
	 * CustomerDao Test 생성자
	 */
	public CustomerDaoImpl(DataSource dataSource) throws Exception {
		this.dataSource = dataSource;
		System.out.println("CustomerDao()생성자:" + this);
	}
	
	/*
	 * 회원 가입
	 */
	@Override
	public int create(Customer customer) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String create = CustomerSQL.CREATE;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(create);
			pstmt.setString(1, customer.getcEmail());
			pstmt.setString(2, customer.getcPassword());
			pstmt.setString(3, customer.getcBirth());
			pstmt.setString(4, customer.getcTel());
			pstmt.setString(5, customer.getcSex());
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
	 * 회원 정보 수정
	 */
	@Override
	public int update(Customer customer) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String update = CustomerSQL.UPDATE;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(update);
			pstmt.setString(1, customer.getcPassword());
			pstmt.setString(2, customer.getcBirth());
			pstmt.setString(3, customer.getcTel());
			pstmt.setString(4, customer.getcSex());
			pstmt.setString(5, customer.getcEmail());
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
	 * 비밀번호 재설정(이메일로)
	 */
	@Override
	public int updateByEmail(String cEmail, String cPassword) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String updateByEmail = CustomerSQL.UPDATE_BY_EMAIL;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(updateByEmail);
			pstmt.setString(1, cPassword);
			pstmt.setString(2, cEmail);
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
	 * 비밀번호 재설정(전화번호로)
	 */
	@Override
	public int updateByTel(String cPassword, String cTel) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String updateByTel = CustomerSQL.UPDATE_PASSWORD_BY_TEL;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(updateByTel);
			pstmt.setString(1, cPassword);
			pstmt.setString(2, cTel);
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
	 * 회원 탈퇴
	 */
	@Override
	public int remove(String cEmail) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String remove = CustomerSQL.REMOVE;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(remove);
			pstmt.setString(1, cEmail);
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
	 * 이메일로 회원 찾기
	 */
	@Override
	public Customer findByEmail(String cEmail) throws Exception {
		Customer customer = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String findByEmail = CustomerSQL.FIND_BY_EMAIL;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(findByEmail);
			pstmt.setString(1, cEmail);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				customer = new Customer(rs.getString("cEmail"),
						rs.getString("cPassword"), rs.getString("cBirth"),
						rs.getString("cTel"), rs.getString("cSex"));
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return customer;
	}
	
	/*
	 * 이메일 찾기
	 */
	@Override
	public String findEmail(String cBirth, String cTel) throws Exception {
		String cEmail = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String findEmail = CustomerSQL.FIND_EMAIL;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(findEmail);
			pstmt.setString(1, cBirth);
			pstmt.setString(2, cTel);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cEmail = rs.getString("cEmail");
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return cEmail;
	}
	
	/*
	 * 회원 전체 보기
	 */
	@Override
	public ArrayList<Customer> findAll() throws Exception {
		ArrayList<Customer> customerList = new ArrayList<Customer>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String findAll = CustomerSQL.FIND_ALL;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(findAll);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				customerList.add(new Customer(
						rs.getString("cEmail"),
						rs.getString("cPassword"),
						rs.getString("cBirth"),
						rs.getString("cTel"),
						rs.getString("cSex")));
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return customerList;
	}
	
	/*
	 * 회원 존재여부 체크
	 */
	public boolean existedEmail(String cEmail) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String existed = CustomerSQL.EXISTED;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(existed);
			pstmt.setString(1, cEmail);
			rs = pstmt.executeQuery();
			int count = 0;
			if (rs.next()) {
				count = rs.getInt("cnt");
			}
			if (count == 1) {
				return true;
			} else {
				return false;
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
	}
	
	/*
	 * 전화번호 병경
	 */
	@Override
	public int updateTel(String cEmail, String cTel) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String updateTel = CustomerSQL.UPDATE_TEL;
		try {
			con = getConnection();
			pstmt = con.prepareStatement(updateTel);
			pstmt.setString(1, cTel);
			pstmt.setString(2, cEmail);
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
