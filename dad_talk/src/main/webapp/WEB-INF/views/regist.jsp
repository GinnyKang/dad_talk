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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/jejugothic.css">
<link rel="stylesheet" href="/dad_talk/resources/css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />
<script type="text/javascript" src="/dad_talk/resources/js/register.js"></script>
<link rel="stylesheet" href="/dad_talk/resources/css/main.css">
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
<section class="main" style="font-family: 'Jeju Gothic', serif; padding-top: 90px; padding-bottom:40px">

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


	<div class="container" >
		<div class="page-header">
			<h1>
				회원가입 <small>Registration</small>
			</h1>
		</div>
		<div class="col-md-6 col-md-offset-3">
			<form role="form" name="userInfo" onsubmit="return checkValue()">
				<div class="form-group">
					<label for="InputEmail">아이디</label> <input type="text" class="form-control" id="user_id" placeholder="아이디를 입력해 주세요">
				</div>
				<div class="form-group" >
					<label for="username">이름</label> <input type="text" class="form-control" id="name" placeholder="이름을 입력해 주세요" style="font-size:14px; font-weight:normal">
				</div>
				<div class="form-group">
					<label for="InputPassword1">비밀번호</label> 
					<input type="password" class="form-control" id="password" placeholder="비밀번호">
				</div>
				<div class="form-group">
						<label for="InputPassWord2">비밀번호 확인 </label>
						<input type="password" class="form-control" id="passwordCheck" placeholder="비밀번호 확인">
					<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
				</div>

				<div class="form-group">
					<label for="username">생년월일</label> <input type="text"
						name="birthday" class="form-control" />
	
				</div>

				<div class="form-group">
					<label for="username">아이 이름</label> <input type="text"
						class="form-control" id="baby_name" placeholder="아이 이름을 입력해주세요.">
				</div>

				<div class="form-group">
					<label for="username">아이 생년월일</label> <input type="text"
						name="baby_birthday" class="form-control" placeholder="아이 생년월일을 입력해주세요."/>
					
				</div>

				<div class="form-group">
					<label for="username">아이 성</label> <select class="form-control"
						id="baby_gender">
						<option value="0">남자</option>
						<option value="1">여자</option>
					</select>
				</div>
				<input type="submit" class="btn btn-success center-block" id="JoinMember" value=" &#10003; 가입하기" style="padding:10px 50px; margin-top:30px;">
				<i class="fa fa-check spaceLeft"></i>

		</form>
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
	$("#JoinMember").click(function(){
		var user_id = document.userInfo.user_id.value;
		var name = document.userInfo.name.value;
		var password = document.userInfo.password.value;
		var passwordCheck = document.userInfo.passwordCheck.value;
		var birthday = document.userInfo.birthday.value;
		var baby_name = document.userInfo.baby_name.value;
		var baby_birthday = document.userInfo.baby_birthday.value;
		var baby_gender = document.userInfo.baby_gender.value;
		
		var postString = "";
		postString =  "user_id=" + user_id;
		postString += "&name=" + name;
		postString += "&password=" + password;
		postString += "&passwordCheck=" + passwordCheck;
		postString += "&birthday=" + birthday;
		postString += "&baby_name=" + baby_name;
		postString += "&baby_birthday=" + baby_birthday;
		postString += "&baby_gender=" + baby_gender;
		
		var url = "http://ec2-52-78-109-249.ap-northeast-2.compute.amazonaws.com:8080/dad_talk/user/joinMember.do?" + postString;
		if(checkValue()){
			$.get(url);
			alert("회원가입에 성공하셨습니다.");
			window.location = "http://ec2-52-78-109-249.ap-northeast-2.compute.amazonaws.com:8080/dad_talk/index.do";
			
		}
		else {
			alert("다시 한번 확인해보세요.");
		}
	});
		
	
});
</script>
</body>
</html>