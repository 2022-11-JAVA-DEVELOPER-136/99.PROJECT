<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	/*
	String[] pNoStr = request.getParameterValues("pNo");
	int[] pNo = new int[pNoStr.length];
	String[] pName = request.getParameterValues("pName");
	String[] cQtyStr = request.getParameterValues("cQty");
	int[] cQty= new int[cQtyStr.length];
	String[] cPriceStr = request.getParameterValues("cPrice");
	int[] cPrice= new int[cPriceStr.length];
	for(int i=0;i<pNoStr.length; i++){
		System.out.println("---------");
		pNo[i]=Integer.parseInt(pNoStr[i]); //제품번호
		cQty[i]=Integer.parseInt(cQtyStr[i]); //제품별 수량
		cPrice[i]=Integer.parseInt(cPriceStr[i]); //제품가격
		System.out.println("---------");
	}
	int oCnt = Integer.parseInt(request.getParameter("oCnt"));
	System.out.println(oCnt); //총수량
	int oAmount = Integer.parseInt(request.getParameter("oAmount")); //총액
	
	System.out.println("총액"+oAmount);
	
	String aName =(String)request.getParameter("aName"); // 수신인
	String aPhone =(String)request.getParameter("aPhone"); // 수신인 스마트폰 번호
	String aMemo = (String)request.getParameter("aMemo"); //배송 메모
	String aAddress = (String)request.getParameter("aAddress"); // 배송 주소
	*/
	
	String status="status";
	request.setAttribute("status",status);
	RequestDispatcher rqd = request.getRequestDispatcher("order_checkout.jsp");
	rqd.forward(request, response);
	
	
	

%>