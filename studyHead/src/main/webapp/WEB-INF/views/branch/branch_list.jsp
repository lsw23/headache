<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- top -->
	<c:import url = "../module/top.jsp" />
<!-- left -->
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<c:import url = "../module/left.jsp" />
<!--/모듈 여기까지-->
			<div class="col-sm-10 main row">
<!-- ---------------------------------------------------------- -->	
				<div class="col-sm-10">
					<div>
						<b>전체 글 수 :</b> ${totalRowCount}
						<a href="${pageContext.request.contextPath}/branch"><input type="button" class="btn btn-default" value="등록" style="float: right;"/></a>
					</div><br>
					<table id="user-table" class="table table-hover">
						<thead>
							<tr>
								<th>지점</th>
								<th>연락처</th>
								<th>주소</th>
								<th>열람실수</th>
								<th>회원수</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="b" items="${list}">
								<tr>
									<td>${b.branch_name}</td>
									<td>${b.branch_tel}</td>
									<td>${b.branch_addr}</td>
									<td>${b.room_num}</td>
									<td>${b.member_num}</td>
									<td>${b.branch_in_date}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table><hr>
					<c:if test="${currentPage > 0}">
						<ul class="pager">   	
							<li><a href="${pageContext.request.contextPath}/boardList?currentPage=${previousPage}"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
							<li><a href="${pageContext.request.contextPath}/boardList?currentPage=${currentPage-1}">이전</a></li>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
						<c:if test="${i == currentPage}">	
							<li class="disabled"><a href="#">${i}</a></li>
						</c:if> 
						<c:if test="${i != currentPage}">
							<li><a href="${pageContext.request.contextPath}/boardList?currentPage=${i}">${i}</a></li>
						</c:if>
					</c:forEach>
					<c:if test="${currentPage < lastPage}">
						<li><a href="${pageContext.request.contextPath}/boardList?currentPage=${currentPage+1}">다음</a></li>
						<li><a href="${pageContext.request.contextPath}/boardList?currentPage=${nextPage}"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
					</ul>
					</c:if>
				</div>
				<div class="col-sm-2"></div>
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