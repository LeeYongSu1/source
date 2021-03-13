<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
body { padding-top: 70px; }
</style>
</head>
<body>
<nav class="navbar navbar-fixed-top">
	<div class="collapse navbar-collapse">
		<ul class="nav nav-pills navbar-right">
		<c:if test="${member == null}">
			<li role="presentation" class="disabled"><a href="${path}/login">로그인</a></li>
			<li role="presentation" class="disabled"><a href="${path}/register">회원가입　</a></li>
		</c:if>
		<c:if test="${member != null}">
			<li><p>관리자님 환영 합니다.</p></li>
			<li><button id="memberUpdateBtn" type="button" onclick="location.href='<c:url value="/memberUpdateView"/>'" >회원정보수정</button></li>
			<li><button id="logoutBtn" type="button" onclick="location.href='<c:url value="/logout"/>'" >로그아웃</button></li>
		</c:if>
		</ul>
	</div>
</nav>



<ul class="nav nav-pills nav-justified">
	  <li role="presentation" class="active"><a href="${path}/">Home</a></li>
	  <li role="presentation"><a href="${path}/productlist">상품목록</a></li>
	  <li role="presentation"><a href="${path}/upload">상품등록</a></li>
	  <li role="presentation"><a href="${path}/preorder">사전예약</a></li>
	  <li role="presentation"><a href="${path}/list">이벤트 게시판</a>
</ul>
<div class="babyGroot"></div>
	
</body>
</html>