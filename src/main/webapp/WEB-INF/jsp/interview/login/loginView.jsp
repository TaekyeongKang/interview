<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<%@ include file="/WEB-INF/jsp/interview/layout/commonLib.jsp" %>

<!-- icheck bootstrap -->
<link rel="stylesheet"
	href="${cp }/bootstrap/build/scss/plugins/_icheck-bootstrap.scss">
<!-- Theme style -->
<link rel="stylesheet"
	href="${cp }/bootstrap/dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<style>
body.hold-transition login-page {
	background-image: url('/resources/images/intro.jpg');
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
    <script type="text/javascript" src="${cp }/js/js.cookie-2.2.1.min.js"></script>
<script>
$(document).ready(function(){
	// 로그인 버튼이 클릭됐을 때 이벤트 핸들러
	 	$('button').on('click',function(){
		if($("input[type=checkbox]").prop("checked")){
			Cookies.set("REMEMBERME","Y");
			Cookies.set("USERID",$('#userid').val());
		}else{
			Cookies.remove("REMEMBERME");
			Cookies.remove("USERID");
		}
		// submit
		$('form').submit();
	 	 })
	if(Cookies.get("REMEMBERME")=="Y"){
		$("input[type=checkbox]").prop("checked",true);
		$("#userid").val(Cookies.get("USERID"));
	}

})
function initData(){
	$('#userid').val("brown");
	$('#pass').val("brownPass");
}

function getCookieValue(cookieName){
	var cookie = document.cookie;
	var cookies = cookie.split("; ");
	var cookieSplit =  new Array();
	var cookieNames =  new Array();
	var cookieVlaues =  new Array();
	for(i=0; i<cookies.length; i++){
		cookieSplit.push(cookies[i].split("="));
		cookieNames.push(cookieSplit[i][0]);
		cookieVlaues.push(cookieSplit[i][1]);
	}	

	
	for(i=0; i<cookieNames.length; i++){
		if(cookieName==cookieNames[i]){
			return cookieVlaues[i];
		} 
		
	}
	return "";
}



function setCookie(cookieName, cookieValue, expires){
	var today = new Date();
	// 현재 날짜에서 미래로 +expires 만큼 한 날짜 구하기
	today.setDate(today.getDate()+expires);
	document.cookie = cookieName + "=" + cookieValue + "; path=/; expires=" + today.toGMTString() + "; "
	console.log(document.cookie);
}

function deleteCookie(cookieName){
	setCookie(cookieName,"",-1);
}

window.onload = function(){
	usernm = getCookieValue("USERID");
	rememberme = getCookieValue("REMEMBERME");
	notexist = getCookieValue("NOTEXISTS_COOKIE");
}
</script>

</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="#"><b>관리자 로그인</b></a>
		</div>
		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">Sign in to start your session</p>

				<form action="${cp }/login/process" method="post">
					<div class="form-group has-feedback">
						<input id="userid" type="text" class="form-control" name="userid" placeholder="아이디를 입력하세요." value="${param.userid }"> 
						<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input id="pass" type="password" class="form-control" name=pass placeholder="패스워드를 입력하세요"  > 
						<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>
					<div class="row">
						<div class="col-sm-8">
							<div class="checkbox icheck">
								<label> <input type="checkbox" name="rememberMe"
									value=""> Remember Me
								</label>
							</div>
						</div>
						<!-- /.col -->
						<div class="col-sm-4">
							<button type="button" class="btn btn-primary btn-block btn-flat">로그인</button>
						</div>
						<!-- /.col -->
					</div>
				</form>

			</div>
			<!-- /.login-box-body -->
		</div>
	</div>
	<!-- /.login-box -->


</body>
</html>

