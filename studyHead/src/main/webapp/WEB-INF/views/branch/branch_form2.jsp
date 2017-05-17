<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<!-- head -->
	<c:import url="../module/head.jsp" />
	<style type="text/css">
	.textSize{
		width: 400px;
		height: 40px;
	}
	</style>
</head>
<body>
	<!-- top -->
	<c:import url = "../module/top.jsp" />
	
	<!-- left -->
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<c:import url = "../module/left.jsp" />
			<!-- main -->
			<div class="col-sm-10 main">
<!-- ---------------------------------------------------------- -->
				<div class="row">
					<div class="col-sm-8">
						<br><br><br>
						<h1 style="color:#8EC7D0;"><b>지점 등록</b></h1>
						<hr>
						<form action="${pageContext.request.contextPath}/branch/branch_insert_pro" method="post">
						<div class="row">
							<div class="col-sm-2" style="color:#467F88;"><b>지점코드</b></div>
							<div class="col-sm-10 textWidth"><input type="text" id="branch_cd" name="branch_cd" class="textSize form-control"/></div>
						</div>
						<div class="col-sm-12" style="color:#467F88;"><br></div>
						<div class="row">
							<div class="col-sm-2" style="color:#467F88;"><b>대표코드</b></div>
							<div class="col-sm-10"><input type="text" id="branch_owner_cd" name="branch_owner_cd" class="textSize form-control"></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2" style="color:#467F88;"><b>지점명</b></div>
							<div class="col-sm-10"><input type="text" id="branch_name" name="branch_name" class="textSize form-control"/></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2" style="color:#467F88;"><b>주소</b></div>
							<div class="col-sm-10"><input type="text" id="branch_addr" name="branch_addr" class="textSize form-control"/></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2" style="color:#467F88;"><b>연락처</b></div>
							<div class="col-sm-10"><input type="text" id="branch_tel" name="branch_tel" class="textSize form-control"/></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2" style="color:#467F88;"><b>열람실 수</b></div>
							<div class="col-sm-10"><input type="text" id="room_num" name="room_num" class="textSize form-control"/></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2" style="color:#467F88;"><b>회원 수</b></div>
							<div class="col-sm-10"><input type="text" id="member_num" name="member_num" class="textSize form-control"/></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2" style="color:#467F88;"><b>등록일</b></div>
							<div class="col-sm-10"><input type="date" id="branch_in_date" name="branch_in_date" class="textSize form-control"/></div>
						</div>
						<hr>
						<div class="col-sm-12"><input type="submit" class="btn btn-primary" value="등록"></div>	
						</form>
					</div>
					<div class="col-sm-4"></div>
<!-- ---------------------------------------------------------- -->			
			</div>
			
<c:import url = "../module/foot.jsp" />

<footer class="container-fluid" style="background-color: #0275d8;">
		<p class="text-center" style="color: white;">©2016-2017 Company</p>
</footer>
</body>
</html>