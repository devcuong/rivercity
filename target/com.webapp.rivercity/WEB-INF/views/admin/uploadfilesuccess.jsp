<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="quantriTemplate">
	<tiles:putAttribute name="body">
		<html>
<head>
<title>Trang Upload File</title>
<style type="text/css">
body {
	background-image:
		url('http://cdn.crunchify.com/wp-content/uploads/2013/03/Crunchify.bg_.300.png');
}
</style>
</head>
<body>
	<br>
	<br>
	<div align="center">
		<h1>UPLOAD THÀNH CÔNG</h1>
		<p>NHẤN VÀO "TRỞ VỀ" ĐỂ TRỞ VỀ TRANG UPLOAD</p>
		<p>NHẤN VÀO "DANH SÁCH HÌNH ẢNH" ĐỂ XEM DANH SÁCH HÌNH ẢNH ĐÃ
			UPLOAD</p>
		S
		<ol>
			<c:forEach items="${files}" var="file">- ${file} <br>
			</c:forEach>
		</ol>
		<a href="upload.html"><input type="button" value="TRỞ VỀ" /></a> <br />
		<a href="danhsachfile.html"><input type="button"
			value="DANH SÁCH HÌNH ẢNH" /></a> <br /> <br /> <br />
	</div>
</body>
		</html>
	</tiles:putAttribute>
</tiles:insertDefinition>