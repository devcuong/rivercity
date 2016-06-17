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
								data-name="${inforDataName.inforName}"
								data-title="RIVER CITY - ${sInformationNormal.inforName}"
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
										${sInformationInvestor.investorSpecialId}
										${sInformationSpecial.inforId}
										<c:choose>
											<c:when
												test="${sInformationInvestor.investorSpecialId == 1}">
												<div class="box-text">
													<img
														src="${sInformationInvestor.investerImage}"
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
					<%-- <div class="item-container" data-hash="1"
						data-href="http://rivercity.vn/gioi-thieu/dau-tu-phat-trien.html"
						data-name="1" data-title="RIVER CITY - Đầu Tư &amp; Phát Triển"
						data-description="" data-keyword="" data-slide-index="0"
						style="display: flex; height: 597px; transform: translate3d(0px, 0px, 0px) rotateX(10deg) rotateY(0deg); z-index: 0; transition-duration: 0ms;">
						<div class="bg-picture">
							<img src="<c:url value="/resources/second/images/bg7.jpg" />"
								alt="ĐẦU TƯ VÀ PHÁT TRIỂN"
								style="width: 1366px; height: 708.613px; left: 0px;">
						</div>
						<div class="content-box color-03" style="max-height: 377px;">
							<h2>ĐẦU TƯ VÀ PHÁT TRIỂN</h2>

							<mark>TUYỆT TÁC RIVER CITY ĐẾN TỪ NHỮNG THƯƠNG HIỆU HÀNG
								ĐẦU</mark>
							<!--chu dau tu-->
							<div class="scrollA"
								style="height: 350px; max-height: 445px; overflow: hidden; outline: none;"
								tabindex="0">
								<div class="box-text">
									<img
										src="<c:url value="/resources/second/images/logo-phatdat.jpg" />"
										alt="Phát Đạt">
									<p>Được thành lập từ năm 2004, Công Ty CP Phát Triển BĐS
										Phát Đạt hiện là một trong những thương hiệu hàng đầu trong
										lĩnh vực bất động sản. Với quỹ đất dồi dào tại các thành phố
										trọng điểm, Phát Đạt đã phát triển dự án ở nhiều phân khúc như
										khách sạn, resort cao cấp, căn hộ, biệt thự, tiêu biểu: The
										EverRich Infinity, The EverRich 3, The EverRich 1…</p>
								</div>
								<div class="box-text">
									<img
										src="<c:url value="/resources/second/images/logo-angia.jpg" />"
										alt="An Gia Investment">
									<p>Thành lập vào năm 2008, An Gia Investment là công ty
										chuyên đầu tư và phát triển các dự án nhà ở, căn hộ tại
										TP.HCM. Với đội ngũ có 15 năm kinh nghiệm trong lĩnh vực bất
										động sản, An Gia Investment hiện là chủ đầu tư của nhiều dự án
										căn hộ cao cấp như: Angia Skyline, Angia Riverside, Angia
										Star, The Garden.</p>
								</div>
								<div class="box-text">
									<img
										src="<c:url value="/resources/second/images/logo-creed.jpg" />"
										alt="Creed Group">
									<p>Được thành lập tại Nhật Bản vào năm 1996, Creed Group là
										quỹ đầu tư tài chính tầm cỡ với quy mô lên đến 5 tỉ USD,
										chuyên đầu tư vào lĩnh vực bất động sản. Đến nay, Creed Group
										đã tham gia phát triển nhiều dự án bất động sản nổi bật ở
										nhiều quốc gia như Nhật Bản, Malaysia, Cambodia, Singapore,
										Myanmar, Bangladesh và Việt Nam.</p>
								</div>
								<div class="box-text">
									<img
										src="<c:url value="/resources/second/images/logocoteccons.jpg" />"
										alt="Coteccons">
									<p>Tổng thầu của dự án River City - Coteccons là tập đoàn
										hàng đầu trong lĩnh vực xây dựng, thiết kế và thi công cho
										hàng loạt các dự án lớn tại Việt Nam, trở thành thương hiệu
										bảo chứng chất lượng cho những công trình mang đẳng cấp quốc
										tế. Coteccons hiện là đơn vị tổng thầu của các dự án do An Gia
										Investment làm chủ đầu tư như: Angia Skyline, Angia Riverside,
										Angia Star.</p>
								</div>
							</div>
							<div id="ascrail2002" class="nicescroll-rails"
								style="width: 10px; z-index: 1; cursor: default; position: absolute; top: 61.1657px; left: 752.286px; height: 277px; opacity: 1; background: rgba(0, 0, 0, 0.0980392);">
								<div
									style="position: relative; top: 0px; float: right; width: 8px; height: 150px; border: 1px solid rgba(0, 0, 0, 0); border-radius: 10px; background-color: rgb(80, 112, 174); background-clip: padding-box;"></div>
							</div>
						</div>
					</div> --%>
					<c:forEach var="sInformationNormal" items="${informationNormal}"
						varStatus="loop">
						<div class="item-container"
							data-hash="${sInformationNormal.inforDataHash}"
							data-href="${sInformationNormal.inforUrl}"
							data-name="${sInformationNormal.inforDataName}"
							data-title="RIVER CITY - ${sInformationNormal.inforName}"
							data-description="" data-keyword="" data-slide-index="2"
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