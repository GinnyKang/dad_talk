<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Dadtalk</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/jejugothic.css">
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
<link rel="stylesheet" href="/dad_talk/resources/css/info.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/dad_talk/resources/js/login.js"></script>
<style>
#info h3 {color: #bf40bf; margin-top:0px;}
#info button{width:40%; height:40px; margin: 5px 10px; }
#info img {width:6%; height:6%; }
</style>
</head>
<body>
<nav class="navbar navbar-fixed-top" style="opacity:0.8;">
<div class="top_header">
	<div class="container-fluid" > 
		<ul class="nav navbar-nav navbar-right hidden-xs hidden-sm" style="padding-right:130px; margin-bottom:-10px;" > 
				<c:choose>
					<c:when test="${!empty sessionScope.sessionID }">
						<li style="padding-top:15px; padding-right:15px;">${sessionID} 님 환영합니다.</li>
						<li ><a href="/dad_talk/user/logout.do">로그아웃</a></li>
						<li><a href="/dad_talk/user/profile.do">마이 페이지</a></li>
					</c:when>
					<c:otherwise>
					<li><a href="#"></a></li>
					</c:otherwise>
				</c:choose>
				
		</ul>
	</div>
</div>
<header id="header">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" id="m_button" style="margin-top:15px;">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand-center visible-xs visible-sm"  href="/dad_talk/index.do" id="logo_m">DadTalk</a>
			<a class="navbar-brand hidden-xs hidden-sm" href="/dad_talk/index.do" id="logo">DadTalk</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a class="active" href="/dad_talk/index.do">Home</a></li>
				<li><a class="dropdown-toggle" data-toggle="dropdown" href="/dad_talk/babyinfo/info.do?act=pgn">육아정보  
					<span class="caret"></span></a>
      		 		<ul class="dropdown-menu" id="babyinfo">
        		 		<li><a href="/dad_talk/babyinfo/info.do?act=pgn">임신</a></li>
        		 		<li><a href="/dad_talk/babyinfo/info.do?act=cb">출산</a></li>
    		      		<li><a href="/dad_talk/babyinfo/info.do?act=if">육아&놀이법</a></li>
    		      		<li><a href="/dad_talk/babyinfo/info.do?act=play">0~12개월 월령별 놀이</a></li>
    		      		<li><a href="/dad_talk/babyinfo/info.do?act=pl">육아휴직</a></li>
     		  		</ul>
     			</li>
     			<li><a class="dropdown-toggle" data-toggle="dropdown" href="/dad_talk/surinfo/info.do?act=ob">주변정보  
					<span class="caret"></span></a>
      		 		<ul class="dropdown-menu" id="surinfo">
        		 		<li><a href="/dad_talk/surinfo/info.do?act=ob">산부인과</a></li>
        		 		<li><a href="/dad_talk/surinfo/info.do?act=ped">소아과</a></li>
        		 		<li><a href="/dad_talk/surinfo/info.do?act=kidscafe">키즈카페</a></li>
    		      		<li><a href="/dad_talk/surinfo/info.do?act=health">보건소</a></li>
    		      	</ul>
     			</li>
				<li><a href="/dad_talk/chat.do">아빠들의수다</a></li>
			</ul>
		</div>
	</div>	
</header>
</nav>
<section class="main">
	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true"
			style="display: none;">
			<div class="modal-dialog">
				<div class="loginmodal-container">
					<h1>로그인</h1>
					<br>
					<form name="loginForm">
						<input type="text" name="user_id" placeholder="아이디"> 
						<input type="password" name="password" placeholder="비밀번호"> 
						<input type="submit" id="loginButton" class="login loginmodal-submit" value="확인">
					</form>
					<div class="login-help" style="padding-bottom: 10px; text-align: center">
						<a href="/dad_talk/register.do">회원가입</a>&nbsp;&nbsp; - &nbsp;&nbsp;<a href="#">Forgot Password</a> <br>
					</div>
				</div>
			</div>
		</div>
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-3 col-lg-3 hidden-xs hidden-sm" id="sidemenu">
			<ul class="nav nav-sidebar">
			<h4>육아정보</h4>
            <li class="active">
            <a href="/dad_talk/babyinfo/info.do?act=pgn">임신 <span class="sr-only">(current)</span></a></li>
            <li><a href="/dad_talk/babyinfo/info.do?act=cb">출산</a></li>
            <li><a href="/dad_talk/babyinfo/info.do?act=if">육아&놀이법</a></li>
            <li><a href="/dad_talk/babyinfo/info.do?act=play">0~12개월 월령별 놀이</a></li>
            <li><a href="/dad_talk/babyinfo/info.do?act=pl">육아휴직</a></li>
          </ul>
		</div>
		<div class="col-md-9 col-lg-9" id="info">
			<h3><img src="/dad_talk/resources/images/if.png">  육아&놀이법</h3>
			<br>
			<button type="button" class="btn btn-info" id="if_1">분유</button>
			<button type="button" class="btn btn-info" id="if_2">식습관</button>
			<button type="button" class="btn btn-info" id="if_3">놀이법</button>
			<button type="button" class="btn btn-info" id="if_4">아이와 놀이법 대화 특급 전략</button>
		    <button type="button" class="btn btn-info" id="if_5">아빠 놀이에 숨겨져 있는 비밀</button>
		    <br><br><hr><br>
			<div class="contentarea" id="response">
			</div>
		</div>	
	</div>
	</div>
</section>

<!-- footer -->
	<div class="footer-bottom">
		<div class="container" style="padding:0px 40px;">
			<p id="team">Wonder Man WM. Ltd. </p>
			<div class="row" style="padding-top:10px">
				<div class="col-md-4 col-lg-4">
					<img src="/dad_talk/resources/images/c.png">
					<p id="name">Park Cha Geun</p>
					<p id="role">Team Manager & java developer</p>
				</div>
				<div class="col-md-4 col-lg-4">
					<img src="/dad_talk/resources/images/s.png">
					<p id="name">Hwang Sung Uk</p> 
					<p id="role">db manager & java developer</p>
				</div>
				<div class="col-md-4 col-lg-4">
					<img src="/dad_talk/resources/images/y.png">
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
<script>
$(document).ready(function(){
    $("#response").load("/dad_talk/resources/text/if_1.txt");
    $("#if_1").click(function(){
        $("#response").load("/dad_talk/resources/text/if_1.txt");
    });
    $("#if_2").click(function(){
            $("#response").load("/dad_talk/resources/text/if_2.txt");
        });
    $("#if_3").click(function(){
            $("#response").load("/dad_talk/resources/text/if_3.txt");
        });
    $("#if_4").click(function(){
        $("#response").load("/dad_talk/resources/text/if_4.txt");
    });
    $("#if_5").click(function(){
        $("#response").load("/dad_talk/resources/text/if_5.txt");
    });
});

</script>
</body>
</html>