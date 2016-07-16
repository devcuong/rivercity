<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<!--DESKTOP INTRO-->
		<div class="slider-home" data-time="6000" style="height: 597px;">
			<div class="slide-bg container-vertical container-3d container-cube"
				style="height: 597px;">
				<div class="pagination pagination-clickable pagination-bullets">
				</div>
				<div class="bg-nav" style="height: 477px;">
					<div class="button-next"></div>
					<div class="button-prev"></div>
				</div>
				<div class="item-wrapper"
					style="display: flex; transform-origin: 50% 50% -298.5px; transform: translate3d(0px, 0px, 0px) rotateX(270deg) rotateY(0deg); transition-duration: 0ms;">
					 <c:forEach var="sImage" items="${slide}" varStatus="loop">
						<c:choose>
							<c:when test="${sImage.imageActive == 1}">
								<div class="item-container box-01" data-slide-index="${loop.index}"
									style="display: flex; height: 597px; transform: rotateX(0deg) rotateY(0deg) translate3d(0px, 0px, 0px); transition-duration: 0ms;">
									<div class="bg-home"
										style="width: 1366px; height: 597px; background-image: url(&quot;${sImage.imageUrl}&quot;);"></div>
									<div class="text-bg">
										<h2>
											<strong>${sImage.imageName}</strong>
										</h2>
										<h3>${sImage.imageDescription}</h3>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<div class="item-container box-01" data-slide-index="${loop.index}"
									style="display: flex; height: 597px; transform: rotateX(0deg) rotateY(0deg) translate3d(0px, 0px, 0px); transition-duration: 0ms;">
									<div class="bg-home"
										style="width: 1366px; height: 597px; background-image: url(&quot;${sImage.imageUrl}&quot;);"></div>
									<div class="text-bg">
										<h2>
											<strong>${sImage.imageName}</strong>
										</h2>
										<h3>${sImage.imageDescription}</h3>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
			</div>
		</div>
		<!--DESKTOP INTRO-->
		<!--MOBILE-INTRO-->
		<section id="home">
			<div class="mobile-bg">
				<img src="<c:url value="/resources/images/bg1-m.jpg" />"
					alt="Trang chủ"
					style="width: 1366px; height: 708.613px; left: 0px; margin-top: 0px;">
				<div class="title-home">
					<h1>
						<span class="line1"><span class="char1 move"><span
								class="char1">B</span></span><span class="char2 move"><span
								class="char1">I</span></span><span class="char3 move"><span
								class="char1">Ể</span></span><span class="char4 move"><span
								class="char1">U</span></span><span class="char5 move"><span
								class="char1"> </span></span><span class="char6 move"><span
								class="char1">T</span></span><span class="char7 move"><span
								class="char1">Ư</span></span><span class="char8 move"><span
								class="char1">Ợ</span></span><span class="char9 move"><span
								class="char1">N</span></span><span class="char10 move"><span
								class="char1">G</span></span><span class="char11 move"><span
								class="char1"> </span></span><span class="char12 move"><span
								class="char1">K</span></span><span class="char13 move"><span
								class="char1">I</span></span><span class="char14 move"><span
								class="char1">Ế</span></span><span class="char15 move"><span
								class="char1">N</span></span><span class="char16 move"><span
								class="char1"> </span></span><span class="char17 move"><span
								class="char1">T</span></span><span class="char18 move"><span
								class="char1">R</span></span><span class="char19 move"><span
								class="char1">Ú</span></span><span class="char20 move"><span
								class="char1">C</span></span><span class="char21 move"><span
								class="char1"> </span></span><span class="char22 move"><span
								class="char1">Đ</span></span><span class="char23 move"><span
								class="char1">Ộ</span></span><span class="char24 move"><span
								class="char1">C</span></span><span class="char25 move"><span
								class="char1"> </span></span><span class="char26 move"><span
								class="char1">Đ</span></span><span class="char27 move"><span
								class="char1">Á</span></span><span class="char28 move"><span
								class="char1">O</span></span></span><span class="line2"><span
							class="char1 move"><span class="char1"> </span></span><span
							class="char2 move"><span class="char1">N</span></span><span
							class="char3 move"><span class="char1">G</span></span><span
							class="char4 move"><span class="char1">A</span></span><span
							class="char5 move"><span class="char1">Y</span></span><span
							class="char6 move"><span class="char1"> </span></span><span
							class="char7 move"><span class="char1">T</span></span><span
							class="char8 move"><span class="char1">Ạ</span></span><span
							class="char9 move"><span class="char1">I</span></span><span
							class="char10 move"><span class="char1"> </span></span><span
							class="char11 move"><span class="char1">N</span></span><span
							class="char12 move"><span class="char1">A</span></span><span
							class="char13 move"><span class="char1">M</span></span><span
							class="char14 move"><span class="char1"> </span></span><span
							class="char15 move"><span class="char1">S</span></span><span
							class="char16 move"><span class="char1">À</span></span><span
							class="char17 move"><span class="char1">I</span></span><span
							class="char18 move"><span class="char1"> </span></span><span
							class="char19 move"><span class="char1">G</span></span><span
							class="char20 move"><span class="char1">Ò</span></span><span
							class="char21 move"><span class="char1">N</span></span></span>
					</h1>
				</div>
			</div>
			<div class="video-intro">
				<a class="home-video" href="javascript:void(0);"
					data-href="http://rivercity.vn/view-video.html?id=7"></a>
				<h2>Video</h2>
				<div class="bg-video"
					style="background-image: url(http://rivercity.vn/pictures/catalog/video/p.jpg)"></div>
			</div>
		</section>
		<section id="location">
			<div class="location-mobile">
				<h2>
					<strong>TUYỆT TÁC CĂN HỘ</strong><br>BÊN SÔNG SÀI GÒN
				</h2>
				<a class="link-map" href="https://goo.gl/1A9tt8" target="_blank">Xem
					Google map</a>
				<div class="map-mobile">
					<a class="zoom" href="javascript:void(0);"
						data-src="http://rivercity.vn/pictures/catalog/location/map_s.jpg"></a>
					<img src="<c:url value="/resources/images/map_s.jpg" />"
						alt="TUYỆT TÁC CĂN HỘ BÊN SÔNG SÀI GÒN">
				</div>
			</div>
		</section>
		<section id="facilities">
			<div class="mobile-intro">
				<div class="text-intro">
					<h2>
						<strong>KHU BIỂN ĐẢO NHÂN TẠO</strong>
					</h2>
					<h3>LẦN ĐẦU TIÊN XUẤT HIỆN TẠI VIỆT NAM</h3>
					<a class="go-page" href="http://rivercity.vn/tien-ich.html">TIỆN
						NGHI CUỘC SỐNG</a>
				</div>
				<img src="<c:url value="/resources/images/facilities.jpg" />"
					alt="KHU BIỂN ĐẢO NHÂN TẠO LẦN ĐẦU TIÊN XUẤT HIỆN TẠI VIỆT NAM">
			</div>
		</section>
		<section id="apartment">
			<div class="mobile-intro">
				<div class="text-intro">
					<h2>
						<strong>QUẢNG TRƯỜNG NƯỚC &amp; ÁNH SÁNG</strong>
					</h2>
					<h3>LẦN ĐẦU TIÊN XUẤT HIỆN TẠI VIỆT NAM</h3>
					<a class="go-page" href="http://rivercity.vn/thong-tin-can-ho.html">BẢN
						VẼ CĂN HỘ</a>
				</div>
				<img src="<c:url value="/resources/images/facilities2.jpg" />"
					alt="QUẢNG TRƯỜNG NƯỚC &amp; ÁNH SÁNG LẦN ĐẦU TIÊN XUẤT HIỆN TẠI VIỆT NAM">
			</div>
		</section>
		<!--MOBILE-INTRO-->
	</tiles:putAttribute>
</tiles:insertDefinition>