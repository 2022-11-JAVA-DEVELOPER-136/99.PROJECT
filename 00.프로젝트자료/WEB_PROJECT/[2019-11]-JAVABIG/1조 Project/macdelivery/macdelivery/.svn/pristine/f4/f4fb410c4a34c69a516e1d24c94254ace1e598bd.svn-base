package com.itwill.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.member.model.MemberService;
import com.itwill.summer.Controller;

public class MemberDeleteActionController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String forwardPath = null;
		try {
			MemberService memberService = new MemberService();
			
			memberService.remove((int)session.getAttribute("m_no"));
			session.invalidate();
			
			forwardPath = "redirect:main.do";
		} catch (Exception e) {
			e.printStackTrace();
		}

		return forwardPath;
	}

}
