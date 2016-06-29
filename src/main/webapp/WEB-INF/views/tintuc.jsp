<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tiles:insertDefinition name="tintucTemplate">
	<tiles:putAttribute name="body">
		<div class="title-page"
			style="background-image: url(<c:url value="/resources/tintuc/images/xbg.jpg.pagespeed.ic.lTKuwZA4tQ.jpg" />)">
			<h1>Tin tức</h1>
		</div>
		<div class="content-page">
			<div class="bg-cover"
				style="background-image: url(<c:url value="/resources/tintuc/images/xbg10.jpg.pagespeed.ic.Y3PrBFXo1d.jpg" />)"></div>
			<div class="news-list">
				<div class="scrollB">
					<c:forEach var="sNews" items="${news}" varStatus="loop">
						<div class="link-page ">
							<a href="${pageContext.request.contextPath}/tin-tuc/${sNews.newsAlias}.html" data-name="${sNews.newsId}"
								data-title="${sNews.newsTitle}"
								data-description="${sNews.newsDescription}" data-keyword="">
								<div class="new-icon"></div>
								<div class="pic-thumb">
									<img src="${sNews.newsImage}"
										alt="Hội thảo “Bảo vệ quyền lợi người mua nhà – Minh bạch hóa thị trường bất động sản”">
								</div>
								<h3>${sNews.newsTitle}</h3>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="colum-box-news">
				<h1>gdgdgdgsdgsds fdgdgsdfgddsfg sdfgsd g</h1>
			</div>
			<a class="go-page" href="../tien-ich.html">99 TIỆN ÍCH ƯU VIỆT</a> <a
				class="go-page" href="../thong-tin-can-ho.html">BẢN VẼ CĂN HỘ</a>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>