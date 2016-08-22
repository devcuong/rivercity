<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="MainRight" class="col_right">
	<div style="clear: both;"></div>
	<div class="header-bottom-right">
		<a href="/ho-tro-tai-chinh" class="" title="Hỗ trợ tài chính"> Hỗ
			trợ tài chính </a>
	</div>
	<div id="gglbody"></div>
	<div class="adPosition"
		positioncode="BANNER_POSITION_RIGHT_MAIN_CONTENT"
		style="margin-bottom: 10px;">
		<div class="adshared">
			<div class="aditem" time="15" style="display: block;"
				src="http://file4.batdongsan.com.vn/2016/06/13/V5fQl2m0/20160613154250-76ef.jpg"
				altsrc="http://file4.batdongsan.com.vn/2016/06/13/V5fQl2m0/20160613154250-76ef.jpg"
				link="https://alokiddy.com.vn/" bid="3850" tip="" tp="7" w="240"
				h="150" k="">
				<a href="/click.aspx?bannerid=3850" target="_blank" title=""
					rel="nofollow"><img
					src="http://file4.batdongsan.com.vn/2016/06/13/V5fQl2m0/20160613154250-76ef.jpg"
					style="width: 100%; height: 150px;"></a>
			</div>
		</div>
		<div class="adshared">
			<div class="aditem" time="6" style="display: block;"
				src="http://file1.batdongsan.com.vn/file.305970.jpg"
				altsrc="http://file1.batdongsan.com.vn/file.0.jpg"
				link="http://batdongsan.com.vn/phong-thuy" bid="664"
				tip="http://batdongsan.com.vn/ban-can-ho-chung-cu-tp-hcm" tp="7"
				w="240" h="150" k="">
				<a href="/click.aspx?bannerid=664" target="_blank"
					title="http://batdongsan.com.vn/ban-can-ho-chung-cu-tp-hcm"
					rel="nofollow"><img
					src="http://file1.batdongsan.com.vn/file.305970.jpg"
					style="width: 100%; height: 150px;"></a>
			</div>
		</div>
		<div class="adshared">
			<div class="aditem" time="10" style="display: block;"
				src="http://file4.batdongsan.com.vn/2015/08/27/V5fQl2m0/20150827085210-94b4.jpg"
				altsrc="http://file1.batdongsan.com.vn/file.0.jpg"
				link="http://batdongsan.com.vn/tu-van-noi-ngoai-that" bid="1788"
				tip="" tp="7" w="240" h="150" k="">
				<a href="/click.aspx?bannerid=1788" target="_blank" title=""
					rel="nofollow"><img
					src="http://file4.batdongsan.com.vn/2015/08/27/V5fQl2m0/20150827085210-94b4.jpg"
					style="width: 100%; height: 150px;"></a>
			</div>
		</div>
		<div class="adshared">
			<div class="aditem" time="15" style="display: block;"
				src="http://file4.batdongsan.com.vn/2016/07/14/dBVdCK7H/20160714110052-1732.jpg"
				altsrc="http://file1.batdongsan.com.vn/file..jpg"
				link="http://vuluat.com/" bid="3381" tip="" tp="7" w="240" h="90"
				k="">
				<a href="/click.aspx?bannerid=3381" target="_blank" title=""
					rel="nofollow"><img
					src="http://file4.batdongsan.com.vn/2016/07/14/dBVdCK7H/20160714110052-1732.jpg"
					style="width: 100%; height: 90px;"></a>
			</div>
		</div>
		<div class="adshared">
			<div class="aditem" time="10" style="display: block;"
				src="http://file1.batdongsan.com.vn/file.343517.jpg"
				altsrc="http://file1.batdongsan.com.vn/file.0.jpg"
				link="http://kientrucvip.com/" bid="1351" tip="" tp="7" w="240"
				h="90" k="">
				<a href="/click.aspx?bannerid=1351" target="_blank" title=""
					rel="nofollow"><img
					src="http://file1.batdongsan.com.vn/file.343517.jpg"
					style="width: 100%; height: 90px;"></a>
			</div>
		</div>
	</div>
	<div style="clear: both; margin-bottom: 10px;"></div>
	<div class="container-common">
		<div id="ctl34_HeaderContainer" class="box-header">
			<div class="name_tit" align="center">
				<h3 style="color: White;">CHỦ ĐỀ ĐƯỢC QUAN TÂM</h3>
			</div>
		</div>
		<div id="ctl34_BodyContainer" class="bor_box">
			<div class="list">
				<ul>
					<c:forEach var="sCategoryNews" items="${categoryNews}">
						<li><a href="/goi-ho-tro-30000-ty-dong"
							title="${sCategoryNews.newsCategoryName}">${sCategoryNews.newsCategoryName}</a></li>
					</c:forEach>
				</ul>
			</div>
			<div
				style="padding-left: 20px; padding-top: 5px; border-top: 1px solid #ccc; margin-top: 10px;">
				<a href="/chu-de-trong-chu-de-ve-thong-tin-thi-truong"
					class="linktoall">Xem tất cả</a>
			</div>
		</div>
		<div id="ctl34_FooterContainer"></div>
	</div>
	<div class="enterprise-rightContent">
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
	<div style="clear: both;"></div>
	<div class="html-content">
		<div
			style="width: 210px; height: 175px; background: url('images/banner-app/bg.jpg'); float: left; margin-top: 10px">
			<div style="margin-top: 84px; margin-left: 5px">div html</div>
		</div>
	</div>
	<div style="clear: both;"></div>
</div>