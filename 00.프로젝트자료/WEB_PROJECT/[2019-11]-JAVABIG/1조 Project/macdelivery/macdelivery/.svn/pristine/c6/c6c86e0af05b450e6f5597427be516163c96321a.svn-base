package com.itwill.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.cart.model.CartService;
import com.itwill.member.exception.MemberNotFoundException;
import com.itwill.member.exception.PasswordMismatchException;
import com.itwill.member.model.Member;
import com.itwill.member.model.MemberService;
import com.itwill.summer.Controller;

public class LoginActionController implements Controller {
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		String m_id = request.getParameter("m_id");
		String m_pwd = request.getParameter("m_pwd");
		String forwardPath = null;
		
		try {
			MemberService memberService = new MemberService();
			Member member = memberService.login(m_id, m_pwd);
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			session.setAttribute("m_no", member.getM_no());
			
			if (session.getAttribute("member") != null) {
				int m_no = (int)session.getAttribute("m_no");
				System.out.println(m_no);
				CartService cs = new CartService();
				int cartCount = cs.cartCount(m_no);
				request.setAttribute("cartCount", cartCount);
			}

			forwardPath = "forward:/WEB-INF/view/McDelivery_Main.jsp";

		} catch (MemberNotFoundException e) {
			forwardPath = "forward:/WEB-INF/view/McDelivery_login.jsp";
			request.setAttribute("status", e.status);
		} catch (PasswordMismatchException e) {
			forwardPath = "forward:/WEB-INF/view/McDelivery_login.jsp";
			request.setAttribute("status", e.status);
		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		
		return forwardPath;
	}
}
