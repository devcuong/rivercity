<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tiles:insertDefinition name="raovatTemplate">
	<tiles:putAttribute name="body">
		<div class="div_2col">
			<div id="TopLeftMainContent" class="col_left">
				<div class="home-search-box">
					<div class="tops">
						<h1>Công cụ tìm kiếm</h1>
					</div>
					<div class="contents">
						<!--begin tab-->
						<div class="tab">
							<div onclick="ShowTab(1);" class="divSearchAct" id="divTabRESale">
								<a> Nhà đất<br>bán
								</a>
							</div>
							<div style="display: none;" id="tab-line_1" class="tab-lines">
							</div>
							<div onclick="ShowTab(2);" class="divSearchInAct"
								id="divTabREBorrow">
								<a> Nhà đất<br>cho thuê
								</a>
							</div>
							<div id="tab-line_2" class="tab-lines" style="display: block;">
							</div>
							<div onclick="ShowTab(3);" class="divSearchInAct"
								id="divTabRESaler">
								<a> Tìm môi<br>giới
								</a>
							</div>
						</div>
						<!--end tab-->
						<div id="divOfSeach">
							<div class="home-product-search">
								<div id="searchArea">
									<div class="comboboxs">
										<div class="newicon"
											style="width: 195px; padding-left: 5px; border: 1px solid #ccc;">
											<input type="text" id="txtAutoComplete"
												placeholder="Nhập địa điểm, vd: Sunrise City"
												style="position: relative; border: 0; width: 170px;">
										</div>
										<div class="suggestTT">
											<div class="arr">
												<img src="../file4.batdongsan.com.vn/images/greyarrow.png">
											</div>
											<div class="greencolor goiy">
												<strong>Gợi ý</strong>
											</div>
											<ul>
												<li>Nhập tên tỉnh/thành phố, quận/huyện, phường/xã,
													đường/phố, dự án; ví dụ: Sunrise City</li>
												<li>Phải chọn các gợi ý chúng tôi đề xuất bên dưới để
													kết quả chính xác</li>
												<li>Nếu không nhập địa điểm ở đây, Quý vị có thể chọn
													lựa khu vực bằng các ô phía dưới trong công cụ tìm kiếm này</li>
											</ul>
											<div class="closeTT">
												<img src="../file4.batdongsan.com.vn/images/Icons/close.png">
											</div>
										</div>
									</div>
									<div id="divCategoryRe" class="comboboxs advance-select-box">
										<span class="select-text"> <span
											class="select-text-content">--Chọn loại nhà đất--</span>
										</span> <input type="hidden" name="cboTypeRe" id="hdCboCatagoryRe">
										<div id="divCatagoryReOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li vl="0" class="advance-options">--Chọn loại nhà
													đất--</li>
											</ul>
										</div>
									</div>
									<div id="divCity" class="comboboxs advance-select-box">
										<span class="select-text"> <span
											class="select-text-content">--Chọn Tỉnh/Thành phố--</span>
										</span> <input type="hidden" name="cboCity" id="hdCboCity">
										<div id="divCityOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li vl="CN" class="advance-options">--Chọn Tỉnh/Thành
													phố--</li>

												<li vl="SG" class="advance-options">Hồ Chí Minh</li>

												<li vl="HN" class="advance-options">Hà Nội</li>

												<li vl="BD" class="advance-options">Bình Dương</li>

												<li vl="DDN" class="advance-options">Đà Nẵng</li>

												<li vl="HP" class="advance-options">Hải Phòng</li>

												<li vl="LA" class="advance-options">Long An</li>

												<li vl="VT" class="advance-options">Bà Rịa Vũng Tàu</li>

												<li vl="AG" class="advance-options">An Giang</li>

												<li vl="BG" class="advance-options">Bắc Giang</li>

												<li vl="BK" class="advance-options">Bắc Kạn</li>

												<li vl="BL" class="advance-options">Bạc Liêu</li>

												<li vl="BN" class="advance-options">Bắc Ninh</li>

												<li vl="BTR" class="advance-options">Bến Tre</li>

												<li vl="BDD" class="advance-options">Bình Định</li>

												<li vl="BP" class="advance-options">Bình Phước</li>

												<li vl="BTH" class="advance-options">Bình Thuận</li>

												<li vl="CM" class="advance-options">Cà Mau</li>

												<li vl="CT" class="advance-options">Cần Thơ</li>

												<li vl="CB" class="advance-options">Cao Bằng</li>

												<li vl="DDL" class="advance-options">Đắk Lắk</li>

												<li vl="DNO" class="advance-options">Đắk Nông</li>

												<li vl="DDB" class="advance-options">Điện Biên</li>

												<li vl="DNA" class="advance-options">Đồng Nai</li>

												<li vl="DDT" class="advance-options">Đồng Tháp</li>

												<li vl="GL" class="advance-options">Gia Lai</li>

												<li vl="HG" class="advance-options">Hà Giang</li>

												<li vl="HNA" class="advance-options">Hà Nam</li>

												<li vl="HT" class="advance-options">Hà Tĩnh</li>

												<li vl="HD" class="advance-options">Hải Dương</li>

												<li vl="HGI" class="advance-options">Hậu Giang</li>

												<li vl="HB" class="advance-options">Hòa Bình</li>

												<li vl="HY" class="advance-options">Hưng Yên</li>

												<li vl="KH" class="advance-options">Khánh Hòa</li>

												<li vl="KG" class="advance-options">Kiên Giang</li>

												<li vl="KT" class="advance-options">Kon Tum</li>

												<li vl="LCH" class="advance-options">Lai Châu</li>

												<li vl="LDD" class="advance-options">Lâm Đồng</li>

												<li vl="LS" class="advance-options">Lạng Sơn</li>

												<li vl="LCA" class="advance-options">Lào Cai</li>

												<li vl="NDD" class="advance-options">Nam Định</li>

												<li vl="NA" class="advance-options">Nghệ An</li>

												<li vl="NB" class="advance-options">Ninh Bình</li>

												<li vl="NT" class="advance-options">Ninh Thuận</li>

												<li vl="PT" class="advance-options">Phú Thọ</li>

												<li vl="PY" class="advance-options">Phú Yên</li>

												<li vl="QB" class="advance-options">Quảng Bình</li>

												<li vl="QNA" class="advance-options">Quảng Nam</li>

												<li vl="QNG" class="advance-options">Quảng Ngãi</li>

												<li vl="QNI" class="advance-options">Quảng Ninh</li>

												<li vl="QT" class="advance-options">Quảng Trị</li>

												<li vl="ST" class="advance-options">Sóc Trăng</li>

												<li vl="SL" class="advance-options">Sơn La</li>

												<li vl="TNI" class="advance-options">Tây Ninh</li>

												<li vl="TB" class="advance-options">Thái Bình</li>

												<li vl="TN" class="advance-options">Thái Nguyên</li>

												<li vl="TH" class="advance-options">Thanh Hóa</li>

												<li vl="TTH" class="advance-options">Thừa Thiên Huế</li>

												<li vl="TG" class="advance-options">Tiền Giang</li>

												<li vl="TV" class="advance-options">Trà Vinh</li>

												<li vl="TQ" class="advance-options">Tuyên Quang</li>

												<li vl="VL" class="advance-options">Vĩnh Long</li>

												<li vl="VP" class="advance-options">Vĩnh Phúc</li>

												<li vl="YB" class="advance-options">Yên Bái</li>

											</ul>
										</div>
									</div>
									<div id="divDistrict" class="comboboxs advance-select-box">
										<span class="select-text"> <span
											class="select-text-content">--Chọn Quận/Huyện--</span>
										</span> <input type="hidden" name="cboDistrict" id="hdCboDistrict">
										<div id="divDistrictOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li vl="0" class="advance-options">--Chọn Quận/Huyện--</li>
											</ul>
										</div>
									</div>
									<div id="divArea" class="comboboxs advance-select-box">
										<span class="select-text"> <span
											class="select-text-content">--Chọn diện tích--</span>
										</span> <input type="hidden" id="hdCboArea" name="cboArea">
										<div id="divAreaOptions"
											class="advance-select-options advance-area-options advance-options">
											<table class="header-options options">
												<tbody>
													<tr class="advance-options">
														<td class="advance-options"><input type="text"
															id="txtAreaMinValue" name="areamin" placeholder="từ"
															class="min-value advance-options" maxlength="6"
															numbersonly="true" decimal="false"></td>
														<td class="advance-options"><span
															class="advance-options">- </span></td>
														<td class="advance-options"><input type="text"
															id="txtAreaMaxValue" name="areamax" placeholder="đến"
															class="max-value advance-options" maxlength="6"
															numbersonly="true" decimal="false"></td>
														<td class="advance-options"><span
															class="advance-options">m2</span></td>
													</tr>
												</tbody>
											</table>
											<ul class="advance-options">
												<li vl="-1" class="advance-options">--Chọn diện tích--</li>

												<li vl="0" class="advance-options">Chưa xác định</li>

												<li vl="1" class="advance-options">&lt;= 30 m2</li>

												<li vl="2" class="advance-options">30 - 50 m2</li>

												<li vl="3" class="advance-options">50 - 80 m2</li>

												<li vl="4" class="advance-options">80 - 100 m2</li>

												<li vl="5" class="advance-options">100 - 150 m2</li>

												<li vl="6" class="advance-options">150 - 200 m2</li>

												<li vl="7" class="advance-options">200 - 250 m2</li>

												<li vl="8" class="advance-options">250 - 300 m2</li>

												<li vl="9" class="advance-options">300 - 500 m2</li>

												<li vl="10" class="advance-options">&gt;= 500 m2</li>

											</ul>
										</div>
									</div>

									<div id="divPrice" class="comboboxs advance-select-box">
										<span class="select-text"> <span
											class="select-text-content">--Chọn mức giá--</span>
										</span> <input type="hidden" id="hdCboPrice" name="cboPrice">
										<div id="divPriceOptions"
											class="advance-select-options advance-price-options advance-options">
											<table class="header-options options">
												<tbody>
													<tr class="advance-options">
														<td class="advance-options"><input type="text"
															id="txtPriceMinValue" name="pricemin" placeholder="từ"
															class="min-value advance-options" maxlength="6"
															numbersonly="true" decimal="true">
															<div id="lblPriceMin"></div></td>
														<td class="advance-options"><span
															class="advance-options">- </span></td>
														<td class="advance-options"><input type="text"
															id="txtPriceMaxValue" name="pricemax" placeholder="đến"
															class="max-value advance-options" maxlength="6"
															numbersonly="true" decimal="true">
															<div id="lblPriceMax"></div></td>
													</tr>
												</tbody>
											</table>
											<ul class="advance-options">
												<li vl="-1" class="advance-options">--Chọn mức giá--</li>

												<li vl="0" class="advance-options">Thỏa thuận</li>

												<li vl="1" class="advance-options">&lt; 500 triệu</li>

												<li vl="2" class="advance-options">500 - 800 triệu</li>

												<li vl="3" class="advance-options">800 triệu - 1 tỷ</li>

												<li vl="4" class="advance-options">1 - 2 tỷ</li>

												<li vl="5" class="advance-options">2 - 3 tỷ</li>

												<li vl="6" class="advance-options">3 - 5 tỷ</li>

												<li vl="7" class="advance-options">5 - 7 tỷ</li>

												<li vl="8" class="advance-options">7 - 10 tỷ</li>

												<li vl="9" class="advance-options">10 - 20 tỷ</li>

												<li vl="10" class="advance-options">20 - 30 tỷ</li>

												<li vl="11" class="advance-options">&gt; 30 tỷ</li>

											</ul>
										</div>
									</div>

									<div id="divWard"
										class="comboboxs advance-select-box adv-search">
										<span class="select-text"> <span
											class="select-text-content">--Chọn Phường/Xã--</span>
										</span> <input type="hidden" id="hdCboWard" name="cboWard">
										<div id="divWardOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li vl="0" class="advance-options">--Chọn Phường/Xã--</li>
											</ul>
										</div>
									</div>
									<div id="divStreet"
										class="comboboxs advance-select-box adv-search">
										<span class="select-text"> <span
											class="select-text-content">--Chọn Đường/Phố--</span>
										</span> <input type="hidden" id="hdCboStreet" name="cboStreet">
										<div id="divStreetOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li vl="0" class="advance-options">--Chọn Đường/Phố--</li>
											</ul>
										</div>
									</div>
									<div id="divBedRoom"
										class="comboboxs advance-select-box adv-search">
										<span class="select-text"> <span
											class="select-text-content">--Chọn số phòng ngủ--</span>
										</span> <input type="hidden" id="hdCboBedRoom" name="cboBedRoom">
										<div id="divBedRoomOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li vl="-1" class="advance-options">--Chọn số phòng
													ngủ--</li>

												<li vl="0" class="advance-options">Không xác định</li>

												<li vl="1" class="advance-options">1+</li>

												<li vl="2" class="advance-options">2+</li>

												<li vl="3" class="advance-options">3+</li>

												<li vl="4" class="advance-options">4+</li>

												<li vl="5" class="advance-options">5+</li>

											</ul>
										</div>
									</div>
									<div id="divHomeDirection"
										class="comboboxs advance-select-box adv-search">
										<span class="select-text"> <span
											class="select-text-content">--Chọn hướng nhà--</span>
										</span> <input type="hidden" id="hdCboHomeDirection"
											name="cboHomeDirection">
										<div id="divHomeDirectionOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li vl="-1">--Chọn hướng nhà--</li>

												<li vl="0" class="advance-options">KXĐ</li>

												<li vl="1" class="advance-options">Đông</li>

												<li vl="2" class="advance-options">Tây</li>

												<li vl="3" class="advance-options">Nam</li>

												<li vl="4" class="advance-options">Bắc</li>

												<li vl="5" class="advance-options">Đông-Bắc</li>

												<li vl="6" class="advance-options">Tây-Bắc</li>

												<li vl="7" class="advance-options">Tây-Nam</li>

												<li vl="8" class="advance-options">Đông-Nam</li>

											</ul>
										</div>
									</div>
									<div id="divProject"
										class="comboboxs advance-select-box adv-search">
										<span class="select-text"> <span
											class="select-text-content">--Chọn dự án--</span>
										</span> <input type="hidden" id="hdCboProject" name="cboListProj">
										<div id="divProjectOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li vl="0" class="advance-options">--Chọn dự án--</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="timkiems">
									<a id="lblSearch">Tìm nâng cao</a> <input type="image"
										name="action" id="btnSearch"
										src="<c:url value="/resources/raovat/images/timkiem.jpg" />">
									<div style="display: none;">
										<div id="divCategory">
											<span class="select-text"> <span
												class="select-text-content"></span>
											</span> <input type="hidden" name="cboCategory" id="hdCboCatagory">
											<div id="divCatagoryOptions" class="advance-select-options">
												<ul>
													<li vl="0">--Chọn loại nhà đât--</li>
													<li vl="38">Nhà đất bán</li>
													<li vl="49">Nhà đất cho thuê</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="message" style="display: none">
									Có <strong>10.000</strong> tin mới trong ngày
								</div>
							</div>
							<script src="Scripts/counter.js"></script>
						</div>
						<div style="display: none" id="divReSaler">

							<div class="home-product-search">
								<div id="searchArea">
									<div id="divBrokerCategory"
										class="comboboxs advance-select-box">
										<span class="select-text"> <span
											class="select-text-content">--Chọn loại giao dịch--</span>
										</span> <input type="hidden" name="cmbCategory" id="hdBrokerCategory">
										<div id="divBrokerCategoryOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li vl="0" class="advance-options">--Chọn loại giao
													dịch--</li>

												<li vl="38" class="advance-options">Nhà đất bán</li>

												<li vl="49" class="advance-options">Nhà đất cho thuê</li>

											</ul>
										</div>
									</div>
									<div id="divBrokerTypeBDS" class="comboboxs advance-select-box">
										<span class="select-text"> <span
											class="select-text-content">--Chọn loại nhà đất--</span>
										</span> <input type="hidden" name="cmbTypeBDS" id="hdBrokerTypeBDS">
										<div id="divBrokerTypeBDSOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li class="advance-options" vl="0">--Chọn loại nhà
													đất--</li>
											</ul>
										</div>
									</div>
									<div id="divBrokerCity" class="comboboxs advance-select-box">
										<span class="select-text"> <span
											class="select-text-content">--Chọn Tỉnh/Thành phố--</span>
										</span> <input type="hidden" name="cmbCity" id="hdBrokerCity">
										<div id="divBrokerCityOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li vl="CN" class="advance-options">--Chọn Tỉnh/Thành
													phố--</li>

												<li vl="SG" class="advance-options">Hồ Chí Minh</li>

												<li vl="HN" class="advance-options">Hà Nội</li>

												<li vl="BD" class="advance-options">Bình Dương</li>

												<li vl="DDN" class="advance-options">Đà Nẵng</li>

												<li vl="HP" class="advance-options">Hải Phòng</li>

												<li vl="LA" class="advance-options">Long An</li>

							r					<li vl="VT" class="advance-options">Bà Rịa Vũng Tàu</li>

												<li vl="AG" class="advance-options">An Giang</li>

												<li vl="BG" class="advance-options">Bắc Giang</li>

												<li vl="BK" class="advance-options">Bắc Kạn</li>

												<li vl="BL" class="advance-options">Bạc Liêu</li>

												<li vl="BN" class="advance-options">Bắc Ninh</li>

												<li vl="BTR" class="advance-options">Bến Tre</li>

												<li vl="BDD" class="advance-options">Bình Định</li>

												<li vl="BP" class="advance-options">Bình Phước</li>

												<li vl="BTH" class="advance-options">Bình Thuận</li>

												<li vl="CM" class="advance-options">Cà Mau</li>

												<li vl="CT" class="advance-options">Cần Thơ</li>

												<li vl="CB" class="advance-options">Cao Bằng</li>

												<li vl="DDL" class="advance-options">Đắk Lắk</li>

												<li vl="DNO" class="advance-options">Đắk Nông</li>

												<li vl="DDB" class="advance-options">Điện Biên</li>

												<li vl="DNA" class="advance-options">Đồng Nai</li>

												<li vl="DDT" class="advance-options">Đồng Tháp</li>

												<li vl="GL" class="advance-options">Gia Lai</li>

												<li vl="HG" class="advance-options">Hà Giang</li>

												<li vl="HNA" class="advance-options">Hà Nam</li>

												<li vl="HT" class="advance-options">Hà Tĩnh</li>

												<li vl="HD" class="advance-options">Hải Dương</li>

												<li vl="HGI" class="advance-options">Hậu Giang</li>

												<li vl="HB" class="advance-options">Hòa Bình</li>

												<li vl="HY" class="advance-options">Hưng Yên</li>

												<li vl="KH" class="advance-options">Khánh Hòa</li>

												<li vl="KG" class="advance-options">Kiên Giang</li>

												<li vl="KT" class="advance-options">Kon Tum</li>

												<li vl="LCH" class="advance-options">Lai Châu</li>

												<li vl="LDD" class="advance-options">Lâm Đồng</li>

												<li vl="LS" class="advance-options">Lạng Sơn</li>

												<li vl="LCA" class="advance-options">Lào Cai</li>

												<li vl="NDD" class="advance-options">Nam Định</li>

												<li vl="NA" class="advance-options">Nghệ An</li>

												<li vl="NB" class="advance-options">Ninh Bình</li>

												<li vl="NT" class="advance-options">Ninh Thuận</li>

												<li vl="PT" class="advance-options">Phú Thọ</li>

												<li vl="PY" class="advance-options">Phú Yên</li>

												<li vl="QB" class="advance-options">Quảng Bình</li>

												<li vl="QNA" class="advance-options">Quảng Nam</li>

												<li vl="QNG" class="advance-options">Quảng Ngãi</li>

												<li vl="QNI" class="advance-options">Quảng Ninh</li>

												<li vl="QT" class="advance-options">Quảng Trị</li>

												<li vl="ST" class="advance-options">Sóc Trăng</li>

												<li vl="SL" class="advance-options">Sơn La</li>

												<li vl="TNI" class="advance-options">Tây Ninh</li>

												<li vl="TB" class="advance-options">Thái Bình</li>

												<li vl="TN" class="advance-options">Thái Nguyên</li>

												<li vl="TH" class="advance-options">Thanh Hóa</li>

												<li vl="TTH" class="advance-options">Thừa Thiên Huế</li>

												<li vl="TG" class="advance-options">Tiền Giang</li>

												<li vl="TV" class="advance-options">Trà Vinh</li>

												<li vl="TQ" class="advance-options">Tuyên Quang</li>

												<li vl="VL" class="advance-options">Vĩnh Long</li>

												<li vl="VP" class="advance-options">Vĩnh Phúc</li>

												<li vl="YB" class="advance-options">Yên Bái</li>

											</ul>
										</div>
									</div>
									<div id="divBrokerDistrict"
										class="comboboxs advance-select-box">
										<span class="select-text"> <span
											class="select-text-content">--Chọn Quận/Huyện--</span>
										</span> <input type="hidden" name="cmbDistrict" id="hdBrokerDistrict">
										<div id="divBrokerDistrictOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li vl="0" class="advance-options">--Chọn Quận/Huyện--</li>
											</ul>
										</div>
									</div>
									<div id="divBrokerProject" class="comboboxs advance-select-box">
										<span class="select-text"> <span
											class="select-text-content">--Chọn dự án--</span>
										</span> <input type="hidden" name="cmbProject" id="hdBrokerProject">
										<div id="divBrokerProjectOptions"
											class="advance-select-options advance-options">
											<ul class="advance-options">
												<li vl="0" class="advance-options">--Chọn dự án--</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="timkiems">
									<input type="image" name="action" id="btnSearch"
										src="../file4.batdongsan.com.vn/images/timkiem.jpg">
								</div>
							</div>

						</div>
					</div>
				</div>
				<div style="clear: both;"></div>
			</div>
			<div id="TopRightMainContent" class="col_cent">

				<div class="news-list-border-background">
					<ul class="news-list-thumb">
						<c:forEach var="sNewsBean" items="${newsBean}" varStatus="loop">
							<c:if test="${loop.index == 0}">
								<li style="display: block;" id="li_0"><a
									href="chinh-sach-quan-ly/bo-xay-dung-yeu-cau-xu-ly-sai-pham-tai-du-an-golden-west-le-van-thiem-ar78479.html"
									title="${sNewsBean.newsShortTitle}">
										<img class="imagethumbnail"
										alt="${sNewsBean.newsShortTitle}"
										src="${sNewsBean.newsImage}"
										style="float: left;">
								</a>
									<div class="thumb-title">
										<a
											href="chinh-sach-quan-ly/bo-xay-dung-yeu-cau-xu-ly-sai-pham-tai-du-an-golden-west-le-van-thiem-ar78479.html"
											title="${sNewsBean.newsShortTitle}">${sNewsBean.newsShortTitle}</a>
									</div>
									<div class="thumb-summary">${sNewsBean.newsDescription}</div></li>
							</c:if>
						</c:forEach>
					</ul>

					<div style="clear: both;"></div>
					<div class="news-slide-show-item">
						<div class="news-list">
							<ul>
								<c:forEach var="sNewsBean" items="${newsBean}" varStatus="loop">
									<c:if test="${loop.index > 0}">
										<li class="li_0"><a
											href="tin-thi-truong/khu-do-thi-thanh-pho-giao-luu-du-an-lon-nhat-khu-vuc-phia-tay-ha-noi-ar78476.html"
											title="${sNewsBean.newsShortTitle}">${sNewsBean.newsShortTitle}</a></li>
									</c:if>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div style="clear: both;"></div>
			</div>
			<div id="MiddleBanner">
				<div class="adPosition"
					positioncode="BANNER_POSITION_HORIZONTAL_MAIN_CONTENT" style=""
					hasshare="True" hasnotshare="True"></div>

				<div style="clear: both;"></div>
			</div>
			<div class="t_left">
				<div id="MiddleLeftMainContent">

					<div>
						<div id="ctl39_HeaderContainer" class="tit_l">
							<h2>
								<a><span style="white-space: nowrap;">Tin rao dành
										cho bạn</span></a>
							</h2>
						</div>
						<div style="clear: both;"></div>
						<div class="line_gr"></div>
						<div id="ctl39_BodyContainer">

							<div class="product-list tin-danh-cho-ban">
								<c:forEach var="sSellBean" items="${sellBean}">
									<div class="vip5" rel="9672385">
										<div class="p-main">
											<div class="p-main-image-crop">
												<a class="product-avatar"
													href="ban-can-ho-chung-cu-duong-cau-buou-phuong-kien-hung-prj-sails-tower/vao-o-ngay-goc-3-phong-ngu-107-m2-gia-chi-1-55-ty-ha-dong-pr9672385.html"
													onclick=""> <img class="product-avatar-img"
													src="${sSellBean.postImage}" alt="${sSellBean.postTitle}">

												</a>
											</div>
											<div class="p-content">
												<div class="p-title">
													<h3>
														<a
															href="ban-can-ho-chung-cu-duong-cau-buou-phuong-kien-hung-prj-sails-tower/vao-o-ngay-goc-3-phong-ngu-107-m2-gia-chi-1-55-ty-ha-dong-pr9672385.html"
															title="Vào ở ngay căn góc 3 phòng ngủ, 107 m2 giá chỉ 1,55 tỷ, Sails Tower Hà Đông">
															${sSellBean.postTitle}</a>
													</h3>
												</div>

											</div>
											<div class="p-bottom-crop">
												<div class="p-bottom-left">
													<div>
														<div class="left">Giá</div>
														:&nbsp;${sSellBean.postPrice} tỷ
													</div>
													<div>
														<div class="left">Diện tích</div>
														:&nbsp;${sSellBean.postArea} m²
													</div>
													<div>
														<div class="fleft">
															<div class="left">Quận/huyện</div>
															:&nbsp;<a class="link_blue"
																href="ban-can-ho-chung-cu-ha-dong.html"
																title="Bán căn hộ chung cư tại Hà Đông">${sSellBean.districtName}</a>,
															<a class="link_blue"
																href="ban-can-ho-chung-cu-ha-noi.html"
																title="Bán căn hộ chung cư tại Hà Nội">${sSellBean.provinceName}</a>
														</div>
														<div class="p-bottom-right font09">${sSellBean.postDate}</div>
														<div class="clear"></div>
													</div>
												</div>

											</div>
											<div class="clear"></div>
										</div>
									</div>
								</c:forEach>
								<div class="otherlink">
									<a
										href="ban-dat-nen-du-an-xa-phuoc-hoa-prj-khu-do-thi-phuoc-hoa-goldenland.html"
										class="link_sr" style="text-decoration: none"> &gt; Xem
										thêm các tin rao nhà đất tương tự</a>
								</div>

							</div>
							<div style="margin: 5px 0;">
								<div style="float: left">
									Tin Nhà đất bán mới nhất: <span
										id="ctl39_ctl00_lbLinkNewProductForSell"><a
										href="nha-dat-ban.html" class="link_blue">1</a>, <a
										href="nha-dat-ban/p2.html" class="link_blue">2</a>, <a
										href="nha-dat-ban/p3.html" class="link_blue">3</a>, <a
										href="nha-dat-ban/p4.html" class="link_blue">4</a>, <a
										href="nha-dat-ban/p5.html" class="link_blue">5</a></span>...
								</div>
								<div style="float: right">
									Tin Nhà đất cho thuê mới nhất: <span
										id="ctl39_ctl00_lbLinkNewProductForRent"><a
										href="nha-dat-cho-thue.html" class="link_blue">1</a>, <a
										href="nha-dat-cho-thue/p2.html" class="link_blue">2</a>, <a
										href="nha-dat-cho-thue/p3.html" class="link_blue">3</a>, <a
										href="nha-dat-cho-thue/p4.html" class="link_blue">4</a>, <a
										href="nha-dat-cho-thue/p5.html" class="link_blue">5</a></span>...
								</div>
								<div class="clear"></div>
							</div>
						</div>

					</div>
					<div style="clear: both; margin-bottom: 5px;"></div>
					<div class="adPosition"
						positioncode="BANNER_POSITION_HORIZONTAL_BELOW_MAIN_CONTENT"
						style="" hasshare="True" hasnotshare="True"></div>

					<div style="clear: both;"></div>

					<div class="container-default">
						<div id="ctl43_BodyContainer">
							fadsfa
						</div>

					</div>
					<div class="container-common">
						<div id="ctl51_HeaderContainer" class="box-header">
							<div class="name_tit" align="center">
								<h3 style="color: White;">Tìm kiếm tiêu biểu theo từ khóa</h3>
							</div>
						</div>
						<div id="ctl51_BodyContainer" class="bor_box">

							<div class="html-content">
								<div style="width: 558px">
									<div class="tag-list ">
										<div class="fleft tag-list-pad width255" style="width: 277px">
											<ul>
												<li><a
													href="ban-can-ho-chung-cu-masteri-thao-dien.html"
													title="Căn hộ Masteri Thảo Điền">Căn hộ Masteri Thảo
														Điền</a></li>
												<li><a href="ban-nha-rieng-tp-hcm.html"
													title="Bán nhà TP HCM">Bán nhà TP HCM</a></li>
												<li><a href="ban-nha-rieng-hai-phong.html"
													title="Bán nhà Hải Phòng">Bán nhà Hải Phòng</a></li>
												<li><a href="ban-dat-nen-du-an-binh-duong.html"
													title="Đất nền Bình Dương">Đất nền Bình Dương</a></li>
												<li><a
													href="ban-can-ho-chung-cu-vinhomes-metropolis-lieu-giai.html"
													title="Chung cư Vinhomes Metropolis">Chung cư Vinhomes
														Metropolis</a></li>
											</ul>
										</div>
										<div class="fleft width255" style="width: 230px">
											<ul>
												<li><a href="ban-can-ho-chung-cu-goldseason.html"
													title="Chung cư GoldSeason">Chung cư GoldSeason</a></li>
												<li><a
													href="ban-can-ho-chung-cu-ha-do-756-sai-gon.html"
													title="Căn hộ Hà Đô Centrosa">Căn hộ Hà Đô Centrosa</a></li>
												<li><a href="nha-dat-ban-quan-12.html"
													title="Nhà đất Quận 12">Nhà đất Quận 12</a></li>
												<li><a href="nha-dat-ban-quan-7.html"
													title="Bán nhà Quận 7">Bán nhà Quận 7</a></li>
												<li><a href="ban-can-ho-chung-cu-royal-city.html"
													title="Chung cư Royal City">Chung cư Royal City</a></li>
											</ul>
										</div>
										<div class="clear">&nbsp;</div>
									</div>
								</div>

							</div>
						</div>
						<div id="ctl51_FooterContainer"></div>
					</div>
					<div style="clear: both; margin-bottom: 10px;"></div>
					<div class="adPosition"
						positioncode="BANNER_POSITION_HORIZONTAL_BELOW_MAIN_CONTENT_2"
						style="" hasshare="True" hasnotshare="True"></div>

					<div style="clear: both;"></div>
				</div>
				<div id="SubMiddleLeftMainContent"
					style="float: left; width: 49.5%;">
					<div class="adPosition"
						positioncode="BANNER_POSITION_MIDDLE_LEFT_CONTENT1" style=""
						hasshare="True" hasnotshare="True"></div>

					<div style="clear: both;"></div>
					<div class="html-content">
						<p>
							<a href="click1541.html?bannerid=3177" rel="nofollow"
								target="_blank" title=""><img bannerid="3177"
								class="view-count click-count"
								src="../file4.batdongsan.com.vn/2015/08/24/LHBmMBTJ/20150824102117-21ad.jpg"
								style="width: 560px; height: 90px;"></a>
						</p>

					</div>


					<div style="clear: both;"></div>
				</div>
				<div id="SubMiddleRightMainContent"
					style="float: right; width: 49.5%;">
					<div class="adPosition"
						positioncode="BANNER_POSITION_MIDDLE_LEFT_CONTENT2" style=""
						hasshare="True" hasnotshare="True"></div>

					<div style="clear: both;"></div>
				</div>
			</div>
			<div id="MiddleRightMainContent" class="t_right">
				<div class="container-common">
					<div id="ctl37_HeaderContainer" class="box-header">
						<div class="name_tit" align="center">
							<h3 style="color: White;">Nhà đất bán vip</h3>
						</div>
					</div>
					<div id="ctl37_BodyContainer" class="bor_box">

						<div class="list">
							<ul>
								<c:forEach var="sVipBean" items="${vipSellBean}">
									<li><a class="controls-view-date-contents-link"
										title="${sVipBean.postTitle}" href="tin-thi-truong.html">${sVipBean.postTitle}</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div id="ctl37_FooterContainer"></div>
				</div>
				<div style="clear: both; margin-bottom: 10px;"></div>

				<div class="container-common">
					<div id="ctl42_HeaderContainer" class="box-header">
						<div class="name_tit" align="center">
							<h3 style="color: White;">Nhà đất cho thuê vip</h3>
						</div>
					</div>
					<div id="ctl42_BodyContainer" class="bor_box">

						<div class="list">
							<ul>
								<c:forEach var="sVipBean" items="${vipRentBean}">
									<li><a class="controls-view-date-contents-link"
										title="${sVipBean.postTitle}" href="tin-thi-truong.html">${sVipBean.postTitle}</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div id="ctl42_FooterContainer"></div>
				</div>
				<div style="clear: both; margin-bottom: 10px;"></div>
				<div class="container-faq">
					<div id="ctl54_HeaderContainer" class="box-header box-header-bg"
						style="margin-top: 1px;">
						<div class="name_tit" align="center" style="padding-top: 0px;">
							<h4>Web nhà đất nổi bật</h4>
						</div>
					</div>
					<div id="ctl54_BodyContainer" class="bor_box box-content-bg"
						style="line-height: 18px;">

						<div class="list">
							<ul>

								<li><a
									href="hd-nha-pho-nha-lien-ke/tu-van-xay-nha-1-tret-1-lung-1-lau-dien-tich-5-x20m-fq55265.html"
									title="Tư vấn xây nhà 1 trệt, 1 lửng, 1 lầu , diện tích 5 x20m"><span
										class="faq-name"> Tư vấn xây nhà 1 trệt, 1 lửng, 1 lầu
											, diện tích 5 x20m</span> </a></li>

								<li><a
									href="hd-thiet-ke-khac/tu-van-xay-phong-tro-va-xay-cua-hang-kinh-doanh-tren-dat-204m2-fq55202.html"
									title="Tư vấn xây phòng trọ và xây cửa hàng kinh doanh trên đất 204m2"><span
										class="faq-name"> Tư vấn xây phòng trọ và xây cửa hàng
											kinh doanh trên đất 204m2</span> </a></li>

								<li><a
									href="hd-thiet-ke-khac/tu-van-xay-nha-cap-4-dien-tich-5-18m-fq55210.html"
									title="Tư vấn xây nhà cấp 4 diện tích 5*18m"><span
										class="faq-name"> Tư vấn xây nhà cấp 4 diện tích 5*18m</span>
								</a></li>

								<li><a
									href="hd-giai-phap-xay-dung/tu-van-chi-phi-xay-nha-3-5-tang-dien-tich-5x13-5-m-fq55311.html"
									title="Tư vấn chi phí xây nhà 3.5 tầng, diện tích 5x13,5 m"><span
										class="faq-name"> Tư vấn chi phí xây nhà 3.5 tầng, diện
											tích 5x13,5 m</span> </a></li>

								<li><a
									href="hd-thiet-ke-khac/tu-van-xay-nha-tro-1-tret-2-lau-dien-tich-11x30m-fq55247.html"
									title="Tư vấn xây nhà trọ 1 trệt, 2 lầu, diện tích 11x30m"><span
										class="faq-name"> Tư vấn xây nhà trọ 1 trệt, 2 lầu,
											diện tích 11x30m</span> </a></li>

							</ul>
						</div>
						<div class="faq_box">
							<label> Gửi câu hỏi của bạn tại đây</label>
							<textarea name="txtContent" rows="2" cols="20" id="txtContent"></textarea>
							<div>
								<input type="button" name="btnSend" value="Gửi câu hỏi"
									id="btnSend" class="buttonSend" onclick="SendFAQ();">
							</div>
						</div>
					</div>
					<div id="ctl54_FooterContainer" class="Footer"></div>
				</div>
				<div style="clear: both; margin-bottom: 10px;"></div>
			</div>
			<div class="clear"></div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>