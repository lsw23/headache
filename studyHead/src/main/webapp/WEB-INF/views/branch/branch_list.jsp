<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<!-- head -->
	<c:import url="../module/head.jsp" />
</head>
<body>
	<!-- top -->
	<c:import url = "../module/top.jsp" />
	
	<!-- left -->
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<c:import url = "../module/left.jsp" />
			<!-- main -->
			<div class="col-sm-10 main row">
<!-- ---------------------------------------------------------- -->	
				<div class="col-sm-10">
					<br><br><br>
					<h1 style="color:#8EC7D0;"><b>지점 목록</b></h1>
					<hr>
					<div>
						<b>전체 글 수 :</b> ${totalRowCount}
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
					
					<a href="${pageContext.request.contextPath}/branch"><input type="button" class="btn btn-default" value="등록" style="float: left;"/></a>
					
					<nav aria-label="Page navigation example">
					    <ul class="pagination justify-content-center">
					        <c:if test="${currentPage > 1}">
					            <li class="page-item">
					            	<a class="page-link" href="${pageContext.request.contextPath}/branch/branch_list?currentPage=${currentPage-1}" aria-label="Previous">
					            		<span aria-hidden="true">&laquo;</span>
					            		<span class="sr-only">Previous</span>
					            	</a>
					            </li>	
					        </c:if>
					        <c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
								<c:if test="${i == currentPage}">
									<li class="page-item"><a class="page-link" href="#">${i}</a></li>
								</c:if>
								<c:if test="${i != currentPage}">
									<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/branch/branch_list?currentPage=${i}">${i}</a></li>
								</c:if>
							</c:forEach>
							
					        <c:if test="${currentPage < lastPage}">
					            <li class="page-item">
					            	<a class="page-link" href="${pageContext.request.contextPath}/branch/branch_list?currentPage=${currentPage+1}" aria-label="Next">
					            		<span aria-hidden="true">&raquo;</span>
					        			<span class="sr-only">Next</span>
					            	</a>	
					            </li>	
					        </c:if>
					    </ul>
   					</nav> 
				</div>
				<div class="col-sm-2"></div>
			</div>     
<!-- ---------------------------------------------------------- -->			
		</div>
<c:import url = "../module/foot.jsp" />
</body>
</html>