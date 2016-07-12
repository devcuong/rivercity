<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
<link rel="stylesheet"
	href="<c:url value="/resources/quantri/css/style.css" />" />
</head>

<body>

	<div class="login">
		<div class="login-triangle"></div>

		<h2 class="login-header">Đăng Nhập</h2>

		<form:form class="login-container" commandName="userBean" method="post" action="${pageContext.request.contextPath}/quantri/dangnhap">
			<p>
				<form:input path="userName" placeholder="Username" />
			</p>
			<p>
				<form:input path="password" placeholder="Password" />
			</p>
			<p>
				<input type="submit" value="Đăng Nhập">
			</p>
		</form:form>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>
</html>
