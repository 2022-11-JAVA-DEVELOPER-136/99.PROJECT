package com.itwill.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.member.model.MemberAddressList;
import com.itwill.member.model.MemberAddressListService;
import com.itwill.summer.Controller;

public class MyPageAddressListActionController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		int m_no = Integer.parseInt(request.getParameter("m_no"));
		int ma_no = Integer.parseInt(request.getParameter("ma_no"));
		String m_address_si = request.getParameter("m_address_si");
		String m_address_gu = request.getParameter("m_address_gu");
		String m_address_detail = request.getParameter("m_address_detail");
		HttpSession session = request.getSession();
		
		String forwardPath = null;
		MemberAddressList memberAddressList = new MemberAddressList(m_no, ma_no, m_address_si, m_address_gu, m_address_detail);
		
		try {
			MemberAddressListService memberAddressListService = new MemberAddressListService();
			memberAddressListService.updateAddress(memberAddressList);
			ArrayList<MemberAddressList> addressList = memberAddressListService.findAddressByNo(m_no);
			request.setAttribute("addressList", addressList);
			if (session.getAttribute("member") != null) {
				int m_no6 = (int)session.getAttribute("m_no");
				System.out.println(m_no6);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no6);
				request.setAttribute("cartCount", cartCount);
			}
			forwardPath = "forward:/WEB-INF/view/McDelivery_myPage_addressList.jsp";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return forwardPath;
	}
 

}
