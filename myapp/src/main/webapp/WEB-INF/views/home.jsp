<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style type="text/css">
body {
width : 100 %;
	height: 100vh;
	background-image: url("/resources/img/5.jpg");
	background-repeat:no-repeat;
	background-position: center;
	background-size: cover;
	background-image: url("/resources/img/5.jpg") no-repeat center/cover;
 padding-top: 100px;
	 
}
.footer {
   width:100%;
   height:100px;
   position:absolute;
   bottom:0;
   background:#5eaeff;
  text-align: center;
  color: white;
}
</style>
</head>
<script type="text/javascript">
	function loginCheck(){
		if(${member == null}){
			alert('로그인해주세요.');
			return false;
		} else if(${member != null}){
			return true;
		}
	}
</script>
<body>
<div class="back">

<nav class="navbar navbar-fixed-top">
	<div class="collapse navbar-collapse">
		<ul class="nav nav-pills navbar-right">
		<c:if test="${member == null}">
			<li role="presentation" ><a href="${path}/login">로그인</a></li>
			<li role="presentation" ><a href="${path}/register">회원가입　</a></li>
		</c:if>
		<c:if test="${member != null}">
			<c:if test="${member.userId == 'ly3029' }">
				<li><a href="/admin/index">관리자 화면</a></li>
			</c:if>
			<li><p>${member.userId}님 환영 합니다.</p></li>
			<li><button id="memberUpdateBtn" type="button" onclick="location.href='<c:url value="/memberUpdateView"/>'" >회원정보수정</button></li>
			<li><button id="logoutBtn" type="button" onclick="location.href='<c:url value="/logout"/>'" >로그아웃</button></li>
		</c:if>
		</ul>
	</div>
</nav>



<ul class="nav nav-pills nav-justified">
	  <li role="presentation" class="active"><a href="${path}/">Home</a></li>
	  <li role="presentation"><a href="${path}/productlist" onclick="return loginCheck();">상품목록</a></li>
	  <li role="presentation"><a href="${path}/preorder" onclick="return loginCheck();">사전예약</a></li>
	  <li role="presentation"><a href="${path}/list" onclick="return loginCheck();">이벤트 게시판</a>
</ul>
	<%-- <img src="<spring:url value='/resources/img/5.jpg'/>" style="max-width:100%; height:auto;"> --%>
	<footer class="footer">
	<p>이 사이트는 교육용 사이트 입니다.</p>
	<P>  The time on the server is ${serverTime}. </P>
	</footer>
</div>
</body>
</html>