package com.itwill.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.member.model.MemberService;
import com.itwill.summer.Controller;

public class RegisterIdCheckController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
	
		String m_id = request.getParameter("m_id");
		String m_name = request.getParameter("m_name");
		String m_jumin = request.getParameter("m_jumin");
		String m_phone = request.getParameter("m_phone");
		String m_email = request.getParameter("m_email");
		String m_address = request.getParameter("m_address");
		String forwardPath = null;
		HttpSession session = request.getSession();

		try {
			MemberService memberService = new MemberService();
			boolean isExistedId = memberService.isMatchId(m_id);
			
			request.setAttribute("isExistedId", isExistedId);
			forwardPath = "forward:/WEB-INF/view/McDelivery_register.jsp";
			request.setAttribute("m_id", m_id);
			request.setAttribute("m_name", m_name);
			request.setAttribute("m_jumin", m_jumin);
			request.setAttribute("m_phone", m_phone);
			request.setAttribute("m_email",m_email);
			request.setAttribute("m_address", m_address);
			if (session.getAttribute("member") != null) {
				int m_no = (int)session.getAttribute("m_no");
				System.out.println(m_no);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no);
				request.setAttribute("cartCount", cartCount);
			}
		} catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/view/error.jsp";
		}
		
		return forwardPath;
	}
}
