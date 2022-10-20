<%@page import="com.itwill.dto.Customer"%>
<%@page import="com.itwill.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	if(request.getMethod().equalsIgnoreCase("GET")) {
		response.sendRedirect("member_login_form.jsp");
		return;
	}
	*/
	/*장바구니, 바로구매에 의한 로그인인 경우 로그인 성공 시 해당 상품 디테일로 이동한다.*/
	
	String redirectPage = (String)session.getAttribute("redirectPage");
	if(redirectPage == null || redirectPage.equals("")){
		redirectPage = "product_list.jsp";
	} else {
		//리다이렉트 페이지를 변수에 셋팅 후 해당 세션값을 초기화 해줌
		session.setAttribute("redirectPage", "");
	}
	
	
	String cEmail = request.getParameter("log");
	String cPassword = request.getParameter("pwd");
	request.setAttribute("log", cEmail);
	request.setAttribute("pwd", cPassword);
	Customer customer = null;
	try {
		CustomerService customerService = new CustomerService();
		if(cEmail == null) {
			response.sendRedirect("member_login_form.jsp");
		} else {
			if(customerService.isDuplcateEmail(cEmail)) {
				if(customerService.findByEmail(cEmail).getcPassword().equals(cPassword)) {
					session.setAttribute("loginId", cEmail);
						if(cEmail.equalsIgnoreCase("administrator@mail.com")) {
							response.sendRedirect("product_list_admin.jsp");
						} else {
							response.sendRedirect(redirectPage);
						}
				} else {
					//out.print("<script>alert('비밀번호 불일치');</script>");
					//out.print("<script>location.href='member_login_form.jsp'</script>");
					String msg = "비밀번호 불일치";
					request.setAttribute("msg", msg);
					RequestDispatcher rd = request.getRequestDispatcher("member_login_form.jsp");
					rd.forward(request, response);
				}
			} else {
				//out.print("<script>alert('이메일 존재하지 않습니다');</script>");
				//out.print("<script>location.href='member_login_form.jsp'</script>");
				String msg = "이메일 존재하지 않습니다";
				request.setAttribute("msg", msg);
				RequestDispatcher rd = request.getRequestDispatcher("member_login_form.jsp");
				rd.forward(request, response);
			}
		}
	} catch(Exception e) {
		e.printStackTrace();
		out.print("<script>alert('오류가 발생했습니다');</script>");
		out.print("<script>location.href='member_login_form.jsp'</script>");
		return;
	}
%>