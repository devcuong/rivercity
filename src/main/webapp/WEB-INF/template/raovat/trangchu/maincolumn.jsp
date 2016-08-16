<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="MainRight" class="col_right">
	<div class="adPosition"
		positioncode="BANNER_POSITION_RIGHT_MAIN_CONTENT"
		style="margin-bottom: 10px;"></div>
	<div style="clear: both;"></div>
	<div class="container-common">
		<div id="ctl45_HeaderContainer" class="box-header">
			<div class="name_tit" align="center">
				<h4>Dự án nổi bật</h4>
			</div>
		</div>
		<div id="ctl45_BodyContainer" class="bor_box">
			<div
				style="text-align: center; margin-top: 5px; height: 365px; overflow: auto;"
				class="customeScrollbar">
				<c:forEach var="sProjectBean" items="${projectBean}"
					varStatus="loop">
					<div>
						<a href="khu-can-ho-binh-thanh/soho-riverview-pj2013.html"
							title="${sProjectBean.projectName}"> <img
							src="${sProjectBean.projectImage}" width="156" height="100"
							alt="Soho Riverview">
						</a>
					</div>
					<div class="prj_vip">
						<a href="khu-can-ho-binh-thanh/soho-riverview-pj2013.html"
							title="Soho Riverview">${sProjectBean.projectName} </a>
					</div>
					<div class="line_separate"></div>
				</c:forEach>
			</div>
			<div class="clear"></div>
		</div>
		<div id="ctl45_FooterContainer"></div>
	</div>
	<div style="clear: both; margin-bottom: 10px;"></div>

	<div class="enterprise-rightContent">
		<div class="rc11">
			<div class="title-style">
				<h3>NHÀ MÔI GIỚI TIÊU BIỂU</h3>
			</div>
		</div>
		<div class="rc12">
			<div id="dntb">
				<c:forEach var="sAgentBean" items="${agentBean}" varStatus="loop">
					<c:choose>
						<c:when test="${sAgentBean.isCompany == 1}">
							<div class="vip-row">
								<div class="avatar">
									<a href="#" rel="nofollow"><img class="img"
										style="float: left;" src="${sAgentBean.agencyLogo}"></a>
								</div>
								<a class="link colorboldblue"
									href="ban-nha-rieng-quan-10/cong-ty-ba-ep1232.html"
									rel="nofollow">${sAgentBean.agencyName}</a>
								<div class="fone"></div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="vip-row">
								<div class="avatar">
									<a href="#" rel="nofollow"><img class="img"
										style="float: left;" src="${sAgentBean.agencyLogo}"></a>
								</div>
								<a class="link colorboldblue"
									href="ban-nha-rieng-go-vap/nguyen-hong-trang-ib198588.html"
									rel="nofollow">${sAgentBean.agencyName}</a>
								<div class="fone">${sAgentBean.agencyPhone}</div>
								${sAgentBean.agencyDescription}
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
			<a href="nha-moi-gioi.html" class="linktoall" rel="nofollow">Xem
				tất cả</a>
		</div>
	</div>

	<style type="text/css">
.fone {
	color: #e70404;
	line-height: 20px;
}

.rc12 {
	overflow: hidden;
}

.rc12 .vip-row {
	height: 117px;
}
</style>

	<div style="clear: both;"></div>

	<div class="container-default">
		<div id="ctl55_BodyContainer">
			<div id="bannerfix">
				<div class="adPosition" positioncode="BANNER_POSITION_FIX"
					style="position: fixed; bottom: 0px; right: 0px; z-index: 100;"></div>
			</div>

		</div>

	</div>
	<div class="box-bg-right">
		<ul>
			<li><a href="phong-thuy-theo-tuoi/phong-thuy-theo-tuoi-ft0.html"
				onclick="SetType('2')"
				style="white-space: nowrap; font-size: 11.5px;"> <img
					alt="Xem phong thủy theo tuổi"
					src="../file4.batdongsan.com.vn/images/batquai.png" width="24px">XEM
					PHONG THỦY THEO TUỔI
			</a></li>
			<li><a id="ctl46_ctl01_LinkButton1"
				href="phong-thuy-theo-tuoi/phong-thuy-theo-tuoi-ft0.html#cost"
				onclick="SetType('3')"> <img alt="Tính lãi suất"
					src="../file4.batdongsan.com.vn/images/Info.png">TÍNH LÃI
					SUẤT
			</a></li>
		</ul>
	</div>
	<div style="clear: both;"></div>
	<div class="html-content">
		<div
			style="width: 210px; height: 175px; background: url('images/banner-app/bg.jpg'); float: left; margin-top: 10px">
			<div style="margin-top: 84px; margin-left: 5px">
				<a
					href="https://itunes.apple.com/us/app/batdongsan.com.vn/id866492094?mt=8"
					target="_blank" title="Tải ứng dụng IOS"><img
					alt="Tải ứng dụng IOS" height="33"
					src="images/banner-app/app-ios.jpg" title="Tải ứng dụng IOS"
					width="95"></a><br> <a
					href="https://play.google.com/store/apps/details?id=daivietgroup.net"
					target="_blank" title="Tải ứng dụng Android"><img
					alt="Tải ứng dụng Android" height="33"
					src="images/banner-app/app-android.jpg"
					title="Tải ứng dụng Android" width="95"></a>
			</div>
		</div>

	</div>
	<div style="clear: both;"></div>
</div>