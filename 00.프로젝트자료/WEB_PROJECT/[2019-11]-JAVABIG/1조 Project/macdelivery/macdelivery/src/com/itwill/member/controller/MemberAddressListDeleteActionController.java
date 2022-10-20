package com.itwill.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.member.model.MemberAddressListService;
import com.itwill.summer.Controller;

public class MemberAddressListDeleteActionController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		int m_no = (int) session.getAttribute("m_no");
		int ma_no =Integer.parseInt(request.getParameter("ma_no"));
		
		try {
			MemberAddressListService memberAddressListService = new MemberAddressListService();
			memberAddressListService.deleteAddress(m_no, ma_no);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return null;
	}

}
