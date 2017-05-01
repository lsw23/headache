<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="A Bootstrap 4 admin dashboard theme that will get you started. The sidebar toggles off-canvas on smaller screens. This example also include large stat blocks, modal and cards. The top navbar is controlled by a separate hamburger toggle button." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Codeply">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/styles.css" />
<title>지점등록</title>
</head>
<body>
<!-- top -->
	<c:import url = "../module/top.jsp" />
<!-- left -->
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<c:import url = "../module/left.jsp" />
<!--/모듈 여기까지-->
			<div class="col-md-9 col-lg-10 main">
<!-- ---------------------------------------------------------- -->
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
<!-- ---------------------------------------------------------- -->			
			</div>
		</div>
	</div>
<!--scripts loaded here-->

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>

	<script src="js/scripts.js"></script>
</body>
</html>