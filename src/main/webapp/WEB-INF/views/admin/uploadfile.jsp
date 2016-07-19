<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tiles:insertDefinition name="quantriTemplate">
	<tiles:putAttribute name="body">
		<html>
<head>
<title>Crunchify - Spring MVC Upload Multiple Files Example</title>
<!--  <script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> -->
<script>
    $(document)
            .ready(
                    function() {
                        //add more file components if Add is clicked
                        $('#addFile')
                                .click(
                                        function() {
                                            var fileIndex = $('#fileTable tr')
                                                    .children().length - 1;
                                            $('#fileTable')
                                                    .append(
                                                            '<tr><td>'
                                                                    + '   <input type="file" name="files['+ fileIndex +']" />'
                                                                    + '</td></tr>');
                                        });
 
                    });
</script>
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
		<h1>UPLOAD HÌNH ẢNH</h1>

		<form:form method="post" action="savefiles.html"
			modelAttribute="uploadForm" enctype="multipart/form-data">

			<p>BẠN CÓ THỂ CHỌN TỐI ĐA 5 HÌNH ĐỂ UPLOAD MỘT LÚC</p>

			<table id="fileTable">
				<tr>
					<td><input name="files[0]" type="file" /></td>
				</tr>
				<tr>
					<td><input name="files[1]" type="file" /></td>
				</tr>
			</table>
			<br />
			<input type="submit" value="Upload" />
			<input id="addFile" type="button" value="Add File" />
		</form:form>

		<br />
	</div>
</body>
		</html>
	</tiles:putAttribute>
</tiles:insertDefinition>
