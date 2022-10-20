package com.itwill.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.member.model.Member;
import com.itwill.member.model.MemberAddressList;
import com.itwill.member.model.MemberAddressListService;
import com.itwill.member.model.MemberService;
import com.itwill.summer.Controller;

public class RegisterActionController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String m_id = request.getParameter("m_id");
		String m_pwd = request.getParameter("m_pwd");
		String m_name = request.getParameter("m_name");
		String m_jumin = request.getParameter("m_jumin");
		String m_phone = request.getParameter("m_phone");
		String m_email = request.getParameter("m_email");
		String m_address = request.getParameter("m_address");
		String forwardPath = null;
		HttpSession session = request.getSession();
		try {
			MemberService memberService = new MemberService();
			Member member = new Member(m_id,m_pwd,m_name,m_jumin,m_phone,m_email,m_address);
			System.out.println("회원가입 파라미터 : " + member.toString());
			memberService.registerMember(member);
			
			/*****************주소록 3개 회원 가입 성공시 자동 생성****************************/
			MemberAddressListService memberAddressListService = new MemberAddressListService();
			int m_no = memberService.findById(m_id);
			MemberAddressList memberAddressList = new MemberAddressList(m_no, "", "", "");
			memberAddressListService.add_3AddressList(memberAddressList);

			/**********************************************************************************/
			if (session.getAttribute("member") != null) {
				int m_no8 = (int)session.getAttribute("m_no");
				System.out.println(m_no8);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no8);
				request.setAttribute("cartCount", cartCount);
			}
			forwardPath = "redirect:McDelivery_main.do";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return forwardPath;
	}


}
