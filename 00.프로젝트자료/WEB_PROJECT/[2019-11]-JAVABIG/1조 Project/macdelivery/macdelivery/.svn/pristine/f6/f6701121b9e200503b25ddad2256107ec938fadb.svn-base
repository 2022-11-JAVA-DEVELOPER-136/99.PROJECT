package com.itwill.jumun.model;

import java.util.ArrayList;

public class JumunService {

	private JumunDao jumunDao;

	public JumunService() throws Exception {
		jumunDao = new JumunDao();

	}
	/*
	 * READ ALL
	 */
	public ArrayList<Jumun> selectAll() throws Exception{
		return jumunDao.selectAll();
	}
	/*
	 * READ ONE 
	 */
	public ArrayList<Jumun> selectByNo(int m_no) throws Exception{
		return jumunDao.selectByNo(m_no);
	}
	/*
	 * CREATE
	 */
	public boolean insertJumun(Jumun jumun) throws Exception{
		return jumunDao.insertJumun(jumun);
		
	}
	/*
	 * DELETE
	 */
	public boolean deleteJumun(int j_no) throws Exception{
		return jumunDao.deleteJumun(j_no);
	}
	
}
