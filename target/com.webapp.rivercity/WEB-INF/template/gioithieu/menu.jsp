<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="top">
		<div class="navigation show">
			<div class="nav">
				<ul>
					<li><a class="link-home" href="http://rivercity.vn/"
						data-name="home-page">Home</a></li>
					<li><a class="play-video" href="javascript:void(0);"
						data-href="http://rivercity.vn/view-video.html?id=7">Video</a></li>

					<li class="current"><a class="link-load"
						href="gioi-thieu.html" data-name="about-page">Giới
							thiệu</a></li>
					<li><a class="link-load"
						href="vi-tri.html" data-name="location-page">Vị
							trí</a></li>
					<li><a class="link-load"
						href="${pageContext.request.contextPath}/tien-ich.html"
						data-name="facilities-page">Tiện ích</a></li>
					<li><a class="link-load"
						href="thong-tin-can-ho.html"
						data-name="apartment-page">Thông tin căn hộ</a></li>
					<li><a class="link-load"
						href="thu-vien.html" data-name="library-page">Thư
							viện</a></li>
					<li><a class="link-load"
						href="tin-tuc.html" data-name="news-page">Tin
							tức</a></li>
					<li><a class="link-load"
						href="lien-he.html" data-name="contact-page">Liên
							hệ</a></li>
				</ul>
			</div>
			<!--SOCIAL-->
			<div class="social">
				<ul>
					<li><a href="https://www.facebook.com/angia.investment"
						target="_blank" class="facebook"></a></li>
					<li><a
						href="https://plus.google.com/b/105160041087041940761/+AngiaVn/posts"
						target="_blank" class="google"></a></li>
					<li><a href="https://www.youtube.com/c/AngiaVn"
						target="_blank" class="youtube"></a></li>
				</ul>
			</div>
			<!--SOCIAL-->
			<!--LANGUAGE-->
			<div class="lang">
				<form id="change_lang" enctype="multipart/form-data" method="post"
					action="http://rivercity.vn/index.php?route=common/home">
					<ul>
						<li class=""><a href="javascript:void(0);"
							onclick="$(&#39;input[name=\&#39;language_code\&#39;]&#39;).attr(&#39;value&#39;, &#39;en&#39;).submit();$(&#39;#change_lang&#39;).submit();return false;">en</a><span></span></li>
					</ul>
					<input type="hidden" value="" name="language_code"> <input
						id="changlanguage_redirect" type="hidden"
						value="http://rivercity.vn/gioi-thieu/gioi-thieu-du-an.html"
						name="redirect">
				</form>
			</div>
			<!--LANGUAGE-->
		</div>
	</div>