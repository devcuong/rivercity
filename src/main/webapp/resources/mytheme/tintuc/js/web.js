function madeAjaxCall(newsId) {
	var ctx = "${pageContext.request.contextPath}";
	$.ajax({
		type : "post",
		url : "../tin-tuc",
		data : 'newsId=' +newsId,
		success : function(response) {
			$("#news-content").html(response.newsContent);
		},
		error : function(response) {
			alert("error when return");
		}
	});
}