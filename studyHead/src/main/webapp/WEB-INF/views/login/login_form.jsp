<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Calm breeze login screen</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="resources/css/style.css">
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/index.js"></script>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<h1>Welcome</h1>

			<form class="form"
				action="${pageContext.request.contextPath}/login/login_pro"
				method="POST">
				<input name="head_id" type="text" placeholder="Username"> 
				<input name="head_pw" type="password" placeholder="Password">
				<button type="submit" id="login-button">Login</button>
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