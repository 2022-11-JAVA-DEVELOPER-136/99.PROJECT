package com.itwill.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.member.model.Member;
import com.itwill.member.model.MemberAddressListService;
import com.itwill.member.model.MemberService;
import com.itwill.summer.Controller;

public class MyPageMyInfoDeleteActionController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		int m_no = (int)session.getAttribute("m_no");
		Member member = (Member)session.getAttribute("member");
	    String forwardPath = null;
		try {
			MemberAddressListService memberAddressListService = new MemberAddressListService();
			MemberService memberService = new MemberService();
			memberAddressListService.deleteAddressByNO(m_no);
			boolean isSuccess =memberService.remove(member.getM_no());
			session.invalidate();
			if (session.getAttribute("member") != null) {
				int m_no7 = (int)session.getAttribute("m_no");
				System.out.println(m_no7);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no7);
				request.setAttribute("cartCount", cartCount);
			}
			forwardPath="redirect:McDelivery_main.do";
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		return forwardPath;
	}

}
