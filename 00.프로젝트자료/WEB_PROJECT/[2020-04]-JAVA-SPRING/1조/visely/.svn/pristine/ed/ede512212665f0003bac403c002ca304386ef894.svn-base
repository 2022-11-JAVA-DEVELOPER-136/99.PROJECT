<%@page import="com.itwill.service.CartService"%>
<%@page import="com.itwill.service.OrderDetailService"%>
<%@page import="com.itwill.dto.OrderDetailDTO"%>
<%@page import="com.itwill.dto.OrderDTO"%>
<%@page import="com.itwill.service.OrderService"%>
<%@page import="com.itwill.dto.Address"%>
<%@page import="com.itwill.service.AddressService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="member_session.jspf"%>

<%
	
	request.setCharacterEncoding("UTF-8");
	
	/*
	--주문정보
	id="pNo(%=ordProductCnt%)" 
    id="pName(%=ordProductCnt%)" 
	id="cQty(%=ordProductCnt%)" 
	id="cPrice(%=ordProductCnt%)" 
	*/
	
	/*
	--배송정보
	aName
	aPhone
	cEmail
	aMemo
	aAddress
	*/
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
	String aAddressDetail = (String)request.getParameter("aAddressDetail"); // 상세주소
	
	System.out.println(aName);
	System.out.println(aPhone);
	System.out.println(aMemo);
	System.out.println(aAddress);
	
	/*
	--결재 태그 이름|아이디
	name =payment_method 
	id = payment_method_kakaopay
	id = payment_method_iamport_card 
	id = payment_method_iamport_payco
	*/
	String oCharge = request.getParameter("payment_method");
	System.out.println(oCharge);
	
	
	Object m = session.getAttribute("syncObj");
	
	
	synchronized(m){
		//1.배송정보.
		AddressService as = AddressService.getInstance();
		Address add = new Address(null, aName, aAddress, aAddressDetail, aPhone, cEmail ,aMemo);
		as.createAddress(add); //배송정보 입력 완료.
		add = as.findOneAddress(cEmail); //이메일 검색시 가장 최신의 aNo를 가져옴
		
		//2.주문정보.
		OrderService os = OrderService.getInstance();
		OrderDTO order = new OrderDTO(null,oCnt,oAmount,oCharge,1,null,cEmail,add.getaNo());
		os.InsertOrderService(order); // 주문 정보 입력.
		int ono = os.RecentlyONO(cEmail); //생성된 최신 주문번호를 가지고 온다.
		
		//3.주문상세정보.
		OrderDetailService ods = OrderDetailService.getInstance();
		
		
		for(int i =0; i<pNo.length ; i++){
			OrderDetailDTO detailOrder =new OrderDetailDTO(null,cQty[i],cPrice[i],ono,pNo[i]); //오더번호 최신 필요
			ods.insertOrderDetailService(detailOrder); //제품별로 상세내역 입력
			ods.buyCountAdd(pNo[i], cQty[i]);  //제품별로 판매수량 업데이트 20200210 한종석
		}
		
		
		//주문이 완전히 입력되었으니 카트를 비우겠다.
		CartService cs = CartService.getInstance();
		cs.delete(cEmail);
		
		
		
		
		response.sendRedirect("order_list.jsp");
		return;
	}
%>