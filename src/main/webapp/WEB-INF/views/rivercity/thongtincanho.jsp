<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tiles:insertDefinition name="lienheTemplate">
	<tiles:putAttribute name="body">
		<div class="title-page"
			style="background-image: url(<c:url value="/resources/thongtincanho/images/xbg.jpg.pagespeed.ic.fzgWKdj8OY.jpg" />)">
			<h1>Thông tin căn hộ</h1>
		</div>
		<div class="content-page">
			<div class="apartment">
				<div class="compass-2"></div>
				<div class="note-top">HƯỚNG SÔNG SÀI GÒN - CẦU PHÚ MỸ</div>
				<div class="note-bottom">HƯỚNG PHÚ MỸ HƯNG - NHÁNH SÔNG SÀI
					GÒN</div>
				<div class="typical">
					<div class="typical-top">
						<div class="block-name bot-01">
							<h3>
								Block <strong>A</strong>
							</h3>
							<span class="shape"></span>
						</div>
						<div class="block-name bot-02">
							<h3>
								Block <strong>D</strong>
							</h3>
							<span class="shape"></span>
						</div>
						<a class="block-a" href="thong-tin-can-ho/block-a.html"></a> <a
							class="block-d" href="thong-tin-can-ho/block-d.html"></a>
						<div class="block-a-o"></div>
						<div class="block-d-o"></div>
					</div>
				</div>
				<div class="apartment-bg"
					style="background-image: url(<c:url value="/resources/thongtincanho/images/xplan.jpg.pagespeed.ic.b8J51zU4NI.jpg" />)"></div>
			</div>
			<div class="link-block">
				<a class="block-link" href="thong-tin-can-ho/block-a.html"> <img
					src="<c:url value="/resources/thongtincanho/images/xblock-a.jpg.pagespeed.ic.drRFgUwhAp.jpg" />"
					alt="Block A">
					<h3>
						Block <strong>A</strong>
					</h3>
				</a> <a class="block-link" href="thong-tin-can-ho/block-d.html"> <img
					src="<c:url value="/resources/thongtincanho/images/xblock-d.jpg.pagespeed.ic.ffhn2-ciFy.jpg" />"
					alt="Block D">
					<h3>
						Block <strong>D</strong>
					</h3>
				</a>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>