<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<tiles:insertDefinition name="quantriTemplate">
	<tiles:putAttribute name="body">
		<html>
<head>
<script type="text/javascript"
	src="<c:url value="/resources/quantri/js/jquery-1.12.3.min.js" />" /></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						CKEDITOR.config.removePlugins = 'save,print,preview,find,about,maximize,showblocks';
						$("#inforContent").ckeditor({
							toolbar : 'Basic',
							uiColor : '#F7D358'
						});
						$("#btnAlias")
								.click(
										function() {
											var articleName = $("#inforName")
													.val();
											if (articleName.length > 0) {
												articleName = articleName
														.toLowerCase();
												articleName = articleName
														.replace(
																/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g,
																"a");
												articleName = articleName
														.replace(
																/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g,
																"e");
												articleName = articleName
														.replace(/ì|í|ị|ỉ|ĩ/g,
																"i");
												articleName = articleName
														.replace(
																/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g,
																"o");
												articleName = articleName
														.replace(
																/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g,
																"u");
												articleName = articleName
														.replace(/ỳ|ý|ỵ|ỷ|ỹ/g,
																"y");
												articleName = articleName
														.replace(/đ/g, "d");
												articleName = articleName
														.replace(
																/!|@|\$|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\'| |\"|\&|\#|\[|\]|~/g,
																"-");
												articleName = articleName
														.replace(/-+-/g, "-"); //thay thế 2- thành 1-
												articleName = articleName
														.replace(/^\-+|\-+$/g,
																"");//cắt bỏ ký tự - ở đầu và cuối chuỗi

												$("#inforAlias").val(
														articleName);
											}
										});
						$("#btnMoi").click(function() {
							$("#articleName").val("");
							$("#articleAlias").val("");
							$("#articleContent").val("");
						});
					});
	var ctx = "${pageContext.request.contextPath}";
	function layDuLieuTuBangBaiViet(maDong) {
		var table = document.getElementById("arTableId");
		var rows = table.getElementsByTagName("tr");

		for (i = 1; i < rows.length; i++) {
			if (i - 1 == maDong) {
				cells = rows[i].getElementsByTagName("td");
				var articleId = cells[0].innerText;
				document.getElementById("inforId").value = cells[0].innerText;
				document.getElementById("inforName").value = cells[1].innerText;
				document.getElementById("inforAlias").value = cells[2].innerText;
				CKEDITOR.instances["articleContent"]
						.setData(cells[3].innerText);
				document.getElementById("informationNormalBean").action = ctx
						+ "/admin/article/update";
			}
		}
	}
</script>
<style type="text/css">
table.artable {
	border-collapse: collapse;
	font: normal normal 11px Verdana, Arial, Sans-Serif;
	color: #333;
}

table.artable tr {
	background-color: #fff;
}

table.artable th, table.artable td {
	vertical-align: top;
	padding: 5px 10px;
	border: 1px solid #333;
}

table.artable th {
	background-color: #ccc;
	color: black;
	font-weight: bold;
}
</style>
</head>
<body>
	<form:form method="post"
		action="${pageContext.request.contextPath}/quantri/gioithieu?them=1"
		commandName="informationNormalBean">
		<div>
			<label>Tiêu đề bài giới thiệu</label>
			<div>
				<form:input path="inforId" type="hidden" cols="20" />
				<form:input path="inforName" type="text" cols="20" />
			</div>
		</div>
		<div>
			<label>Tiêu đề dạng alias</label>
			<div>
				<form:input path="inforAlias" type="text" />
			</div>
			<div>
				<input type="button" value="Lấy Alias" id="btnAlias" />
			</div>
		</div>
		<div>
			<label>Hình nền slide giới thiệu</label>
			<div>
				<form:input path="inforImage" type="text" />
			</div>
			<div>
				<input type="button" value="Hình ảnh" id="btnImage" />
			</div>
		</div>
		<div>
			<label>Nội dung bài giới thiệu</label>
<%-- 			<form:input path="inforDataHash" type="text" cols="20" value="${normalBean.inforDataHash}" /> --%>
			<form:textarea rows="10" path="inforContent" />
		</div>
		<div>
			<input type="submit" value="Cập nhật"> <input type="button"
				value="Làm mới" id="btnMoi">
		</div>
	</form:form>
	<%-- <table class="artable" id="arTableId">
		<tr>
			<th width="10%">Mã Bài Viết</th>
			<th width="10%">Tên Bài Viết</th>
			<th width="10%">Alias Url</th>
			<th width="60%">Nội dung bài viết</th>
			<th width="5%">Sửa</th>
			<th width="5%">Xóa</th>
		</tr>
		<c:forEach var="art" items="${allArticle}" varStatus="loop">
			<tr>
				<td>${art.articleId}</td>
				<td>${art.articleName}</td>
				<td>${art.articleAlias}</td>
				<td>${art.articleContent}</td>
				<td><a href="#"
					onclick="layDuLieuTuBangBaiViet(${loop.index});">Sửa</a></td>
				<td><a
					href="${pageContext.request.contextPath}/quantri/gioithieu?deleteId=${art.articleId}">Xóa</a></td>
			</tr>
		</c:forEach>
	</table>  --%>
</body>
		</html>
	</tiles:putAttribute>
</tiles:insertDefinition>