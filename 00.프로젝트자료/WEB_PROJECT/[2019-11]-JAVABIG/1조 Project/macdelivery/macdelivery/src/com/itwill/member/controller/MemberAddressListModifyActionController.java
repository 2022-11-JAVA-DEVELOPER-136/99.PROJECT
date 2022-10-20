package com.itwill.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.member.model.MemberAddressList;
import com.itwill.member.model.MemberAddressListService;
import com.itwill.summer.Controller;

public class MemberAddressListModifyActionController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		int m_no = (int) session.getAttribute("m_no");
		
		int ma_no = Integer.parseInt(request.getParameter("ma_no"));
		String m_address_si = request.getParameter("m_address_si");
		String m_address_gu = request.getParameter("m_address_gu");
		String m_address_detail = request.getParameter("m_address_detail");
		MemberAddressList memberAddressList = new MemberAddressList(m_no, ma_no, m_address_si, m_address_gu, m_address_detail);
			
		try {
			MemberAddressListService memberAddressListService = new MemberAddressListService();
			memberAddressListService.updateAddress(memberAddressList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
