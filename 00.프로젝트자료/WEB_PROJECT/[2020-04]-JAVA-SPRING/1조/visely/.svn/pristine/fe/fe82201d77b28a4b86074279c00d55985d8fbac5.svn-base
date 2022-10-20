/**
 * 
 */
function moveBoardModifyFrm() {
	document.f.action='qna_board_modify_form.jsp';
	document.f.method='POST';
	document.f.submit();
}

function moveBoardWriteFrm() {
	location.href='qna_board_write_form.jsp';
}

function moveBoardList() {
	  location.href='qna_board_list.jsp';
}

function moveBoardReplyFrm() {
	document.f.action='qna_board_reply_write_form.jsp';
	document.f.method='POST';
	document.f.submit();
}

function moveDeleteAction() {
	document.f.action='qna_board_delete_action.jsp';
	document.f.method='POST';
	document.f.submit();
}

function isNotEmpty() {
	  if(document.f.title.value == "") {
		  alert("제목을 입력해주세요");
		  f.titile.focus();
		  return;
	  }
	  if(document.f.content.value == "") {
		  alert("내용을 입력해주세요");
		  f.content.focus();
		  return;
	  }
	  document.f.action='qna_board_write_action.jsp';
	  document.f.method='POST';
	  document.f.submit();
}

function isNotEmptyReply() {
	  if(document.f.content.value == "") {
		  alert("내용을 입력해주세요");
		  f.content.focus();
		  return;
	  }
	  document.f.action='qna_board_reply_write_action.jsp';
	  document.f.method='POST';
	  document.f.submit();
}

