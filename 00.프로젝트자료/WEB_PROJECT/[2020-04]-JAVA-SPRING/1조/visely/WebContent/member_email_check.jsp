<%@page import="com.itwill.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String msg = "";
   CustomerService customerService = new CustomerService();
   String email = request.getParameter("email");
   if (email == null || email.equals("")) {
      msg = "이메일을 입력하십시오";
   } else {
      boolean isResult = customerService.isDuplcateEmail(request.getParameter("email"));
      if(isResult == true) {
         msg = "이미 가입한 이메일입니다";
      } else {
         msg = "사용가능한 이메일 입니다";
      }
   }
%>
<%=msg%>