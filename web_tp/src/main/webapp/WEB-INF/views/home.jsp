<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

<h1>메인 페이지</h1>

<h2>현재 시간: ${now }</h2>

<hr/>
<c:if test="${empty loginId }">
	<form action="user/login-post" method="post">
		<input type="text" name="id" placeholder="아이디" required="required"/>
		<input type="password" name="password" placeholder="비밀번호" required="required"/>
		<input type="submit" value="로그인"/>
		<!-- <input type="button" id="btn_signUp" value="회원가입"/> --> 
		<input type="hidden" name="queryString" value="https://localhost:8443/teamproject/">
	</form>
	<button id="btn_signUp">회원가입</button>
</c:if>
<c:if test="${not empty loginId }">
	${loginId }님, 안녕하세요!
	<button id="btn-logout">로그아웃</button>
</c:if>

<hr/>
<a href="board/list">게시판 메인 페이지</a>


<%System.out.println("home.jsp <body> 끝"); %>

<script type="text/javascript">
	$(function() {
		$('#btn-logout').click(function() {
			location = 'user/logout';
		});
		
		$('#btn_signUp').click(function() {
			location = 'user/register';
		})
	});
	
	
</script>

</body>
</html>