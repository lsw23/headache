<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/templatemo-style.css" rel="stylesheet">
<!-- DATA TABLES -->
<link href="${pageContext.request.contextPath}/resources/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- Left column -->
	<c:import url="../module2/left.jsp"/>
	<!-- top column -->	
	<c:import url="../module2/top.jsp"/>
		
			<!-- Main content -->
			<div class="templatemo-content-container">
				<div class="templatemo-content-widget white-bg" style="height: 650px;">
					<h2 class="margin-bottom-10">사업자 목록</h2>
					<hr>
					<div class="col-lg-12 col-md-12 row">
						<table id="example1" class="table table-bordered table-striped">
	                    <thead>
	                      <tr>
	                      	<th>사업자 번호</th>
							<th>사업자명</th>
							<th>사업자 연락처</th>
							<th>지점명</th>
							<th>지점 연락처</th>
							<th>지점 주소</th>
	                      </tr>
	                    </thead>
	                    <tbody>
	                    <c:forEach var="o" items="${ownerList}">
		                    <tr>
		                      <td>${o.owner_num}</td>
		                      <td>${o.owner_nm}</td>
		                      <td>${o.branch_owner_tel}</td>
		                      <td>${o.branch_nm}</td>
		                      <td>${o.branch_tel}</td>
		                      <td>${o.branch_addr} ${o.branch_detail_addr}</td>
		                    </tr>
	                    </c:forEach>
	                    </tbody>
	                  	</table>
                  	</div>
				</div>
				<footer class="text-right">
					<p>Copyright &copy; 2084 Company Name | Designed by <a href="http://www.templatemo.com" target="_parent">templatemo</a></p>
				</footer>
			</div>
		</div>
	</div>

	<!-- JS -->
	<!-- jQuery -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js"></script>
	<!-- http://markusslima.github.io/bootstrap-filestyle/ -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-filestyle.min.js"></script>
	<!-- Templatemo Script -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/templatemo-script.js"></script>
	<!-- DATA TABES SCRIPT -->
    <script src="${pageContext.request.contextPath}/resources/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
	
	<script type="text/javascript">
      $(function () {
        $("#example1").dataTable();
        $('#example2').dataTable({
          "bPaginate": true,
          "bLengthChange": true, // jquery.dataTables.js 파일 내에 aLengthMenu로 find
          "bFilter": true,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth":true
        });
      });
    </script>
	
</body>
</html>
					