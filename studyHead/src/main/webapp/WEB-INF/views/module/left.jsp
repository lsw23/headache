<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<header class="templatemo-site-header">
				<center><h1>Zak<b>SIM</b></h1></center>
			</header>
			<div class="profile-photo-container">
				<img src="${pageContext.request.contextPath}/resources/images/profile-photo.jpg" alt="Profile Photo"
					class="img-responsive">
				<div class="profile-photo-overlay"></div>
			</div>
			<!-- <form class="templatemo-search-form" role="search">
				<div class="input-group">
					<button type="submit" class="fa fa-search"></button>
					<input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
				</div>
			</form> -->
			<div class="mobile-menu-icon">
				<i class="fa fa-bars"></i>
			</div>
			<nav class="templatemo-left-nav">
				<ul>
					<li><a href="${pageContext.request.contextPath}/dashboard/dashboard"><i class="fa fa-home fa-fw"></i>Dashboard</a></li>
					<li><a href="#"><i class="fa fa-bar-chart fa-fw"></i>Charts</a></li>
					<li><a href="${pageContext.request.contextPath}/barach_owner/branch_owner_insert"><i class="fa fa-handshake-o fa-fw"></i>사업자 정보 등록</a></li>
					<li><a href="${pageContext.request.contextPath}/barach_owner/branch_owner_list"><i class="fa fa fa-server fa-fw"></i>사업자 목록</a></li>
					<li><a href="#"><i class="fa fa-eject fa-fw"></i>Sign Out</a></li>
				</ul>
			</nav>
		</div>