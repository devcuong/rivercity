<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tiles:insertDefinition name="trangconTemplate">
	<tiles:putAttribute name="body">
		<div class="body-left">
			<div id="Breadcrumb"></div>
			<div id="TopContent"></div>
			<div>
				<div id="TopContentLeft" class="SubTopContent"></div>
				<div id="TopContentRight" class="SubTopContent"></div>
			</div>
			<div style="clear: both;"></div>
			<div id="LeftMainContent">
				<div class="container-default">
					<div id="ctl28_BodyContainer">
						<div id="ctl28_ctl00_panelNewsDetails" class="contentDetail">
							<h1 id="ctl28_ctl00_divArticleTitle"
								class="detailsView-title-style">${newsMain.newsTitle}</h1>
							<div id="ctl28_ctl00_divDate" class="date-first">06/08/2016
								11:49</div>
							<div id="ctl28_ctl00_palSubject">
								<div>
									<div class="inasub">
										<strong>Cùng chủ đề: </strong> <a
											href="http://batdongsan.com.vn/ve-batdongsancomvn">Về
											Batdongsan.com.vn</a>
									</div>
								</div>
							</div>
							<div class="detailsView-contents-style">
								<h2 id="ctl28_ctl00_divSummary" class="summary">${newsMain.newsDescription}</h2>
							</div>
							<div id="divContents"
								class="detailsView-contents-style detail-article-content">
								${newsMain.newsContent}</div>
							<div id="ctl28_ctl00_divSourceNews"
								class="detailsView-contents-style soucenews"
								style="padding: 10px"></div>
							<div style="clear: both; height: 20px;"></div>
							<div class="stat detail-tools" ct="1" ac="2" cid="79328">
								<div class="tool-left">
									<a href="javascript:;"
										onclick="UpdateLikeNumberAndCookie('79328','','79328')"> <span
										id="79328" class="normalblue">Thích</span> <span
										style="color: #848484">&nbsp;|&nbsp;</span> <img alt="icon"
										src="./xemtin_files/hand.jpg" width="12px" height="12px">&nbsp;
										<span id="ctl28_ctl00_lblLikeNumber" class="79328"
										style="color: #727272;">0</span>
									</a>&nbsp;&nbsp; <a title="Facebook" onfocus="this.blur();"
										href="https://www.facebook.com/sharer/sharer.php?u=file:///C:/Users/Administrator/Desktop/xemtin.html&amp;t=Batdongsan.com.vn – Một thập kỷ đồng hành cùng bất động sản Việt Nam"
										target="_blank" id="facebook" rel="nofollow"> <img
										class="sociable-hovers" alt="Facebook" title="Facebook"
										src="http://file4.batdongsan.com.vn/Images/facebook.gif"></a>&nbsp;&nbsp; <a
										onfocus="this.blur();" title="Twitter"
										href="https://twitter.com/intent/tweet?original_referer=file:///C:/Users/Administrator/Desktop/xemtin.html&amp;text=Batdongsan.com.vn – Một thập kỷ đồng hành cùng bất động sản Việt Nam&amp;tw_p=tweetbutton&amp;url=file:///C:/Users/Administrator/Desktop/xemtin.html&amp;via=your_screen_name"
										target="_blank" id="twitter" rel="nofollow"> <img
										class="sociable-hovers" alt="Twitter" title="Twitter"
										src="http://file4.batdongsan.com.vn/Images/twitter.gif"></a>&nbsp;&nbsp; <a
										title="Google Bookmarks" onfocus="this.blur();"
										href="https://www.google.com/bookmarks/mark?op=edit&amp;bkmk=file:///C:/Users/Administrator/Desktop/xemtin.html&amp;title=Batdongsan.com.vn – Một thập kỷ đồng hành cùng bất động sản Việt Nam"
										target="_blank" id="google" rel="nofollow"> <img
										class="sociable-hovers" alt="Google Bookmarks"
										title="Google Bookmarks" src="http://file4.batdongsan.com.vn/Images/google.gif">
									</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</div>
								<div class="tool-right">
									<div style="float: left; width: 81px;">
										<div style="float: left;">
											<img alt="Quay lại" src="http://file4.batdongsan.com.vn/Images/Back.png">
										</div>
										<div
											style="margin-top: 0px; float: right; padding-left: 5px; padding-right: 5px;">
											<a
												style="cursor: pointer; text-decoration: none; white-space: nowrap;"
												onclick="window.history.back();" rel="nofollow">Quay lại
											</a>
										</div>
									</div>
									<div style="float: left; width: 88px;">
										<div style="float: left;">
											<img alt="In bài này" src="http://file4.batdongsan.com.vn/Images/Print.png">
										</div>
										<div
											style="margin-top: 0px; float: right; padding-left: 5px; padding-right: 5px;">
											<a style="cursor: pointer; text-decoration: none;"
												onclick="window.print();" rel="nofollow"> In bài này </a>
										</div>
									</div>
									<div style="float: left; width: 138px;">
										<div style="float: left;">
											<img alt="Gửi bài này cho bạn bè"
												src="http://file4.batdongsan.com.vn/Images/Email.png">
										</div>
										<div
											style="margin-top: 0px; float: right; padding-left: 5px; padding-right: 5px;">
											<a style="text-decoration: none;" rel="nofollow"
												class="openFancy fancybox.iframe"
												href="http://batdongsan.com.vn/SendMail.aspx?returnurl=http://batdongsan.com.vn/tin-thi-truong/batdongsan-com-vn-mot-thap-ky-dong-hanh-cung-bat-dong-san-viet-nam-ar79328">
												<span id="ctl28_ctl00_Label3" title="Gửi bài cho bạn bè"
												class="font_color article-box-search-font">Gửi bài
													cho bạn bè</span>
											</a>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="clear" style="margin-bottom: 10px;"></div>
						<div>
							<br>
						</div>
					</div>
				</div>
				<div class="othernews">
					<h3 class="normalblue" style="white-space: nowrap;">Tin nhiều
						người đọc</h3>
					<div class="otherline" style="width: 80%;">&nbsp;</div>
					<c:forEach var="news" items="${news}">
					<a class="font-link-box-item iconlist"
						href="${news.newsAlias}-${news.newsId}.html"
						title="${news.newsShortTitle}">
						${news.newsShortTitle}<i>(${news.newsDate})</i>
					</a> 
					</c:forEach>
					<div class="clear"></div>
					</div>
				<div style="clear: both;"></div>
				<div class="othernews">
					<h3 class="normalblue" style="white-space: nowrap;">Tin mới nhất</h3>
					<div class="otherline" style="width: 86%;">&nbsp;</div>
					<c:forEach var="news" items="${lastestNews}">
					<a class="font-link-box-item iconlist"
						href="${news.newsAlias}-${news.newsId}.html"
						title="${news.newsShortTitle}">
						${news.newsShortTitle}<i>(${news.newsDate})</i>
					</a> 
					</c:forEach>
					<div class="clear"></div>
					</div>
				<div style="text-align: right;">
					<a id="lnkNewOther" class="normalblue"
						href="http://batdongsan.com.vn/tin-thi-truong"
						style="cursor: pointer; text-decoration: none; font-weight: bold;">Xem
						thêm các tin khác</a>
				</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>