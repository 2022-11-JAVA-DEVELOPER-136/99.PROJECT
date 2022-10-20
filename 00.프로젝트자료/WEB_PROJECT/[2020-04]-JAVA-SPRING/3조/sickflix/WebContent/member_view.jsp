<%@page import="com.itwill.member.MemberNotFoundException"%>
<%@page import="com.itwill.member.Member"%>
<%@page import="com.itwill.member.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="member_login_check.jspf" %> 

<%
	Member member=null;
	String m_id = (String) session.getAttribute("sM_id");
	try{
		MemberService memberService=MemberService.getInstance();
		member = memberService.findMember(m_id);
	}catch(MemberNotFoundException e){
		e.printStackTrace();
		response.sendRedirect("user_error.jsp");
		return;
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("user_error.jsp");
		return;
	}
%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>사용자 관리</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/user.css" type="text/css">
<script type="text/javascript">
	function jumunHistory() {
		f.action = "jumun_history.jsp";
		f.submit();
	}

	function shopMain() {
		f.action = "shop_main.jsp";
		f.submit();
	}
	
	function memberModify() {
		f.action = "member_modify_form.jsp";
		f.submit();
	}

	function memberRemove() {
		if (confirm("정말 삭제하시겠습니까?")) {
			f.action = "member_remove_action.jsp";
			f.method = 'POST';
			f.submit();
		}
	}
	
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			
<jsp:include page="include_common_top.jsp"/>
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->
		<!-- navigation start-->
		<div id="navigation">
			<!-- include_common_left.jsp start-->
			<jsp:include page="include_common_left.jsp"/>
			<!-- include_common_left.jsp end-->
		</div>
		<!-- navigation end-->
		<!-- wrapper start -->
		<div id="wrapper">
			<!-- content start -->

			<!-- include_content.jsp start-->
			<div id="content">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td>
							<!--contents--> <br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>사용자 정보보기</b></td>
								</tr>
							</table> <!-- view Form  -->
							<form name="f" method="post">
							<input type="hidden" name="m_id" value="<%=member.getM_id()%>" />
								<table border="0" cellpadding="0" cellspacing="1" width="590"
									bgcolor="BBBBBB">
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">사용자
											아이디</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=member.getM_id()%>
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">이름</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=member.getM_name()%>
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">전화번호</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=member.getM_phone()%>
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="E6ECDE" height="22">이메일주소</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10">
											<%=member.getM_email()%>
										</td>
									</tr>
								</table>
							</form> <br />
							<table border="0" cellpadding="0" cellspacing="1">
								<tr>
									<td align=center>
										<input type="button" value="주문내역" onClick="jumunHistory()"> &nbsp; 
									    <input type="button" value="수정" onClick="memberModify()"> &nbsp; 
										<input type="button" value="탈퇴" onClick="memberRemove()"> &nbsp; 
										<input type="button" value="메인" onClick="shopMain()"></td> 
													<!-- 어디로 이동할지 정하기 .  -->
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
			
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp"/>
			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>
