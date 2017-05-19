<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="our.team.project.MemberVO"%>
    
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=2">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/main.css?ver=0" />
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


</head>
<%	
	
%>
<body>
<div id="topdiv">

	<div>
		<ul>
		<%if(session.getAttribute("session_login") != null){
			MemberVO vo = (MemberVO)session.getAttribute("session_login");
		%>
		${session_login.name} 님 어서오세요~.
		<li><a href="logout.test">로그아웃</a></li>
		<li><a href="mypage.test">마이페이지</a></li>
		<%if(vo.getAdmin() == 1){ %>
			<li>회원관리</li>
		<%} %>
		<%}else{ %>
			<li><a href="login.test">로그인</a></li>
			<li>회원가입</li>
			<%} %>
		</ul>
	</div>
</div>
	<div align="center">
		<img alt="이미지가 없습니다." src="resources/images/Cocom.jpg" class="logo">
	
		<div>
<div class="container">
<div class="form-group form-inline">
  <div class="form-group">
  <select class="form-control" id="sel1">
    <option>브랜드</option>
    <option>유해성분</option>
    <option>트러블</option>
    <option>전체</option>
  </select>
</div>
  <input type="text" class="form-control" id="usr" size="80">
<button type="button" class="btn btn-success" id="search">검색</button>
</div></div>
	</div>
</div>
<div align="center" id="con">
			<div class="col-md-6" id="weather">날씨</div>
			<div class="col-md-6" id="recommend">뉴스</div>
			<!-- <div class="col-md-6" id="weather">추천</div>
			<div class="col-md-6" id="recommend">추천오늘</div> -->
			<% if(request.getAttribute("session_login") == null){ %>
				<div id="today_top">오늘의 추천</div>
			<%}else{ %>
				<div class="col-md-6" id="today_top2">오늘의 추천</div>
				<div class="col-md-6" id="my_top">나의 맞춤 추천</div>
			<%} %>
			<!--<div id="news2">뉴스2</div> -->
</div>

<script src="resources/jquery-3.1.1.min.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script>
		
		$('#search').on('click', function(){
			location.href = "search.test"
		})
		
	</script>


</body>
</html>