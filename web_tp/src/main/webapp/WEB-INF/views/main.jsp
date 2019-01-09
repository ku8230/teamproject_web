<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>킬러헌터</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="/teamproject/css/main.css" rel="stylesheet" type="text/css">

</head>
<body>
	<!-- S:wrapper -->
	<div id="wrapper">

		<!-- S:top-header -->
		<div class="top-header center-block">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="navbar-brand" href="#">로고</a> <a href="/" class="logo-font"> <span>킬러헌터</span>

				</a>
				<div class="login-form collapse navbar-collapse" id="navbarTogglerDemo03">
					<form class="button-form form-inline my-2 my-lg-0">

						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">로그인 및 회원가입</button>
					</form>
				</div>
			</nav>
		</div>
		<!-- E:top-header -->

		<!-- S:top-nav -->
		<div class="top-nav center-block">
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">전체</a>
					</div>
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">언어 및 도구</a></li>
						<li><a href="#">네트워크와 서버</a></li>
						<li><a href="#">데이터베이스</a></li>
						<li><a href="#">프로젝트 관리</a></li>
						<li><a href="#">빅데이터</a></li>
						<li><a href="#">톡톡</a></li>
					</ul>
					<form class="navbar-form navbar-left" action="/action_page.php">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
				</div>
			</nav>

		</div>
		<!-- E:top-nav -->

		<!-- S:container -->
		<div id="container" class="container-fluid text-center">
			<div class="row content">
				<div class="col-sm-2 sidenav">
					<p>
						<a href="#">Link</a>
					</p>
					<p>
						<a href="#">Link</a>
					</p>
					<p>
						<a href="#">Link</a>
					</p>
				</div>
				<div class="col-sm-8 text-left">
					<h1>Welcome</h1>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<hr>
					<h3>Test</h3>
					<p>Lorem ipsum...</p>
				</div>
				<div class="col-sm-2 sidenav">
					<div class="well">
						<p>ADS</p>
					</div>
					<div class="well">
						<p>ADS</p>
					</div>
				</div>
			</div>
		</div>
		
		


		<!-- E:container-->

		<!-- S:footer -->
		<footer id="footer" class="container-fluid text-center">
			<p>Footer Text</p>
		</footer>
		<!-- E:footer-->

	</div>
	<!-- E:wrapper -->



</body>
</html>