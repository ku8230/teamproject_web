<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>

<button id="btn_signUp">회원가입</button>


<script type="text/javascript">
	$(function() {
		$('#btn_signUp').click(function() {
			location = 'user/register';
		});
	});
</script>
</body>
</html>