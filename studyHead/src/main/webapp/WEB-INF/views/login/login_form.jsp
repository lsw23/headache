<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Calm breeze login screen</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="resources/css/login.css">
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/index.js"></script>

<script type="text/javascript">
 $(document).ready(function(){
	 $('#login-button').click(function(){
		 if($('#head_id').val()==''){
			 alert('아이디를 입력해주세요.');
			 $('#head_id').focus();
		 }else if($('#head_pw').val()==''){
			 alert('비밀번호를 입력해주세요.');
			 $('#head_pw').focus();
		 }else{
			 $('#loginForm').submit();
		 };
	 });
 });
</script>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<h1>Welcome</h1>
			<form id="loginForm" class="form"
				action="${pageContext.request.contextPath}/login/login_pro"
				method="POST">
				<input id="head_id" name="head_id" type="text" value="id01"/> 
				<input id="head_pw" name="head_pw" type="password" value="pw01"/>
				<input id="login-button" type="button" value="Login"/>
			</form>
		</div>
		<ul class="bg-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
</body>
</html>