<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tiles:insertDefinition name="quantriTemplate">
	<tiles:putAttribute name="body">
		<c:forEach var="sfileName" items="${fileName}" varStatus="loop">
			<a
				href="${pageContext.request.contextPath}/resources/images/${sfileName}">${sfileName}</a>
			<br>
			<hr>
		</c:forEach>
	</tiles:putAttribute>
</tiles:insertDefinition>