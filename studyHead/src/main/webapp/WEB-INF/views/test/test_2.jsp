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
	
</head>
<body class="page">     
	<!-- background images -->
	<div class="page-bg-imgs-list">
	    <img src="${pageContext.request.contextPath}/resources/test/img/main4.jpg" id="page-1-img" class="main-img" alt="Login">
		<img src="${pageContext.request.contextPath}/resources/test/img/main4.jpg" id="page-2-img" alt="Gallery">
		<img src="${pageContext.request.contextPath}/resources/test/img/main4.jpg" id="page-3-img" alt="Services">
		<img src="${pageContext.request.contextPath}/resources/test/img/main4.jpg" id="page-4-img" alt="About">                            
	</div>
	
	<div class="container-fluid">
	    <div class="row">
	        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-5 col-xl-4">
	            <div class="header">
	                <!-- site title -->
					<header class="box box-white">
					    <a href="javascript:void(0)" class="js-site-title">
					        <h1 class="box-text site-title-text">The Study Room</h1>
					    </a>            
					</header>
					<!-- site navigation -->
				    <nav class="js-nav">
				        <ul class="nav-items-container">
				            <li data-nav-item-id="page-1" class="block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-left">
				                <a href="#page-1" class="block-keep-ratio-content box-nav-item-link">
				                    <span class="box-text box-text-nav-item flexbox-center">Login</span>
				                </a>
				            </li>
				            <li data-nav-item-id="page-2" class="block-keep-ratio block-keep-ratio-1-1 block-width-half box box-white box-nav-item js-nav-item pull-xs-right">
				                <a href="#page-2" class="block-keep-ratio-content box-nav-item-link">
				                    <span class="box-text box-text-nav-item flexbox-center">Gallery</span>
				                </a>
				            </li>
				        </ul>
				    </nav>    
				</div> 
				<!-- .header -->
			</div>
	
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-7 col-xl-7">
			    <div class="content-wrapper js-content-wrapper">
			       
			        <!-- Login -->
					<section data-page-id="page-1" class="content js-content">
					    <header class="box box-black margin-b-20">
					        <h2 class="box-text page-title-text">Login</h2>
					    </header>
					    <div class="content-text">
					        <p>You are never too old to set another goal or to dream a new dream. - C.S. Lewis
					        </p>
					        <form action="${pageContext.request.contextPath}/login/login_pro" method="post" class="contact-form">
					            <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 form-group-2-col-left">
					                <input type="text" id="head_id" name="head_id" class="form-control" placeholder="User Id" required/>
					            </div>
					            <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 form-group-2-col-right">
					                <input type="password" id="head_id" name="head_pw" class="form-control" placeholder="User Pw" required/>
					            </div>
					            <button type="submit" class="btn btn-primary submit-btn">login</button>
					        </form>                           
					    </div>            
					</section> 	
					<!-- #Login -->
					<!-- gallery -->
					<section data-page-id="page-2" class="content content-gallery js-content">
					    <header class="box box-black margin-b-20">
					        <h2 class="box-text page-title-text">Galllery</h2>
					    </header>
					    <div class="content-text content-text-gallery">
					        <!-- <p>Credits go to <a rel="nofollow" href="http://unsplash.com">Unsplash</a> for images.</p> -->
							<div class="flexslider-wrapper">
								<div id="slider" class="flexslider">
							        <ul class="slides">
							            <li><img src="${pageContext.request.contextPath}/resources/test/img/slider/slide1.jpg" alt="Slide 1" /></li>
										<li><img src="${pageContext.request.contextPath}/resources/test/img/slider/slide2.jpg" alt="Slide 2" /></li>
										<li><img src="${pageContext.request.contextPath}/resources/test/img/slider/slide3.jpg" alt="Slide 3" /></li>
										<li><img src="${pageContext.request.contextPath}/resources/test/img/slider/slide4.jpg" alt="Slide 4" /></li>
										<li><img src="${pageContext.request.contextPath}/resources/test/img/slider/slide5.jpg" alt="Slide 5" /></li>
										<li><img src="${pageContext.request.contextPath}/resources/test/img/slider/slide6.jpg" alt="Slide 6" /></li>
									</ul>
								</div> 
								<!-- #slider -->
								<div id="carousel" class="flexslider">
								    <ul class="slides">
								        <li><img src="${pageContext.request.contextPath}/resources/test/img/slider/thumb1.jpg" alt="Thumbnail 1" /></li>
										<li><img src="${pageContext.request.contextPath}/resources/test/img/slider/thumb2.jpg" alt="Thumbnail 2" /></li>
										<li><img src="${pageContext.request.contextPath}/resources/test/img/slider/thumb3.jpg" alt="Thumbnail 3" /></li>
										<li><img src="${pageContext.request.contextPath}/resources/test/img/slider/thumb4.jpg" alt="Thumbnail 4" /></li>
										<li><img src="${pageContext.request.contextPath}/resources/test/img/slider/thumb5.jpg" alt="Thumbnail 5" /></li>
										<li><img src="${pageContext.request.contextPath}/resources/test/img/slider/thumb6.jpg" alt="Thumbnail 6" /></li>
								    </ul>
								</div>  
								<!-- #carousel -->
							</div>   
					    </div>
					</section> 
					<!-- #gallery -->
				</div>
			</div>	
		</div>
		<!-- footer row -->
	    <footer class="row footer js-footer">
	        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	            <p class="copyright-text">Copyright &copy; 2016 Company Name
	            | Design: <a href="http://www.templatemo.com/tm-480-story" target="_parent" title="Story Bootstrap Theme">The Story</a></p>  
	        </div>                
	    </footer>
	</div>  
	<!-- .container-fluid -->
	<div id="preloader">
	    <div id="status">&nbsp;</div>
	</div><!-- /#preloader -->      
	<!-- load JS files -->
	<script src="${pageContext.request.contextPath}/resources/test/js/jquery-1.11.3.min.js"></script> <!-- jQuery -->
	<script src="${pageContext.request.contextPath}/resources/test/js/jquery.flexslider-min.js"></script> <!-- Flex Slider -->
	<script src="${pageContext.request.contextPath}/resources/test/js/jquery.backstretch.min.js"></script> <!-- Backstretch http://srobbin.com/jquery-plugins/backstretch/ -->
	<script src="${pageContext.request.contextPath}/resources/test/js/templatemo-script.js"></script> <!-- Templatemo scripts -->
</body>
</html>