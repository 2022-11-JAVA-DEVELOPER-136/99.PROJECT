<%@ page contentType="text/html;charset=UTF-8" %>  
<%@ page language="java" import="java.text.*" %> 

<% request.setCharacterEncoding("UTF-8"); %> 
<!--  


 int total=Integer.parseInt(request.getParameter("total"));
 int count=Integer.parseInt(request.getParameter("count"));
 
%>
--> 
<HTML>
<HEAD>

</HEAD>
<BODY>
<P>
[<A href= '#' onclick = 'history.back()'>이전페이지로 이동</A>] 
<FORM method=post action="shop_main.jsp">
<TABLE border=0 width=400 >
 <TR>
  <TH bgcolor=#003399 colspan=2>
   <FONT size=+1 color=white> 주문서 작성하기</FONT>
  </TH>
 </TR>
 <TR>
  <TH width=30% bgcolor=#0033cc>
   <FONT size=-1 color=white>이름</FONT>
  </TH>
  <TD bgcolor=#eeeeee>
   <INPUT type=text name=wname size=30>
  </TD>
 </TR>
 <TR>
  <TH width=30% bgcolor=#0033cc>
   <FONT size=-1 color=white>결제 유형</FONT>
  </TH>
  <TD bgcolor=#eeeeee>
   <FONT size=-1>
    <INPUT type=radio name=pay value="card">카드
    <INPUT type=radio name=pay value="cash">온라인 입금
   </FONT>
  </TD>
 </TR>
 <TR>
  <TH width=30% bgcolor=#0033cc>
   <FONT size=-1 color=white>카드 번호</FONT>
  </TH>
  <TD bgcolor=#eeeeee>
   <INPUT type=text name=number size=30>
  </TD>
 </TR>
  <TH width=30% bgcolor=#0033cc>
   <FONT size=-1 color=white>전화번호</FONT>
  </TH>
  <TD bgcolor=#eeeeee>
   <INPUT type=text name=tel size=30>
  </TD>
 </TR>
 <TR>
  <TH width=30% bgcolor=#0033cc>
   <FONT size=-1 color=white>주문 총 금액</FONT>
  </TH>
  <TD bgcolor=#eeeeee>
  <!%=p_price %>원
  
  </TD>
 </TR>
 <TR>
  <TD colspan=2>
   
   <INPUT type=button value=" 확인 " onClick="check(this.form)" >
   <INPUT type=reset value=" 다시쓰기 " >
  </TD>
 </TR>
</TABLE>
</CENTER>
</FORM>
</BODY>
</HTML>