<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style type="text/css">
table.imgtable {
	border-collapse: collapse;
	font: normal normal 11px Verdana, Arial, Sans-Serif;
	color: #333;
}

table.imgtable tr {
	background-color: #666699;
}

table.imgtable th, table.imgtable td {
	vertical-align: top;
	padding: 5px 10px;
	border: 1px solid #333;
}

table.imgtable th {
	background-color: #ccc;
	color: black;
	font-weight: bold;
}

div.imgarea {
	border-radius: 6px 6px 6px 6px;
	width: 650px;
	height: 500px;
	background-color: #EEEEEE;
	margin: auto;
	padding: 40px;
	overflow: scroll;
}
</style>
<tiles:insertDefinition name="quantriTemplate">
	<tiles:putAttribute name="body">
		<div class="imgarea">
			<table class="imgtable" id="imgtableId">
				<c:forEach var="sfileName" items="${fileName}" varStatus="loop">
					<tr>
						<td><a
							href="${pageContext.request.contextPath}/images/${sfileName}">${sfileName}</a></td>
						<td><img
							src="${pageContext.request.contextPath}/images/${sfileName}"
							width="40px" height="40px" /></td>
						<td><input id="img${loop.index}"
							value="${pageContext.request.contextPath}/images/${sfileName}" /></td>
						<td><button class="btn" data-clipboard-action="copy"
								data-clipboard-target="#img${loop.index}">copy</button></td>
						<td><button class="btn"
								onclick="xoaHinhAnh('${sfileName}:cuong1503')">Xóa ảnh</button></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>
<script>
	var clipboard = new Clipboard('.btn');

	clipboard.on('success', function(e) {
		console.log(e);
	});

	clipboard.on('error', function(e) {
		console.log(e);
	});
</script>
<script type="text/javascript">
	var ctx = "${pageContext.request.contextPath}";
	function xoaHinhAnh(hinhAnh) {
		var encodedData = window.btoa(hinhAnh);
		var result = confirm("Bạn có chắc chắn muốn xóa image này");
		if (result == true) {
			document.location="danhsachfile?delete="+encodedData;
		}
	}
</script>