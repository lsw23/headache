<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/styles.css">
</head>
<body>
	<div class="container">
		<div class="col-lg-2"></div>
		<div class="col-lg-10">
			<br>
			<h1>지점 등록</h1>
			<hr>
			<form action="${pageContext.request.contextPath}/branch/branch_insert_pro">
			<div class="group">
				<div class="col-sm-2">지점코드</div>
				<div class="col-sm-10"><input type="text" id="branch_cd" name="branch_cd"/></div>
			</div>
			<div class="col-sm-12"><br></div>
			<div class="group">
				<div class="col-sm-2">대표코드</div>
				<div class="col-sm-10"><input type="text" id="branch_owner_cd" name="branch_owner_cd"/></div>
			</div>
			<div class="col-sm-12"><br></div>
			<div class="group">
				<div class="col-sm-2">주소</div>
				<div class="col-sm-10"><input type="text" id="branch_addr" name="branch_addr"/></div>
			</div>
			<div class="col-sm-12"><br></div>
			<div class="group">
				<div class="col-sm-2">연락처</div>
				<div class="col-sm-10"><input type="text" id="branch_tel" name="branch_tel"/></div>
			</div>
			<div class="col-sm-12"><br></div>
			<div class="group">
				<div class="col-sm-2">열람실 수</div>
				<div class="col-sm-10"><input type="text" id="room_num" name="room_num"/></div>
			</div>
			<div class="col-sm-12"><br></div>
			<div class="group">
				<div class="col-sm-2">회원 수</div>
				<div class="col-sm-10"><input type="text" id="member_num" name="member_num"/></div>
			</div>
			<div class="col-sm-12"><br></div>
			<div class="group">
				<div class="col-sm-2">등록일</div>
				<div class="col-sm-10"><input type="date" id="branch_in_date" name="branch_in_date"/></div>
			</div>
			<div class="col-sm-12"><hr><input type="submit" value="등록"></div>	
			</form>
		</div>
	</div>
</body>
</html>