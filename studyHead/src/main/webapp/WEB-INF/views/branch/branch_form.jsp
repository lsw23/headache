<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- top -->
	<c:import url = "../module/top.jsp" />
<!-- left -->
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<c:import url = "../module/left.jsp" />
<!--/모듈 여기까지-->
			<div class="col-sm-10 main">
<!-- ---------------------------------------------------------- -->
				<div class="row">
					<div class="col-sm-10">
						<h1>지점 등록</h1>
						<hr>
						<form action="${pageContext.request.contextPath}/branch/branch_insert_pro" method="post">
						<div class="row">
							<div class="col-sm-2">지점코드</div>
							<div class="col-sm-10"><input type="text" id="branch_cd" name="branch_cd"/></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2">대표코드</div>
							<div class="col-sm-10"><input type="text" id="branch_owner_cd" name="branch_owner_cd"/></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2">지점명</div>
							<div class="col-sm-10"><input type="text" id="branch_name" name="branch_name"/></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2">주소</div>
							<div class="col-sm-10"><input type="text" id="branch_addr" name="branch_addr"/></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2">연락처</div>
							<div class="col-sm-10"><input type="text" id="branch_tel" name="branch_tel"/></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2">열람실 수</div>
							<div class="col-sm-10"><input type="text" id="room_num" name="room_num"/></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2">회원 수</div>
							<div class="col-sm-10"><input type="text" id="member_num" name="member_num"/></div>
						</div>
						<div class="col-sm-12"><br></div>
						<div class="row">
							<div class="col-sm-2">등록일</div>
							<div class="col-sm-10"><input type="date" id="branch_in_date" name="branch_in_date"/></div>
						</div>
						<div class="col-sm-12"><hr><input type="submit" value="등록"></div>	
						</form>
					</div>
					<div class="col-sm-2">
				</div>
<!-- ---------------------------------------------------------- -->			
			</div>
			
	<c:import url = "../module/top.jsp" />