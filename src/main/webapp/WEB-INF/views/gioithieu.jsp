<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tiles:insertDefinition name="secondTemplate">
	<tiles:putAttribute name="body">
		<div class="title-page"
			style="background-image: url(http://rivercity.vn/pictures/catalog/about/bg.jpg)">
			<h1>
				<span class="word1"><span class="char1 move"><span
						class="char1">G</span></span><span class="char2 move"><span
						class="char1">i</span></span><span class="char3 move"><span
						class="char1">ớ</span></span><span class="char4 move"><span
						class="char1">i</span></span></span> <span class="word2"><span
					class="char1 move"><span class="char1">t</span></span><span
					class="char2 move"><span class="char1">h</span></span><span
					class="char3 move"><span class="char1">i</span></span><span
					class="char4 move"><span class="char1">ệ</span></span><span
					class="char5 move"><span class="char1">u</span></span></span>
			</h1>
		</div>
		<!--SLIDE CONTENT-->
		<div class="slider-about">
			<div
				class="slide-bg container-vertical container-3d container-coverflow"
				style="height: 597px;">
				<div class="sub-nav fadein">
					<ul>
						<c:forEach var="sInformationNormal" items="${informationNormal}"
							varStatus="loop">
							<li><h2>
									<div>
										<strong>${sInformationNormal.inforName}</strong>
									</div>
								</h2> <a class="bullet" href="${sInformationNormal.inforUrl}"
								data-name="${sInformationNormal.inforDataName}"
								data-title="RIVER CITY - ${sInformationNormal.inforName}"
								data-description="" data-keyword=""></a></li>
						</c:forEach>
						<c:forEach var="sInformationSpecial" items="${informationSpecial}" varStatus="loop">
						<li><h2>
									<div>
										<strong>${sInformationSpecial.inforName}</strong>
									</div>
								</h2> <a class="bullet" href="${sInformationSpecial.inforUrl}"
								data-name="${sInformationSpecial.inforDataName}"
								data-title="RIVER CITY - ${sInformationSpecial.inforName}"
								data-description="" data-keyword=""></a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="bg-nav" style="height: 477px;">
					<div class="button-next"></div>
					<div class="button-prev"></div>
				</div>
				<div class="item-wrapper"
					style="display: flex; transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
					<c:forEach var="sInformationSpecial" items="${informationSpecial}"
						varStatus="loop">
						<div class="item-container"
							data-hash="${sInformationSpecial.inforDataHash}"
							data-href="${sInformationSpecial.inforUrl}"
							data-name="${sInformationSpecial.inforDataName}"
							data-title="RIVER CITY - ${sInformationSpecial.inforName}"
							data-description="" data-keyword="" data-slide-index="0"
							style="display: flex; height: 597px; transform: translate3d(0px, 0px, 0px) rotateX(10deg) rotateY(0deg); z-index: 0; transition-duration: 0ms;">
							<div class="bg-picture">
								<img src="${sInformationSpecial.inforImage}"
									alt="${sInformationSpecial.inforName}"
									style="width: 1366px; height: 708.613px; left: 0px;">
							</div>
							<div class="content-box color-03" style="max-height: 377px;">
								<h2>${sInformationSpecial.inforName}</h2>

								<mark>${sInformationSpecial.inforContent}</mark>
								<!--chu dau tu-->
								<div class="scrollA"
									style="height: 350px; max-height: 445px; overflow: hidden; outline: none;"
									tabindex="0">
									<c:forEach var="sInformationInvestor"
										items="${informationInvestor}" varStatus="loop">
										<c:choose>
											<c:when
												test="${sInformationInvestor.informationSpecialId == sInformationSpecial.inforId}">
												<div class="box-text">
													<img
														src="${sInformationInvestor.investorImage}"
														alt="Phát Đạt">
													<p>${sInformationInvestor.investorDescription}</p>
												</div>
											</c:when>
										</c:choose>
									</c:forEach>
								</div>
							</div>
						</div>
					</c:forEach>
					<c:forEach var="sInformationNormal" items="${informationNormal}"
						varStatus="loop">
						<div class="item-container"
							data-hash="${sInformationNormal.inforDataHash}"
							data-href="${sInformationNormal.inforUrl}"
							data-name="${sInformationNormal.inforDataName}"
							data-title="RIVER CITY - ${sInformationNormal.inforName}"
							data-description="" data-keyword="" data-slide-index="${sInformationNormal.inforId}"
							style="display: flex; height: 597px; transform: translate3d(0px, -50px, 100px) rotateX(-10deg) rotateY(0deg); z-index: 0; transition-duration: 0ms;">
							<div class="bg-picture">
								<img
									src="<c:url value="/resources/second/images/${sInformationNormal.inforImage}" />"
									alt="${sInformationNormal.inforName}"
									style="width: 1366px; height: 708.613px; left: 0px;">
							</div>
							<div class="content-box color-02">
								<h2>${sInformationNormal.inforName}</h2>
								<p>${sInformationNormal.inforContent}</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>