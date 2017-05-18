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
	<c:import url="./module2/left.jsp"/>
	<!-- top column -->	
	<c:import url="./module2/top.jsp"/>
		
			<!-- Main content -->
			<div class="templatemo-content-container">
				<div class="templatemo-content-widget white-bg">
					<h2 class="margin-bottom-10">Preferences</h2>
					<p>Here goes another form and form controls.</p>
					<form action="index.html" class="templatemo-login-form" method="post" enctype="multipart/form-data">
					
						<div class="row form-group">
							<div class="col-lg-12">
								<label class="control-label templatemo-block">File Input</label>
								<!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
								<input type="file" name="fileToUpload" id="fileToUpload" class="filestyle" data-buttonName="btn-primary" data-buttonBefore="true" data-icon="false">
								<p>Maximum upload size is 5 MB.</p>
							</div>
						</div>
						<div class="form-group text-right">
							<button type="submit" class="templatemo-blue-button">Update</button>
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
					