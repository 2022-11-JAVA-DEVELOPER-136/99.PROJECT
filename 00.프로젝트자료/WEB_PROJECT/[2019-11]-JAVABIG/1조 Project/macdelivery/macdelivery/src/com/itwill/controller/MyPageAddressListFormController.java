package com.itwill.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.member.model.MemberAddressList;
import com.itwill.member.model.MemberAddressListService;
import com.itwill.summer.Controller;

public class MyPageAddressListFormController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		int m_no = (int) session.getAttribute("m_no");
		
		MemberAddressListService memberAddressListService;
		String forwardPath = null;
		try {
			memberAddressListService = new MemberAddressListService();
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
