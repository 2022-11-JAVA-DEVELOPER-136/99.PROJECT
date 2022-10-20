<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@include file= "member_session.jspf" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>상품등록</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <style>

    .col1 {width:100px;}
    .col2 {width:600px;}
  </style>
  
  
  <script type="text/javascript">
	function productCreate() {
		if (f.pName.value == "") {
			alert("상품명을 입력하십시요.");
			f.title.focus();
			return false;
		}
		if (f.pPrice.value == "") {
			alert("판매가격을 입력하십시요.");
			f.writer.focus();
			return false;
		}
		
		f.action = "product_write_action.jsp";
		f.method='POST';
		f.submit();
		
	}
	
</script>
  
</head>
<body>

<!-- common_top_menu start -->
		<header class="seese-header" style="">
			<!-- Menubar Starts -->
			<jsp:include page="common_top_menu.jsp"/>
			<!-- Menubar End -->
		</header>
<!-- common_top_menu end -->

<div class="seese-containerWrap seese-extra-width">
  <div class="seese-background seese-background-outer">
    <div class="container">
      <div class="seese-background-inner  seese-container-inner" style="">
        <div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 seese-no-sidebar seese-contentCol">
					    <div class="row seese-content-area">
					        <div class="section-content aligncenter">
							    <div class="subsection-text">
									<div class="mypage-title">상품등록<a href="product_list_admin.jsp" class="btn-arrow-left"><i class="fa fa-angle-left" aria-hidden="true"></i></a></div>
							            <div class="signupBox">
										  <form class="signup-form" onsubmit="productCreate()" name="f">
										  	<div class="form-group mr-bt35">
	                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">상품명</label></div>
	                                            <div class="col-xs-12 col-sm-10"><input type="text" class="form-control" placeholder="" name="pName"></div>
	                                        </div>
										    <div class="form-group mr-bt35">
	                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">상품설명</label></div>
	                                            <div class="col-xs-12 col-sm-10"><input type="text" class="form-control" placeholder="" name="pDesc"></div>
	                                        </div>
										    <div class="form-group mr-bt35">
	                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">판매단위</label></div>
	                                            <div class="col-xs-12 col-sm-10"><input type="text" class="form-control" placeholder="" name="title" value="개"></div>
	                                        </div>
										    <div class="form-group mr-bt35">
	                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">단가</label></div>
	                                            <div class="col-xs-12 col-sm-10"><input type="text" class="form-control" placeholder="" name="pPrice"></div>
	                                        </div>
										    <div class="form-group mr-bt35">
	                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">재고량</label></div>
	                                            <div class="col-xs-12 col-sm-10"><input type="text" class="form-control" placeholder="" name="pStockQty" value=0></div>
	                                        </div>
										    <div class="form-group mr-bt35">
	                                            <div class="col-xs-12 col-sm-2 control-label"><label for="inputEmail3">평점</label></div>
	                                            <div class="col-xs-12 col-sm-10"><input type="text" class="form-control" placeholder="" name="pPoint" value=5></div>
	                                        </div>
										    
										    <button type="submit" class="btn btn-primary mt-3" >내용저장</button>
										    <a href='product_list_admin.jsp'><button type="button" class="btn btn-primary mt-3">상품리스트</button></a>
										  </form>
										</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
