<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tiles:insertDefinition name="lienheTemplate">
	<tiles:putAttribute name="body">
		<div class="title-page"
			style="background-image: url(<c:url value="/resources/lienhe/images/xbg.jpg.pagespeed.ic.UW9g3TOGcJ.jpg" />)">
			<h1>Liên hệ</h1>
		</div>
		<div class="content-page">
			<div class="box-content">
				<div class="bg-cover"
					style="background-image: url(<c:url value="/resources/lienhe/images/xbg.jpg.pagespeed.ic.UW9g3TOGcJ.jpg" />)"></div>
				<div class="contact-box">
					<div class="contact-content">
						<h2>Trụ sở điều hành</h2>
						<h3>AN GIA BUILDING</h3>
						<p>30 Nguyễn Thị Diệu, P6, Q3, TP HCM</p>
					</div>
					<div class="contact-content">
						<h2>Liên hệ đặt mua và xem căn hộ mẫu</h2>
						<p>422 Đào Trí, P Phú Thuận, Q7, TP HCM</p>
						<p>
							Hotline: <a href="tel:0901 93 39 39">0901 93 39 39</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
								href="tel:0901 96 86 86">0901 96 86 86</a>
						</p>
					</div>
				</div>
				<div class="contact-agent">
					<h2>Đại lý bán hàng chính thức</h2>
					<div class="agent-slide" data-time="10000">
						<div class="agent">
							<img
								src="<c:url value="/resources/lienhe/images/xSeaReal.jpg.pagespeed.ic.XItLGgo77q.jpg" />"
								alt="Seareal Link">
							<div class="box-call">
								<span class="icon"></span>
								<div class="call-agent">
									<a href="tel:0908 405 207">0908 405 207</a>
								</div>
							</div>
						</div>
						<c:forEach var="sAgent" items="${agent}" varStatus="loop">
							<div class="agent">
								<img
									src="${sAgent.agencyLogo}"
									alt="${sAgent.agencyName}">
								<div class="box-call">
									<span class="icon"></span>
									<div class="call-agent">
										<a href="tel:${sAgent.agencyPhone}">${sAgent.agencyPhone}</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="pagination"></div>
				</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>