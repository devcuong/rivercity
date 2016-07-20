<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Trang quản trị Rivercity</title>
<!-- BOOTSTRAP STYLES-->
<link href="<c:url value="/resources/quantri/css/bootstrap.css" />"
	rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="<c:url value="/resources/quantri/css/font-awesome.css" />"
	rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="<c:url value="/resources/quantri/css/custom.css" />"
	rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="<c:url value="/resources/quantri/js/clipboard.min.js" />"></script>
</head>
<body>
	<div id="wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="adjust-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".sidebar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				<!-- 	<a class="navbar-brand" href="#"> <img
						src="assets/img/logo.png" />
					</a> -->
				</div>
				<span class="logout-spn"> <a href="#" style="color: #fff;">LOGOUT</a>
				</span>
			</div>
		</div>
		<!-- /. NAV TOP  -->
		<tiles:insertAttribute name="menu" />
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>BLANK PAGE</h2>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />
				<tiles:insertAttribute name="body" />
				<!-- /. ROW  -->
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<tiles:insertAttribute name="footer" />
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<c:url value="/resources/quantri/js/bootstrap.min.js" />"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="<c:url value="/resources/quantri/js/custom.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/ckeditor/ckeditor.js" />" /></script>
	<script type="text/javascript"
		src="<c:url value="/resources/ckeditor/adapters/jquery.js" />" /></script>
<%-- 		<script type="text/javascript"
		src="<c:url value="/resources/quantri/js/dropzone.js" />" /></script> --%>
</body>
</html>
