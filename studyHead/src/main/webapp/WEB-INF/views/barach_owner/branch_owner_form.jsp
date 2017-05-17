<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="templatemo">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/templatemo-style.css" rel="stylesheet">
</head>
<body>
	<!-- Left column -->
	<c:import url="../module2/left.jsp"/>
	<!-- top column -->	
	<c:import url="../module2/top.jsp"/>
		
			<!-- Main content -->
			<div class="templatemo-content-container">
				<div class="templatemo-content-widget white-bg">
					<h2 class="margin-bottom-10">지점 대표 등록</h2>
					<hr>
					<form action="index.html" class="templatemo-login-form"
						method="post" enctype="multipart/form-data">
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputFirstName">사업자 번호</label> 
								<input type="text" class="form-control" id="owner_num" name="owner_num" >
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputUsername">사업자명</label> 
								<input type="text" class="form-control" id="owner_nm" name="owner_nm" >
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputEmail">지점명</label> 
								<input type="password" class="form-control" id="branch_nm" name="branch_nm" >
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputLastName">아이디</label> 
								<input type="text" class="form-control" id="branch_owner_id" name="branch_owner_id">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputNewPassword">비밀번호</label> 
								<input type="password" class="form-control" id="branch_owner_pw" name="branch_owner_pw">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputConfirmNewPassword">비빌번호 확인</label> 
								<input type="password" class="form-control" id="inputConfirmPassword">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputNewPassword">주소</label> 
								<input type="password" class="form-control" id="branch_owner_addr" name="branch_owner_addr">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputConfirmNewPassword">연락처</label> 
								<input type="password" class="form-control" id="branch_owner_tel" name="branch_owner_tel">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-12 form-group">
								<label for="inputNote">Note</label>
								<textarea class="form-control" id="inputNote" rows="3"></textarea>
							</div>
						</div>
						<div class="form-group text-right">
							<button type="submit" class="templatemo-blue-button">Submit</button>
							<button type="reset" class="templatemo-white-button">Reset</button>
						</div>
					</form>
				</div>
				
				<footer class="text-right">
					<p>
						Copyright &copy; 2084 Company Name | Designed by <a
							href="http://www.templatemo.com" target="_parent">templatemo</a>
					</p>
				</footer>
			</div>
		</div>
	</div>

	<!-- JS -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-filestyle.min.js"></script>
	<!-- http://markusslima.github.io/bootstrap-filestyle/ -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/templatemo-script.js"></script>
	<!-- Templatemo Script -->
</body>
</html>
