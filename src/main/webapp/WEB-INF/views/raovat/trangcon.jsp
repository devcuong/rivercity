<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tiles:insertDefinition name="raovatTemplate">
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
									<div class="subinart">
										<div class="artlist">
											<a
												href="http://batdongsan.com.vn/tin-thi-truong/batdongsan-com-vn-thu-hut-gan-3000-khach-tham-quan-tai-viethome-expo-2016-ar78839"
												class="line">Batdongsan.com.vn thu hút gần 3000 khách
												tham quan tại VietHome Expo 2016</a>
										</div>
										<div class="artlist">
												href="http://batdongsan.com.vn/tin-thi-truong/batdongsan-com-vn-hut-khach-trong-ngay-khai-mac-viethome-expo-2016-ar78652">Batdongsan.com.vn
												hút khách trong ngày khai mạc Viethome Expo 2016</a>
										</div>
									</div>
								</div>

							</div>
							<div class="detailsView-contents-style">
								<h2 id="ctl28_ctl00_divSummary" class="summary">${newsMain.newsDescription}</h2>
							</div>
							<div id="divContents"
								class="detailsView-contents-style detail-article-content">
								${newsMain.newsContent}
							</div>
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
										src="./xemtin_files/facebook.gif"></a>&nbsp;&nbsp; <a
										onfocus="this.blur();" title="Twitter"
										href="https://twitter.com/intent/tweet?original_referer=file:///C:/Users/Administrator/Desktop/xemtin.html&amp;text=Batdongsan.com.vn – Một thập kỷ đồng hành cùng bất động sản Việt Nam&amp;tw_p=tweetbutton&amp;url=file:///C:/Users/Administrator/Desktop/xemtin.html&amp;via=your_screen_name"
										target="_blank" id="twitter" rel="nofollow"> <img
										class="sociable-hovers" alt="Twitter" title="Twitter"
										src="./xemtin_files/twitter.gif"></a>&nbsp;&nbsp; <a
										title="Google Bookmarks" onfocus="this.blur();"
										href="https://www.google.com/bookmarks/mark?op=edit&amp;bkmk=file:///C:/Users/Administrator/Desktop/xemtin.html&amp;title=Batdongsan.com.vn – Một thập kỷ đồng hành cùng bất động sản Việt Nam"
										target="_blank" id="google" rel="nofollow"> <img
										class="sociable-hovers" alt="Google Bookmarks"
										title="Google Bookmarks" src="./xemtin_files/google.gif">
									</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</div>
								<div class="tool-right">
									<div style="float: left; width: 81px;">
										<div style="float: left;">
											<img alt="Quay lại" src="./xemtin_files/Back.png">
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
											<img alt="In bài này" src="./xemtin_files/Print.png">
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
												src="./xemtin_files/Email.png">
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

					<a class="font-link-box-item iconlist"
						href="http://batdongsan.com.vn/tin-thi-truong/doanh-nghiep-bds-cam-den-chay-truoc-thang-ngau-ar79229"
						title="Doanh nghiệp BĐS &quot;cầm đèn&quot; chạy trước tháng Ngâu">
						Doanh nghiệp BĐS "cầm đèn" chạy trước tháng Ngâu <i>(01/08)</i>
					</a> <a class="font-link-box-item iconlist"
						href="http://batdongsan.com.vn/tin-thi-truong/the-golden-an-khanh-chay-hang-ngay-trong-ngay-mo-ban-dau-tien-ar79266"
						title="The Golden An Khánh “cháy hàng” ngay trong ngày mở bán đầu tiên">
						The Golden An Khánh “cháy hàng” ngay trong ngày mở bán đầu tiên <i>(03/08)</i>
					</a> <a class="font-link-box-item iconlist"
						href="http://batdongsan.com.vn/tin-thi-truong/suc-soi-nha-dat-tho-cu-ha-noi-ar79308"
						title="Sục sôi nhà đất thổ cư Hà Nội"> Sục sôi nhà đất thổ cư
						Hà Nội <i>(05/08)</i>
					</a> <a class="font-link-box-item iconlist"
						href="http://batdongsan.com.vn/tin-thi-truong/34-du-an-bds-the-chap-ngan-hang-tai-ha-noi-chinh-thuc-lo-dien-ar79225"
						title="34 dự án BĐS thế chấp ngân hàng tại Hà Nội chính thức lộ diện">
						34 dự án BĐS thế chấp ngân hàng tại Hà Nội chính thức lộ diện <i>(01/08)</i>
					</a> <a class="font-link-box-item iconlist"
						href="http://batdongsan.com.vn/tin-thi-truong/tp-hcm-dat-nen-nha-lien-tho-tang-gia-suot-12-thang-ar79283"
						title="Tp.HCM: Đất nền, nhà liền thổ tăng giá suốt 12 tháng">
						Tp.HCM: Đất nền, nhà liền thổ tăng giá suốt 12 tháng <i>(04/08)</i>
					</a> <a class="font-link-box-item iconlist"
						href="http://batdongsan.com.vn/tin-thi-truong/phe-duyet-sieu-du-an-6-ty-usd-o-khu-nam-tp-hcm-ar79297"
						title="Phê duyệt siêu dự án 6 tỷ USD ở khu nam Tp.HCM"> Phê
						duyệt siêu dự án 6 tỷ USD ở khu nam Tp.HCM <i>(05/08)</i>
					</a>

					<div class="clear"></div>


					<h3 class="normalblue" style="white-space: nowrap;">Tin cũ hơn</h3>
					<div class="otherline">&nbsp;</div>

					<a class="font-link-box-item iconlist"
						href="http://batdongsan.com.vn/tin-thi-truong/ha-noi-sap-nha-43-cua-bac-ar79326"
						title="Hà Nội: sập nhà 43 Cửa Bắc"> Hà Nội: sập nhà 43 Cửa Bắc
						<i>(06/08)</i>
					</a> <a class="font-link-box-item iconlist"
						href="http://batdongsan.com.vn/tin-thi-truong/tp-hcm-50-chung-cu-xuong-cap-se-duoc-xu-ly-vao-nam-2020-ar79324"
						title="Tp.HCM: 50% chung cư xuống cấp sẽ được xử lý vào năm 2020">
						Tp.HCM: 50% chung cư xuống cấp sẽ được xử lý vào năm 2020 <i>(06/08)</i>
					</a> <a class="font-link-box-item iconlist"
						href="http://batdongsan.com.vn/tin-thi-truong/eco-green-city-tung-nhieu-uu-dai-hap-dan-trong-thang-ngau-ar79327"
						title="Eco – Green City tung nhiều ưu đãi hấp dẫn trong tháng Ngâu">
						Eco – Green City tung nhiều ưu đãi hấp dẫn trong tháng Ngâu <i>(06/08)</i>
					</a> <a class="font-link-box-item iconlist"
						href="http://batdongsan.com.vn/tin-thi-truong/tin-tuc-du-an-bat-dong-san-noi-bat-tuan-tu-01-8-06-8-ar79323"
						title="Tin tức, dự án bất động sản nổi bật tuần từ 01/8 - 06/8">
						Tin tức, dự án bất động sản nổi bật tuần từ 01/8 - 06/8 <i>(06/08)</i>
					</a> <a class="font-link-box-item iconlist"
						href="http://batdongsan.com.vn/tin-thi-truong/cong-khai-them-133-doanh-nghiep-no-thue-tai-ha-noi-ar79321"
						title="Công khai thêm 133 doanh nghiệp nợ thuế tại Hà Nội">
						Công khai thêm 133 doanh nghiệp nợ thuế tại Hà Nội <i>(06/08)</i>
					</a> <a class="font-link-box-item iconlist"
						href="http://batdongsan.com.vn/tin-thi-truong/chi-voi-450-trieu-dong-nhan-ngay-nha-pho-biet-thu-park-riverside-ar79319"
						title="Chỉ với 450 triệu đồng, nhận ngay nhà phố biệt thự Park Riverside">
						Chỉ với 450 triệu đồng, nhận ngay nhà phố biệt thự Park Riverside
						<i>(06/08)</i>
					</a>

				</div>

				<div style="text-align: right;">
					<a id="lnkNewOther" class="normalblue"
						href="http://batdongsan.com.vn/tin-thi-truong"
						style="cursor: pointer; text-decoration: none; font-weight: bold;">Xem
						thêm các tin khác</a>
				</div>
				<div style="clear: both;"></div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>