package com.itwill.jumun;

import java.util.ArrayList;

public class JumunService {

	private JumunDAO jumunDAO;
	private static JumunService _instance;
	
	public JumunService() throws Exception{
		jumunDAO=new JumunDAO();
		System.out.println("JumunService()생성자:"+this);
	}
	
	// 객체를 만들려면 생성자가 아닌 getInstance() 정적 메소드를 사용해야 한다. 
	public static JumunService getInstance() throws Exception {
		if (JumunService._instance == null) {
			JumunService._instance = new JumunService();
		}
		return JumunService._instance;
	}
	
	
	/*
	 * 주문생성 
	 */
	public int create(Jumun jumun) throws Exception {
		return jumunDAO.create(jumun);
	}
	
	
	/*
	 * 주문수정
	 */
	public int update(Jumun jumun) throws Exception {
		return jumunDAO.update(jumun);
	}
	
	
	/*
	 * 주문삭제
	 */
	public int remove(int j_no) throws Exception {
		return jumunDAO.remove(j_no);
	}
	
	
	/*
	 * 주문1개보기
	 */
	public ArrayList<Jumun> findMemberJumun(String m_id) throws Exception, JumunNotFoundException {
		ArrayList<Jumun> jumunList = jumunDAO.findMemberJumun(m_id);
		if (jumunList.size() == 0) {
			throw new JumunNotFoundException(m_id+"님의 주문이 존재하지 않습니다.");
		}
		return jumunList;
	}
	
	
	/*
	 * 주문리스트
	 */
	public ArrayList<Jumun> findJumunList() throws Exception {
		return jumunDAO.findJumunList();
	}
	
	
	/*
	 * 가장 최근 주문의 주문번호 받기
	 */
	public int findRecentJumun(String m_id) throws Exception {
		return jumunDAO.findRecentJumun(m_id);
	}
		
}
