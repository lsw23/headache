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
				<div class="container">
					<h1>독서실 회원 리스트</h1>
					<div>전체행의 수 : ${totalRowCount}</div>
					<table class="table table-striped">
						<thead>
						<tr>				
							<th>지점명</th>
							<th>연락처</th>
							<th>주소</th>
							<th>등록일</th>
							<th>열람실 수</th>
							<th>회원 수</th>
						</tr>
						</thead>
						<tbody>
							<c:forEach var="b" items="${list}">
							<tr>						
							<td><a href="${pageContext.request.contextPath}/branch/branch_view?branch_cd=${b.branch_cd}">${b.branch_cd}</a></td>
								<td>${b.branch_name}</td>
								<td>${b.branch_tel}</td>
								<td>${b.branch_addr}</td>
								<td>${b.branch_in_date}</td>
								<td>${b.room_num}</td>
								<td>${b.member_num}</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<ul class="pager">
						<c:if test="${currentPage > 1}">
							<li class="previous"><a href="${pageContext.request.contextPath}/member/member_list?currentPage=${currentPage-1}">이전</a></li>
						</c:if>
						<c:if test="${currentPage < lastPage}">
							<li class="next"><a href="${pageContext.request.contextPath}/member/member_list?currentPage=${currentPage+1}">다음</a></li>
						</c:if>
					</ul>
					<div>
						<a class="btn btn-default" href="${pageContext.request.contextPath}/member/member_form">게시글 입력</a>
					</div>
				</div>
<!-- ---------------------------------------------------------- -->			
			</div>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>

	<script src="resources/js/scripts.js"></script>
</body>
</html>