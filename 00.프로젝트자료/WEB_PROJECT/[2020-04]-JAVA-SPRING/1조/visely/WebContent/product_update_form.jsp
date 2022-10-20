<%@page import="com.itwill.dto.Product"%>
<%@page import="com.itwill.service.ProductServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file= "member_session.jspf" %>
<%
	String pNo = request.getParameter("pNo");
	ProductServiceImpl ps = ProductServiceImpl.getProductService();
	Product p = ps.getProductDetail(Integer.parseInt(pNo));
%>
<!DOCTYPE html>
<html lang="ko-KR" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="UTF-8"/>
<script type="text/javascript">
	function product_update_submit(){
		if (f.pName.value == "") {
			alert("제품 이름을 입력하세요");
			return false;
		}
		if (f.pPrice.value == "") {
			alert("제품 가격을 입력하세요");
			return false;
		}
		if (f.pPoint.value == "") {
			alert("제품 평점을 입력하세요");
			return false;
		}
		if (f.pQty.value == "") {
			alert("제품 잔고를 입력하세요");
			return false;
		}
		if (f.pUnit.value == "") {
			alert("제품 단위를 입력하세요");
			return false;
		}
		f.action="product_update_action.jsp";
		f.method="GET";
		f.submit();
	}
	
	function imgUpload() {

		fImg.action = "A.upload.jsp";
		fImg.method='POST';
		fImg.enctype="multipart/form-data"
		fImg.submit();
		
	}
</script>
<script>var dataLayer=[];</script>
<script>
	dataLayer.push({
		"site_type": "d"
	});
</script>
<script>
	dataLayer.push({
		"sjk_user_number": "",
		"sjk_user_diplay_name": "",
		"sjk_user_email": ""
	});
</script>


<title>회원가입 - 와이즐리 :: 정직한 가격의 독일산 프리미엄 면도날</title>

</head>



<header class="seese-header" style="">

	<!-- Menubar Starts -->
	<jsp:include page="common_top_menu.jsp"/>
	<!-- Menubar End -->
</header>
	    

<div class="seese-containerWrap seese-extra-width">
  <div class="seese-background seese-background-outer">
    <div class="container">
      <div class="seese-background-inner  seese-container-inner" style="">
        <div class="row">

          
          <!-- Content Col Start -->
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 seese-no-sidebar seese-contentCol">
            <div class="row seese-content-area">

                <div class="subsection">
                    <div class="subsection-wrapper wrapper960 paddingtb">
                        <div class="section-content aligncenter">
                            <div class="subsection-text">

								<div class="mypage-title">제품 수정<a href="product_list_admin.jsp" class="btn-arrow-left"><i class="fa fa-angle-left" aria-hidden="true"></i></a></div>
                                <div class="signupBox">
                                    <form class="signup-form" method="post" name="f">
									<input type="hidden" name="gender" value="M" />
                                        <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">번호</label></div>
                                            <div class="col-xs-12 col-sm-10"><input type="text" name="pNo" class="signup-input" readonly="readonly" value="<%=p.getpNO() %>"/></div>
                                        </div>
                                        <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">이름</label></div>
                                            <div class="col-xs-12 col-sm-10"><input type="text" name="pName" class="signup-input" value="<%=p.getpName() %>"/></div>
                                        </div>
                                        <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">가격</label></div>
                                            <div class="col-xs-12 col-sm-10"><input type="number" name="pPrice" class="signup-input" value="<%=p.getpPrice() %>"/></div>
                                        </div>
                                        <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">잔고</label></div>
                                            <div class="col-xs-12 col-sm-10"><input type="number" name="pQty" class="signup-input" value="<%=p.getpStockQty() %>"/></div>
                                        </div>
                                        <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">평점</label></div>
                                            <div class="col-xs-12 col-sm-10"><input type="text" name="pPoint" class="signup-input" value="<%=p.getpPoint() %>"/></div>
                                        </div>
                                       <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">단위</label></div>
                                            <div class="col-xs-12 col-sm-10"><input type="text" name="pUnit" class="signup-input" value="<%=p.getpUnit() %>"/></div>
                                        </div>
                                        <div class="form-group mr-bt35">
                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">설명</label></div>
                                            <div class="col-xs-12 col-sm-10"><input type="text" name="pDesc" class="signup-input" value="<%=p.getpDesc() %>"/></div>
                                        </div>
										<div class="error_msg"></div>
                                        <div class="form-group">
                                            <button type="button"  onclick="product_update_submit()" class="btn-fillBlue aligncenter btn-width250">수정</button>
                                        </div>
                                    </form>
                                    <form onsubmit="imgUpload()"  name="fImg">
									    <div class="row"  align="center">
									    	<input type="hidden" name="pNo" class="TXTFLD" value="<%=p.getpNO() %>">
									        <input type=file name=fileone size=400 class="TXTFLD">
									        <input type=file name=filetwo size=400 class="TXTFLD">
									    </div>
									    <button type="submit" class="btn btn-primary mt-3" >이미지업로드</button>
									 </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
          </div>
          <!-- Content Col End -->
          
        </div>
      </div>
	</div>
  </div>
</div>


</body>

</html>
