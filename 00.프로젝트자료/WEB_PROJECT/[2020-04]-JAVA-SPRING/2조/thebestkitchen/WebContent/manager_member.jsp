<%@page import="thebestkitchen.member.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="thebestkitchen.member.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String fCheck = request.getParameter("checkbox");
	if(fCheck==null) fCheck="";
	String fMemberId = request.getParameter("memberId");
	if(fMemberId==null) fMemberId="";
	String fPassword = request.getParameter("password");
	if(fPassword==null) fPassword="";
	String fName = request.getParameter("name");
	if(fName==null) fName="";
	String fPhone = request.getParameter("phone");
	if(fPhone==null) fPhone="";
	String fRetire = request.getParameter("retire");
	if(fRetire==null) fRetire="";
	String fAdmin = request.getParameter("admin");
	if(fAdmin==null) fAdmin="";
	String fAddress = request.getParameter("address");
	if(fAddress==null) fAddress="";
	String fBirth = request.getParameter("birth");
	if(fBirth==null) fBirth="";
	
%>
<%

	
	MemberService memberService = new MemberService();
	ArrayList <Member> memberList = memberService.findMemberList();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->
		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
		<script>

		function Edit(){

			f.action = "manager_member_edit_action.jsp";
			f.submit();
		}
		function Delete(){
			f.action = "manager_member_delete_action.jsp";
			f.submit();
		}
		</script>
	</head>
	<body>
		<h1>회원정보관리</h1>
		<form name="f" method="post">
		<div class="container" style="width:100%;">
		   <div class="row">
		      <div class="col-md-12">
		         <div class="table-responsive">
		            <table id="mytable" class="table table-bordred table-striped">
		               <thead>
		                  <th></th>
		                  <th>Id</th>
		                  <th>Password</th>
		                  <th>Name</th>
		                  <th>Phone</th>
		                  <th>Retire</th>
		                  <th>Admin</th>
		                  <th>Address</th>
		                  <th>Birth</th>
		                  <th>Edit</th>
		                  <th>Delete</th>
		               </thead>
		               <tbody>
		               		<%
							for (Member member : memberList) {
							%>
		              		<tr>
		                    <td><input type="checkbox" class="checkthis" name="checkbox" value="<%=member.getM_id()%>"/></td>
							<td><%=member.getM_id()%></td>
							<td><input type="text" name="password_<%=member.getM_id()%>" value="<%=member.getM_pw()%>" /></td>
							<td><input type="text" name="name_<%=member.getM_id()%>" value="<%=member.getM_name()%>" /></td>
							<td><input type="text" name="phone_<%=member.getM_id()%>" value="<%=member.getM_phone()%>"/></td>
							<td><input type="text" name="retire_<%=member.getM_id()%>" value="<%=member.getM_retire()%>"/></td>
							<td><input type="text" name="admin_<%=member.getM_id()%>" value="<%=member.getM_admin()%>"/></td>
							<td><input type="text" name="address_<%=member.getM_id()%>" value="<%=member.getMd_address()%>|<%=member.getMd_daddress()%>|<%=member.getMd_postcode()%>"/></td>
							<td><input type="text" name="birth_<%=member.getM_id()%>" value="<%=member.getMd_birth()%>"/></td>
		                  <%} %>
			                 <td>
		                        <p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" type="submit" data-title="Edit" data-toggle="modal" data-target="#edit" onclick="Edit()"><span class="glyphicon glyphicon-pencil"></span></button></p>
		                     </td>
		                     <td>
		                        <p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" type="submit" data-title="Delete" data-toggle="modal" data-target="#delete" onclick="Delete()"><span class="glyphicon glyphicon-trash"></span></button></p>
		                     </td>
		                  </tr>
		              
		                  
		               </tbody>
		            </table>
		            
		         </div>
		      </div>
		   </div>
		</div>
		</form>
	</body>
</html>