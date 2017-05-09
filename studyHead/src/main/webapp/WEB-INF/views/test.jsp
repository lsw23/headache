<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>The Story - Free Bootstrap Theme</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">  
	<!-- load stylesheets -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400">  
	<!-- Google web font "Open Sans" -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/test/css/bootstrap.min.css">                                                
	<!-- Bootstrap style -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/test/css/flexslider.css">                                                   
	<!-- Flexslider style -->       
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/test/css/templatemo-style.css">                                           
	<!-- Templatemo style -->
	<style type="text/css">
	.background{
		background: url(/head/resources/test/img/main4.jpg) no-repeat center center fixed; 
		-webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;
	}
	
	.box {
		display: block;
		padding: 10px;
		margin-top: 50px;
		margin-left: 50px;
		width: 300px;
	}
	
	.menu-box {
		display: block;
	    margin-top: 30px;
	    margin-left: -10px;
	    width: 300px;
	    top: auto;
	}
	a {
		color: white;
		text-decoration: none
	}
	
	a:focus, a:hover {
		color: black;
	}
	</style>
</head>
<body class="background">   
	<header class="box box-white">
	    <a href="javascript:void(0)" class="js-site-title">
	        <h1 class="box-text site-title-text">The Study Room</h1>
	    </a>
	    <nav class="js-nav">
	    	<div class="nav-items-container">
	    		<div data-nav-item-id="page-1" class="block-keep-ratio block-keep-ratio-1-1 block-width-half menu-box box-white box-nav-item js-nav-item pull-xs-left">
	                <div class="block-keep-ratio-content box-nav-item-link">
	                    <div class="box-text box-text-nav-item flexbox-center">
	                    	<a href="#">Dashboard</a>
	                    	<hr style="width: 200px;">
	                    	<a href="#">지점 관리</a>
	                    	<hr style="width: 200px;">
	                    	<a href="#">지점대표 관리</a>
	                    	<hr style="width: 200px;">
	                    	<a href="#">사이트 안내</a>
	                    </div>
	                </div>
	            </div>
	    	</div>
	    </nav>            
	</header>
   	
	<!-- load JS files -->
	<script src="${pageContext.request.contextPath}/resources/test/js/jquery-1.11.3.min.js"></script> <!-- jQuery -->
	<script src="${pageContext.request.contextPath}/resources/test/js/jquery.flexslider-min.js"></script> <!-- Flex Slider -->
	<script src="${pageContext.request.contextPath}/resources/test/js/jquery.backstretch.min.js"></script> <!-- Backstretch http://srobbin.com/jquery-plugins/backstretch/ -->
	<script src="${pageContext.request.contextPath}/resources/test/js/templatemo-script.js"></script> <!-- Templatemo scripts -->
</body>
</html>