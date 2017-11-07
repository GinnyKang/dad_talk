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
<link rel="stylesheet" href="resources/css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript" src="http://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>

<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />

<script type="text/javascript" src="resources/js/register.js"></script>
</head>
<body>

	<nav class="navbar navbar-fixed-top" style="opacity:0.8;">
	<div class="top_header">
		<div class="container-fluid">
			<ul class="nav navbar-nav navbar-right"
				style="padding-right: 120px; margin-bottom: -10px;">
				<li><a href="/dad_talk/login.do">My</a></li>
				<li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a></li>
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
			<a class="navbar-brand-center visible-xs visible-sm" href="#"
				id="logo_m">DadTalk</a> <a class="navbar-brand hidden-xs hidden-sm"
				href="#" id="logo">DadTalk</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a class="active" href="/">Home</a></li>
				<li><a href="/dad_talk/babydiary.do">육아일기</a></li>
				<li><a href="/dad_talk/babyinfo.do">육아정보</a></li>
				<li><a href="/dad_talk/surinfo.do">주변정보</a></li>
				<li><a href="/dad_talk/dadtalk.do">아빠들의수다</a></li>
			</ul>
		</div>
	</div>
	</header> </nav>
	<section class="main">

<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	  <div class="modal-dialog">
				<div class="loginmodal-container">
					<h1>로그인</h1><br>
				  <form>
					<input type="text" name="user" placeholder="아이디">
					<input type="password" name="pass" placeholder="비밀번호">
					<input type="submit" name="login" class="login loginmodal-submit" value="Login">
				  </form>
					
				  <div class="login-help">
					<a href="/register.do">회원가입</a> - <a href="#">Forgot Password</a>
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
			<form role="form" name="userInfo" action="join.do" id>
				<div class="form-group">
					<label for="InputEmail">이메일 주소</label> <input type="email"
						class="form-control" id="user_id" placeholder="이메일 주소">
				</div>
				<div class="form-group">
					<label for="username">이름</label> <input type="text"
						class="form-control" id="name" placeholder="이름을 입력해 주세요">
				</div>
				<div class="form-group">
					<label for="InputPassword1">비밀번호</label> <input type="password"
						class="form-control" id="password" placeholder="비밀번호">
				</div>
				<div class="form-group">
						<label for="InputPassWord2">비밀번호 확인 </label>
						<input type="text" class="form-control" id="passwordCheck" placeholder="비밀번호 확인">
					<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
				</div>

				<div class="form-group">
					<label for="username">생년월일</label> <input type="text"
						name="birthday" class="form-control" />
	
				</div>

				<div class="form-group">
					<label for="username">아이 이름</label> <input type="text"
						class="form-control" id="baby_name" placeholder="생년월일을 선택해주세요.">
				</div>

				<div class="form-group">
					<label for="username">아이 생년월일</label> <input type="text"
						name="baby_birthday" class="form-control" />
					
				</div>

				<div class="form-group">
					<label for="username">아이 성</label> <select class="form-control"
						id="baby_gender">
						<option value="0">남자</option>
						<option value="1">여자</option>
					</select>
				</div>
		</div>
		<div class="form-group">
			<label>약관 동의</label>
			<div data-toggle="buttons">
				<label class="btn btn-primary active"> <span
					class="fa fa-check"></span> <input id="agree" type="checkbox"
					autocomplete="off" checked>
				</label> <a href="#">이용약관</a>에 동의합니다.
			</div>
		</div>
		<div class="form-group text-center">
			<button type="submit" class="btn btn-info" id="JoinMember" onClick="registerProcess();">
				회원가입<i class="fa fa-check spaceLeft"></i>
			</button>
			<button type="submit" class="btn btn-warning">
				가입취소<i class="fa fa-times spaceLeft"></i>
			</button>
		</div>
		</form>
	</div>
	</div>
	</section>

	<!-- footer -->
	<div class="footer-bottom">
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${memberList}" var="member">
					<tr>
						<td>${member.user_id}</td>
						<td>${member.password}</td>
						<td>${member.name}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
	<!--footer-->


</body>
</html>