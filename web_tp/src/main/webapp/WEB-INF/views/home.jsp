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
	<form action="member/login-post" method="post">
		<input type="text" name="userId" placeholder="아이디" required="required"/>
		<input type="password" name="userPwd" placeholder="비밀번호" required="required"/>
		<input type="submit" value="로그인"/>
		<input type="hidden" name="queryString" value="http://localhost:8181/ex03/">
	</form>
	<button>회원가입</button>
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
			location = 'member/logout';
		});
	});
</script>

</body>
</html>