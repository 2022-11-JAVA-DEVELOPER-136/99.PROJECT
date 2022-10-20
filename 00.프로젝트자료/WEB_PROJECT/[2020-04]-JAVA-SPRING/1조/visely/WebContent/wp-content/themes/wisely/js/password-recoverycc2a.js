jQuery(document).ready(function($){
	$("#btn-password-recovery").click(function(e){
		// e.preventDefault();
		var email = $("#email").val();

		// validate email first
		// var regex_email = /^([a-zA-Z0-9_\..+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/
		// if(!regex_email.test(email)){
		// 	$("#email").focus();
		// 	$.show_notification_msg_lightbox("이메일이 형식에 맞지 않습니다.");
		// 	return false;
		// }
		// $(".signup-form .message").html("");

		$("#ajax-loading-div").fadeIn();
		$.post(
				pr_params.ajaxurl, { 
				action: 'ipw_password_recovery', 
				user_login: email,
				security: pr_params.security
			}, 
			function(response){
				if(response != null && response.is_succeeded == true && response.ret.success != null){
					$.show_notification_msg_lightbox(response.ret.success);
					$("#btn-password-recovery").fadeOut();
					$("#lb-notification .btn-close").click(function(){
						location.href = "/login/";
					});
				}else if(response.ret.error != null){
					$.show_notification_msg_lightbox(response.ret.error);
				}
			}, "json")
			.always(function(){ $("#ajax-loading-div").fadeOut();});
	});
});
