<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dadtalk</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"	href="http://fonts.googleapis.com/earlyaccess/jejugothic.css">
<link rel="stylesheet" href="/dad_talk/resources/css/login_modal.css">
<link rel="stylesheet" href="/dad_talk/resources/css/profile.css">
<link rel="stylesheet" href="/dad_talk/resources/css/main.css">
<script type="text/javascript" src="/dad_talk/resources/js/login.js"></script>
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
	<div class="container">
		<div class="row">

			<div class="col-md-7 col-md-offset-2">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>나의 프로필</h4>
					</div>
					<div class="panel-body">

						<div class="box box-info">

							<div class="box-body">
								<div class="col-sm-6">
									<div align="center">
										<img alt="User Pic"
											src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
											id="profile-image1" class="img-circle img-responsive"
											style="height: 150px;">

										<input id="profile-image-upload" class="hidden" type="file">
										<div style="color: #999;">이미지를 바꾸기 위해 버튼을 눌러주세요.</div>
										<!--Upload Image Js And Css-->


									</div>

									<br>

									<!-- /input-group -->
								</div>
								<div class="col-sm-6">
									<span>
										<h4 style="color: #00b1b1;"> ${Name} </h4>
									</span>
								</div>
								<div class="clearfix"></div>
								<hr style="margin: 5px 0 5px 0;">
								
								<div class="col-sm-5 col-xs-6 tital ">아이디 : </div>
								<div class="col-sm-7 col-xs-6 "> ${ID} </div>
								<div class="clearfix"></div>
								<div class="bot-border"></div>

								<div class="col-sm-5 col-xs-6 tital ">이름 : </div>
								<div class="col-sm-7 col-xs-6 "> ${Name} </div>
								<div class="clearfix"></div>
								<div class="bot-border"></div>

								<div class="col-sm-5 col-xs-6 tital ">생년월일 : </div>
								<div class="col-sm-7">  ${Birthday} </div>

								<div class="clearfix"></div>
								<div class="bot-border"></div>

								<div class="col-sm-5 col-xs-6 tital ">아이 이름 :</div>
								<div class="col-sm-7"> ${BabyName} </div>

								<div class="clearfix"></div>
								<div class="bot-border"></div>

								<div class="col-sm-5 col-xs-6 tital ">아이 생일 : </div>
								<div class="col-sm-7"> ${BabyBirthday} </div>

								<div class="clearfix"></div>
								<div class="bot-border"></div>

								<div class="col-sm-5 col-xs-6 tital ">아이 성별 :</div>
								<div class="col-sm-7"> ${BabyGender} </div>



								<!-- /.box-body -->
							</div>
							<!-- /.box -->

						</div>


					</div>
				</div>
			</div>
			<script>
				$(function() {
					$('#profile-image1').on('click', function() {
						$('#profile-image-upload').click();
					});
				});
			</script>

		</div>
	</div>
</section>

	<!-- footer -->
	<div class="footer-bottom">
		<div class="container" style="padding: 0px 40px;">
			<p id="team">Wonder Man WM. Ltd.</p>
			<div class="row" style="padding-top: 10px">
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