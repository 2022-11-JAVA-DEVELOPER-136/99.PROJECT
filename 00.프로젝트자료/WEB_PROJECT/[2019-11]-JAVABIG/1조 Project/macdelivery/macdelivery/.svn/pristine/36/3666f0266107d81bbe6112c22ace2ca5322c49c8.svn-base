package com.itwill.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwill.summer.Controller;

public class MemberModifyFormController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String forwardPath = null;
		if(session.getAttribute("member") == null) {
			forwardPath = "forward:/WEB-INF/view/error.jsp";
		}
		forwardPath = "forward:/WEB-INF/view/mypage.jsp";
		
		
		return forwardPath;
	}
	
	
}
