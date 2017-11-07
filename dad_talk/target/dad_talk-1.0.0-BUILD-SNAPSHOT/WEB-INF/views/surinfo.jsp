<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dadtalk</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/jejugothic.css">
<style>
.top_header{font-family:'Jeju Gothic', serif; background-color: #82ced9;}
.top_header li > a{font-size:14px; font-weight:600; color:black; padding-right:30px;}
.top_header li > a:hover{background:none; color:#246a75;}
#header{font-family:'Jeju Gothic', serif; background-color: #82ced9; height:20%; padding-bottom:20px;}
.nav img{width:auto; height:40px;}
.navbar{margin-bottom:10px;}
.col-md-6, .col-lg-6{margin-top:20px;}
.navbar-toggle{ border-color: white; }
.icon-bar { color: white;  border-color: white;  background-color: white; }
#logo_m {color:white; text-decoration:none; font-size:30px; font-weight:800; padding-left:37%; padding-top:5px;}
#logo_m:hover{color: #246a75;}
#logo {color:white; text-decoration:none; font-size:40px; font-weight:800; padding-left:120px;;}
#logo:hover{color: #246a75;}
#myNavbar {padding-right:100px;}
#myNavbar li > a:hover{background:none; color: #246a75;}
#myNavbar a {color:white; padding-right:20px; text-decoration:none; font-size:17px;}
.main{padding-top:150px; padding-bottom:30px; margin:auto; background-color:white; width:90%; height:auto;}
.sub p{border-style: dotted; width:100%; height:200px; border-radius: 25px; margin:auto; padding: 10px 15px; font-size:20px;}
.footer-bottom { background:#8ad0db; opacity:0.8; color:black; border-top: 1px solid #DDDDDD; text-align:center; height:auto; padding:30px 0px; }
.footer-bottom img {margin:auto; width:10%; height:10%; padding:10px 0px;}
#team{font-size:25px; font-weight:600; }
#name{font-size:20px; font-weight:600; }
#role{font-size:15px;}
.ff {color:white; text-align:center; padding:20px 0px;}
.ff a {color:white; text-decoration:none;}
</style>
</head>
<body>
<nav class="navbar navbar-fixed-top">
<div class="top_header">
	<div class="container-fluid" > 
		<ul class="nav navbar-nav navbar-right" style="padding-right:120px; margin-bottom:-10px;" > 
			<li><a href="login.html">My</a></li>
			<li><a href="login.html">Login</a></li>
		</ul>
	</div>
</div>
<header id="header">
	<div class="container-fluid">
		<div class="navbar-header ">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand-center visible-xs visible-sm"  href="index.jsp" id="logo_m">DadTalk</a>
			<a class="navbar-brand hidden-xs hidden-sm" href="index.jsp" id="logo">DadTalk</a>
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
</header>
</nav> 
<section class="main">
	<div class="row">
		<div class="col-md-5 col-lg-5 col-md-offset-1 col-lg-offset-1 hidden-xs hidden-sm">
			<img src="../images/dad.png" style="width:100%; height: 300px;opacity: 0.8;">
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
					<div class="item active" style="width:100%; height:300px;">
						<img src="/dadtalk_v2/images/mb1.jpg" class="img-fluid">
					</div>
					<div class="item" style="width : 480px; height: 300px;">
						<img src="/dadtalk_v2/images/mb2.jpeg" class="img-fluid">
					</div>
					<div class="item" style="width : 480px; height: 300px;">
						<img src="/dadtalk_v2/images/mb3.jpeg" class="img-fluid">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" data-slide="prev"> 
					<span class="glyphicon glyphicon-chevron-left"></span> 
					<span class="sr-only">Previous</span>
				</a> 
				<a class="right carousel-control" href="#myCarousel" data-slide="next"> 
					<span class="glyphicon glyphicon-chevron-right"></span> 
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<div class="row sub" style="padding-top:20px; padding-bottom :20px;">
		<div class="col-md-5 col-lg-5 col-md-offset-1 col-lg-offset-1">
			<p style="border-color:#ff6600; color:#ff6600;">memo</p>
		</div>
		<div class="col-md-5 col-lg-5">
			<p style="border-color:violet; color:violet;">calendar</p>
		</div>
	</div>
</section>

<!-- footer -->
	<div class="footer-bottom">
		<div class="container" style="padding:0px 40px;">
			<p id="team">Wonder Man WM. Ltd. </p>
			<div class="row" style="padding-top:10px">
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
			 <hr style = "opacity:0.6; color:white ">
			<span class="copyright ff">Copyright © Footer 2017. All right reserved.<br>
                                                      Built with our knowledge<br>
                                                      Made on our labtop<br>
                                                      Hosted by Chageun, SungUk, Yejin aka Wonder Man</span>
		</div>
	</div>
<!--footer-->

</body>
</html>