package com.itwill.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.member.model.Member;
import com.itwill.member.model.MemberService;
import com.itwill.summer.Controller;

public class MemberModifyActionController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String forwardPath = null;
		if(session.getAttribute("member") == null) {
			forwardPath = "forward:/WEB-INF/view/error.jsp";
		}
		String m_pwd = request.getParameter("m_pwd");
		String m_phone = request.getParameter("m_phone");
		String m_email = request.getParameter("m_email");
		String m_address = request.getParameter("m_address");
		
		Member sessionMember = (Member)session.getAttribute("member");
		Member member = new Member();
		
		member.setM_id(sessionMember.getM_id());
		member.setM_pwd(m_pwd);
		member.setM_name(sessionMember.getM_name());
		member.setM_jumin(sessionMember.getM_jumin());
		member.setM_phone(m_phone);
		member.setM_email(m_email);
		member.setM_address(m_address);
		member.setM_no(sessionMember.getM_no());
		try {
			MemberService memberService = new MemberService();
			memberService.update(member);
			
			session.removeAttribute("member");
			
			session.setAttribute("member", member);
			
			forwardPath = "redirect:mypage.do";
		} catch (Exception e) {
			forwardPath = "forward:/WEB-INF/view/error.jsp";
			e.printStackTrace();
		}
		return forwardPath;
	}
	
	
}
