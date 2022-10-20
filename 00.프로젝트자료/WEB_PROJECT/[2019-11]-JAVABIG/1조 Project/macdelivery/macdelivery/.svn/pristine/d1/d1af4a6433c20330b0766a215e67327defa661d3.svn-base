package com.itwill.member.model;

import java.util.ArrayList;

public class MemberAddressListService {
	MemberAddressListDao memberAddressListDao;
	public MemberAddressListService() throws Exception{
		memberAddressListDao = new MemberAddressListDao();
	}
	/*******************주소 3개 추가*****************************/
	public int add_3AddressList(MemberAddressList memberAddressList)throws Exception {
		int rs = 0;
		for (int i = 0; i < 3; i++) {
			memberAddressListDao.create(memberAddressList);
			rs++;
		}
		return rs;
	}
	/******************************************************************/
	/*
	 * 주소 수정
	 */
	public int updateAddress(MemberAddressList memberAddressList)throws Exception {
		int rs = memberAddressListDao.update(memberAddressList);
		return rs;
	}
	/*
	 * 주소 삭제
	 */
	public int deleteAddress(int m_no, int ma_no)throws Exception {
		return memberAddressListDao.delete(m_no, ma_no);
	}
	/*
	 * 주소 한개 찾기
	 */
	public MemberAddressList findAddressOne(int m_no, int ma_no)throws Exception {
		return memberAddressListDao.findAddressOne(m_no, ma_no);
	}
	/*
	 * 모든 주소 찾기
	 */
	public ArrayList<MemberAddressList> findAddressAll()throws Exception{
		return memberAddressListDao.findAddressAll();
		
	}
	// 회원번호로 모든 주소록 찾기
	public ArrayList<MemberAddressList> findAddressByNo(int m_no)throws Exception {
		return memberAddressListDao.findAddressByNo(m_no);
	}
	//회원번호로 모든 주소록 삭제
	public int deleteAddressByNO(int m_no)throws Exception {
		return memberAddressListDao.delete(m_no);
	}
}
