package com.itwill.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.member.model.MemberAddressList;
import com.itwill.member.model.MemberAddressListService;
import com.itwill.summer.Controller;

public class MemberAddressListFindActionController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		int m_no = (int) session.getAttribute("m_no");
		
		try {
			MemberAddressListService memberAddressListService = new MemberAddressListService();
			ArrayList<MemberAddressList> addressList =  memberAddressListService.findAddressByNo(m_no);
			request.setAttribute("addressList", addressList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}

}
