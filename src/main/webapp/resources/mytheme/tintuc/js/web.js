function madeAjaxCall(newsId) {
/*	var radioValue = document.querySelector('input[name="type"]:checked').value;*/
	$.ajax({
		type : "post",
		url : "http://namtiencorp.com/tin-tuc",
		data : 'newsId=' +newsId,
		success : function(response) {
			$("#news-content").html(response.newsContent);
		},
		error : function(response) {
			alert("error when return");
		}
	});
}