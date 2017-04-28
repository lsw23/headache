<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>HEAD LOGIN</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/login/login_pro" method="POST">
	아이디 : <input name="head_id" type="text">
	비밀번호 : <input name="head_pw" type="password">
	<input type="submit" value="로그인">
	</form>
</body>
</html>