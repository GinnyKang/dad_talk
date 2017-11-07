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
<link rel="stylesheet" href="/dad_talk/resources/css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/dad_talk/resources/js/login.js"></script>
<script type="text/javascript" src="/dad_talk/resources/js/memo.js"></script>
<script type="text/javascript" src="/dad_talk/resources/js/blog.js"></script>
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
					<li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a></li>
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

		<div class="row" id="slider">
		<div class="col-md-10 col-lg-10 baby-slider col-md-offset-1 col-lg-offset-1">
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
					<div class="item active" >
						<img src="/dad_talk/resources/images/dad.jpg" class="img-fluid">
						<div class="carousel-caption">
							<h2>아빠육아!</h2>
							<h3>아이에게 행복한  가족의 좋은 모델이 되어줍니다</h3>
						</div>
					</div>
					<div class="item" >
						<img src="/dad_talk/resources/images/dad1.jpg" class="img-fluid">
							<div class="carousel-caption">
							<h2>아빠육아!</h2>
							<h3>아이의 에너지 발산에 도움을 줍니다</h3>
						</div>
					</div>
					<div class="item" >
						<img src="/dad_talk/resources/images/dad2.jpg" class="img-fluid">
							<div class="carousel-caption">
							<h2>아빠육아!</h2>
							<h3>아내를 행복하게 만듭니다</h3>
						</div>
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
		  
	<div class="row" style="padding-top:20px; padding-bottom :20px;">
		<div class="col-md-3 col-lg-3 col-md-offset-1 hidden-xs hidden-sm" id="wordcloud">
			<img src="/dad_talk/resources/images/wc_dadb.png">
		</div>
		
		<div class="col-md-6 col-lg-6 col-md-offset-1 " id="memo">
					<p style="color:#ff6600;" id="memo_contents" >Memo 
					<button id="memo_b" type="button" class="btn btn-default pull-right" data-toggle="modal" data-target="#myModal">
					<span class="glyphicon glyphicon-plus-sign"></span> 메모 추가</button>
					</p>
				<c:choose>
				<c:when test="${!empty sessionScope.sessionID }">
					<div id="memo_contents"></div>
				</c:when>
				</c:choose>
		</div>
	
	</div>
	
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-sm">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">메모 작성</h4>
				</div>
				<div class="modal-body">
					<form id="insert" action="/dad_talk/memo/insertMemo.do"
						style="text-align: center">
						<div class="input-group" style="margin: auto;">
							<input class="form-control" type="text" name="title" placeholder="제목을 입력해주세요" style="margin-bottom: 5px"><br>
							<textarea class="form-control" name="content" rows="7"></textarea>
						</div>
						<br> <input type="hidden" name="action" value="insert">
						<input class="btn btn-success" type="submit" value="저장"> <input
							class="btn btn-warning" type="reset" value="재작성">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
		
	<div id="contentModal" class="modal fade" role="dialog" style="text-align:center;">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">메모 보기</h4>
				</div>
				
				<div class="modal-body">
				<div class="input-group" style="margin:auto;">
				<input type="hidden" name ="num" id="num" value="" readonly/>
				<input class="form-control"  type="text" name="title" id="title" value= ""/><br><br>
				<textarea class="form-control" name="content" id="content" rows="6" cols="20"> </textarea><br> 
				</div>
				</div>
				
				<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button> 
				<input class="btn btn-success" type="submit" id ="updateMemo" value="수정"> 
				<input class="btn btn-danger" type="button"  id="deleteMemo" value="삭제">
				</div>
				
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<hr>
			<h3 id="r_blog">'아빠육아' 추천 Blog</h3>
		</div>
	</div>
	<div  class = "row" id="blog_contents">
		<div class="col-md-1 col-md-offset-1 col-sm-1 col-xs-1 col-log-1" id="blog_preview">
		</div>
		<div class="col-md-9 col-lg-9 col-sm-9 col-xs-9" id="blog_details">
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

</body>
</html>