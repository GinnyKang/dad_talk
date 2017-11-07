<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dadtalk</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://fonts.googleapis.com/earlyaccess/jejugothic.css">
<link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
	<nav class="navbar navbar-fixed-top">
	<div class="top_header">
		<div class="container-fluid">
			<ul class="nav navbar-nav navbar-right"
				style="padding-right: 120px; margin-bottom: -10px;">
				<li><a href="login.html">My</a></li>
				<li><a href="login.html">Login</a></li>
			</ul>
		</div>
	</div>
	<header id="header">
	<div class="container-fluid">
		<div class="navbar-header ">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand-center visible-xs visible-sm" href="index.jsp"
				id="logo_m">DadTalk</a> <a class="navbar-brand hidden-xs hidden-sm"
				href="index.jsp" id="logo">DadTalk</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a class="active" href="/dadtalk_v2//view/index.jsp">Home</a></li>
				<li><a href="/dadtalk_v2//view/babydiary.jsp">육아일기</a></li>
				<li><a href="/dadtalk_v2/view/babyinfo.jsp">육아정보</a></li>
				<li><a href="/dadtalk_v2/view/surinfo.jsp">주변정보</a></li>
				<li><a href="/dadtalk_v2/view/dadtalk.jsp">아빠들의수다</a></li>
			</ul>
		</div>
	</div>
	</header> </nav>
	<section class="main">
	<div class="row">
		<div
			class="col-md-5 col-lg-5 col-md-offset-1 col-lg-offset-1 hidden-xs hidden-sm">
			<img src="../images/dad.png"
				style="width: 100%; height: 300px; opacity: 0.8;">
		</div>
		<div class="col-md-5 col-lg-5 baby-slider">
			<div id="myCarousel" class="carousel slide" data-ride="carousel"
				data-interval="3000">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active" style="width: 100%; height: 300px;">
						<img src="/dadtalk_v2/images/mb1.jpg" class="img-fluid">
					</div>
					<div class="item" style="width: 480px; height: 300px;">
						<img src="/dadtalk_v2/images/mb2.jpeg" class="img-fluid">
					</div>
					<div class="item" style="width: 480px; height: 300px;">
						<img src="/dadtalk_v2/images/mb3.jpeg" class="img-fluid">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<div class="row sub" style="padding-top: 20px; padding-bottom: 20px;">
		<div class="col-md-5 col-lg-5 col-md-offset-1 col-lg-offset-1">
			<p style="border-color: #ff6600; color: #ff6600;">memo</p>
		</div>
		<div class="col-md-5 col-lg-5">
			<p style="border-color: violet; color: violet;">calendar</p>
		</div>
	</div>
	</section>

	<!-- footer -->
	<div class="footer-bottom">
		<div class="container" style="padding: 0px 40px;">
			<p id="team">Wonder Man WM. Ltd.</p>
			<div class="row" style="padding-top: 10px">
				<div class="col-md-4 col-lg-4">
					<img src="/dadtalk_v2/images/c.png">
					<p id="name">Park Cha Geun</p>
					<p id="role">Team Manager & java developer</p>
				</div>
				<div class="col-md-4 col-lg-4">
					<img src="/dadtalk_v2/images/s.png">
					<p id="name">Hwang Sung Uk</p>
					<p id="role">db manager & java developer</p>
				</div>
				<div class="col-md-4 col-lg-4">
					<img src="/dadtalk_v2/images/y.png">
					<p id="name">Kang Ye Jin</p>
					<p id="role">web & java developer</p>
				</div>
			</div>
			<hr style="opacity: 0.6; color: white">
			<span class="copyright ff">Copyright © Footer 2017. All right
				reserved.<br> Built with our knowledge<br> Made on our
				labtop<br> Hosted by Chageun, SungUk, Yejin aka Wonder Man
			</span>
		</div>
	</div>
	<!--footer-->

</body>
</html>