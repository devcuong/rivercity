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

						<li style="display: block;" id="li_0"><a
							href="chinh-sach-quan-ly/bo-xay-dung-yeu-cau-xu-ly-sai-pham-tai-du-an-golden-west-le-van-thiem-ar78479.html"
							title="Bộ Xây dựng yêu cầu xử lý sai phạm tại dự án Golden West Lê Văn Thiêm">
								<img class="imagethumbnail"
								alt="Bộ Xây dựng yêu cầu xử lý sai phạm tại dự án Golden West Lê Văn Thiêm"
								src="../file4.batdongsan.com.vn/crop/210x160/2016/06/30/b9sp0zUm/20160630104325-68fb.jpg"
								style="float: left;">
						</a>
							<div class="thumb-title">
								<a
									href="chinh-sach-quan-ly/bo-xay-dung-yeu-cau-xu-ly-sai-pham-tai-du-an-golden-west-le-van-thiem-ar78479.html"
									title="Bộ Xây dựng yêu cầu xử lý sai phạm tại dự án Golden West Lê Văn Thiêm">Bộ
									Xây dựng yêu cầu xử lý sai phạm tại dự án Golden West Lê Văn
									Thiêm</a>
							</div>
							<div class="thumb-summary">Thanh tra Bộ Xây dựng vừa có văn
								bản gửi UBND TP.Hà Nội liên quan đến những sai phạm tại dự án
								Golden West Lê Văn Thiêm do Công ty CP Phát triển thương mại
								Việt Nam (Vietradico) làm chủ đầu tư.</div></li>

						<li style="display: none;" id="li_1"><a
							href="tin-thi-truong/nhung-thuong-vu-thau-tom-khach-san-khung-cua-cac-dai-gia-dia-oc-ar78478.html"
							title="Những thương vụ thâu tóm khách sạn &quot;khủng&quot; của các đại gia địa ốc">
								<img class="imagethumbnail"
								alt="Những thương vụ thâu tóm khách sạn &quot;khủng&quot; của các đại gia địa ốc"
								src="../file4.batdongsan.com.vn/crop/210x160/2016/06/30/b9sp0zUm/20160630094959-c25f.jpg"
								style="float: left;">
						</a>
							<div class="thumb-title">
								<a
									href="tin-thi-truong/nhung-thuong-vu-thau-tom-khach-san-khung-cua-cac-dai-gia-dia-oc-ar78478.html"
									title="Những thương vụ thâu tóm khách sạn &quot;khủng&quot; của các đại gia địa ốc">Những
									thương vụ thâu tóm khách sạn "khủng" của các đại gia địa ốc</a>
							</div>
							<div class="thumb-summary">Trong 6 tháng đầu năm, thị
								trường bất động sản (BĐS) đã chứng kiến hàng loạt thương vụ mua
								bán và sáp nhập (M&amp;A) trong lĩnh vực khách sạn, đáng chú ý
								có những thương vụ lên tới cả trăm triệu USD.</div></li>

						<li style="display: none;" id="li_2"><a
							href="tin-thi-truong/so-huu-can-ho-trung-tam-quan-7-chi-voi-so-tien-tich-luy-399-trieu-dong-ar78477.html"
							title="Sở hữu căn hộ trung tâm quận 7 chỉ với số tiền tích luỹ 399 triệu đồng">
								<img class="imagethumbnail"
								alt="Sở hữu căn hộ trung tâm quận 7 chỉ với số tiền tích luỹ 399 triệu đồng"
								src="../file4.batdongsan.com.vn/crop/210x160/2016/06/30/b9sp0zUm/20160630085939-e2a4.jpg"
								style="float: left;">
						</a>
							<div class="thumb-title">
								<a
									href="tin-thi-truong/so-huu-can-ho-trung-tam-quan-7-chi-voi-so-tien-tich-luy-399-trieu-dong-ar78477.html"
									title="Sở hữu căn hộ trung tâm quận 7 chỉ với số tiền tích luỹ 399 triệu đồng">Sở
									hữu căn hộ trung tâm quận 7 chỉ với số tiền tích luỹ 399 triệu
									đồng</a>
							</div>
							<div class="thumb-summary">Từ trước đến nay, quận 7 được
								coi là khu vưc an cư lý tưởng với đầy đủ tiện ích đẳng cấp từ
								vui chơi, mua sắm, giải trí, đến bệnh viên, trường học... Giờ
								đây, chỉ cần với số tiền tích lũy 399 triệu đồng, khách hàng đã
								có thể sở hữu ngay căn hộ ở trung tâm...</div></li>

						<li style="display: none;" id="li_3"><a
							href="tin-thi-truong/ban-can-tim-kenh-dau-tu-hieu-qua-va-an-toan-ar78475.html"
							title="Bạn cần tìm kênh đầu tư hiệu quả và an toàn?"> <img
								class="imagethumbnail"
								alt="Bạn cần tìm kênh đầu tư hiệu quả và an toàn?"
								src="../file4.batdongsan.com.vn/crop/210x160/2016/06/30/b9sp0zUm/20160630084007-597d.jpg"
								style="float: left;">
						</a>
							<div class="thumb-title">
								<a
									href="tin-thi-truong/ban-can-tim-kenh-dau-tu-hieu-qua-va-an-toan-ar78475.html"
									title="Bạn cần tìm kênh đầu tư hiệu quả và an toàn?">Bạn
									cần tìm kênh đầu tư hiệu quả và an toàn?</a>
							</div>
							<div class="thumb-summary">Theo nhận định của các chuyên
								gia đầu ngành về kinh tế và bất động sản, kênh đầu tư sinh lời
								cao, an toàn, hấp dẫn nhất trên thị trường hiện nay chính là bất
								động sản nghỉ dưỡng.</div></li>

						<li style="display: none;" id="li_4"><a
							href="tin-thi-truong/khu-do-thi-thanh-pho-giao-luu-du-an-lon-nhat-khu-vuc-phia-tay-ha-noi-ar78476.html"
							title="Khu đô thị Thành phố giao lưu – dự án lớn nhất khu vực phía Tây Hà Nội">
								<img class="imagethumbnail"
								alt="Khu đô thị Thành phố giao lưu – dự án lớn nhất khu vực phía Tây Hà Nội"
								src="../file4.batdongsan.com.vn/crop/210x160/2016/06/30/b9sp0zUm/20160630084557-5933.jpg"
								style="float: left;">
						</a>
							<div class="thumb-title">
								<a
									href="tin-thi-truong/khu-do-thi-thanh-pho-giao-luu-du-an-lon-nhat-khu-vuc-phia-tay-ha-noi-ar78476.html"
									title="Khu đô thị Thành phố giao lưu – dự án lớn nhất khu vực phía Tây Hà Nội">Khu
									đô thị Thành phố giao lưu – dự án lớn nhất khu vực phía Tây Hà
									Nội</a>
							</div>
							<div class="thumb-summary">Khu đô thị Thành phố giao lưu
								trên đường Phạm Văn Đồng, quận Bắc Từ Liêm là một trong những dự
								án bất động sản lớn nhất đang được triển khai ở khu vực phía Tây
								Hà Nội. Dự án có tổng diện tích 90ha, với điểm nhấn đặc biệt là
								hồ nước rộng 15ha ở trung tâm khu...</div></li>

						<li style="display: none;" id="li_5"><a
							href="tin-thi-truong/bat-dong-san-se-bien-dong-ra-sao-khi-anh-roi-khoi-eu-ar78474.html"
							title="Bất động sản sẽ biến động ra sao khi Anh rời khỏi EU?">
								<img class="imagethumbnail"
								alt="Bất động sản sẽ biến động ra sao khi Anh rời khỏi EU?"
								src="../file4.batdongsan.com.vn/crop/210x160/2016/06/30/b9sp0zUm/20160630074008-9b47.jpg"
								style="float: left;">
						</a>
							<div class="thumb-title">
								<a
									href="tin-thi-truong/bat-dong-san-se-bien-dong-ra-sao-khi-anh-roi-khoi-eu-ar78474.html"
									title="Bất động sản sẽ biến động ra sao khi Anh rời khỏi EU?">Bất
									động sản sẽ biến động ra sao khi Anh rời khỏi EU?</a>
							</div>
							<div class="thumb-summary">Các chuyên gia JLL cho biết,
								Brexit sẽ mang lại cơ hội ngắn hạn cho các nhà đầu tư bất động
								sản (BĐS) quốc tế nhưng cũng gây ra sự suy yếu về nhu cầu nhà ở
								đi cùng với sự hạn chế về dòng vốn.</div></li>

					</ul>

					<div style="clear: both;"></div>
					<div class="news-slide-show-item">
						<div class="news-list">
							<ul>

								<li class="li_0"><a
									href="tin-thi-truong/khu-do-thi-thanh-pho-giao-luu-du-an-lon-nhat-khu-vuc-phia-tay-ha-noi-ar78476.html"
									title="Khu đô thị Thành phố giao lưu – dự án lớn nhất khu vực phía Tây Hà Nội">Khu
										đô thị Thành phố giao lưu – dự án lớn nhất khu vực phía Tây
										Hà...</a></li>

								<li class="li_1"><a
									href="tin-thi-truong/ban-can-tim-kenh-dau-tu-hieu-qua-va-an-toan-ar78475.html"
									title="Bạn cần tìm kênh đầu tư hiệu quả và an toàn?">Bạn
										cần tìm kênh đầu tư hiệu quả và an toàn?</a></li>

								<li class="li_2"><a
									href="tin-thi-truong/so-huu-can-ho-trung-tam-quan-7-chi-voi-so-tien-tich-luy-399-trieu-dong-ar78477.html"
									title="Sở hữu căn hộ trung tâm quận 7 chỉ với số tiền tích luỹ 399 triệu đồng">Sở
										hữu căn hộ trung tâm quận 7 chỉ với số tiền tích luỹ 399
										triệu...</a></li>

								<li class="li_3"><a
									href="tin-thi-truong/nhung-thuong-vu-thau-tom-khach-san-khung-cua-cac-dai-gia-dia-oc-ar78478.html"
									title="Những thương vụ thâu tóm khách sạn &quot;khủng&quot; của các đại gia địa ốc">Những
										thương vụ thâu tóm khách sạn "khủng" của các đại gia địa ốc</a></li>

								<li class="li_4"><a
									href="chinh-sach-quan-ly/bo-xay-dung-yeu-cau-xu-ly-sai-pham-tai-du-an-golden-west-le-van-thiem-ar78479.html"
									title="Bộ Xây dựng yêu cầu xử lý sai phạm tại dự án Golden West Lê Văn Thiêm">Bộ
										Xây dựng yêu cầu xử lý sai phạm tại dự án Golden West Lê Văn
										Thiêm</a></li>

								<li class="li_5"><a
									href="tin-thi-truong/bat-dong-san-se-bien-dong-ra-sao-khi-anh-roi-khoi-eu-ar78474.html"
									title="Bất động sản sẽ biến động ra sao khi Anh rời khỏi EU?">Bất
										động sản sẽ biến động ra sao khi Anh rời khỏi EU?</a></li>

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

								<div class="vip5" rel="9672385">
									<div class="p-main">
										<div class="p-main-image-crop">
											<a class="product-avatar"
												href="ban-can-ho-chung-cu-duong-cau-buou-phuong-kien-hung-prj-sails-tower/vao-o-ngay-goc-3-phong-ngu-107-m2-gia-chi-1-55-ty-ha-dong-pr9672385.html"
												onclick=""> <img class="product-avatar-img"
												src="../file4.batdongsan.com.vn/crop/120x90/2016/06/25/20160625101233-0d21.jpg"
												alt="Vào ở ngay căn góc 3 phòng ngủ, 107 m2 giá chỉ 1,55 tỷ, Sails Tower Hà Đông">

											</a>
										</div>
										<div class="p-content">
											<div class="p-title">
												<h3>
													<a
														href="ban-can-ho-chung-cu-duong-cau-buou-phuong-kien-hung-prj-sails-tower/vao-o-ngay-goc-3-phong-ngu-107-m2-gia-chi-1-55-ty-ha-dong-pr9672385.html"
														title="Vào ở ngay căn góc 3 phòng ngủ, 107 m2 giá chỉ 1,55 tỷ, Sails Tower Hà Đông">
														Vào ở ngay căn góc 3 phòng ngủ, 107 m2 giá chỉ 1,55 tỷ,
														Sails Tower Hà Đông </a>
												</h3>
											</div>

										</div>
										<div class="p-bottom-crop">
											<div class="p-bottom-left">
												<div>
													<div class="left">Giá</div>
													:&nbsp;1.55 tỷ
												</div>
												<div>
													<div class="left">Diện tích</div>
													:&nbsp;107 m²
												</div>
												<div>
													<div class="fleft">
														<div class="left">Quận/huyện</div>
														:&nbsp;<a class="link_blue"
															href="ban-can-ho-chung-cu-ha-dong.html"
															title="Bán căn hộ chung cư tại Hà Đông">Hà Đông</a>, <a
															class="link_blue" href="ban-can-ho-chung-cu-ha-noi.html"
															title="Bán căn hộ chung cư tại Hà Nội">Hà Nội</a>
													</div>
													<div class="p-bottom-right font09">30/06/2016</div>
													<div class="clear"></div>
												</div>
											</div>

										</div>
										<div class="clear"></div>
									</div>

								</div>


								<div class="vip5" rel="9668815">
									<div class="p-main">
										<div class="p-main-image-crop">
											<a class="product-avatar"
												href="ban-nha-rieng-duong-tuu-liet-xa-tam-hiep-6/h-thanh-tri-dt-49-m2-x-4-5-tang-sdcc-gia-2-35-ty-pr9668815.html"
												onclick=""> <img class="product-avatar-img"
												src="../file4.batdongsan.com.vn/crop/120x90/2016/06/24/20160624152351-e3f0.jpg"
												alt="Bán nhà Tựu Liệt, H. Thanh Trì, DT 49 m2 x 4,5 tầng, SĐCC, giá 2.35 tỷ">

											</a>
										</div>
										<div class="p-content">
											<div class="p-title">
												<h3>
													<a
														href="ban-nha-rieng-duong-tuu-liet-xa-tam-hiep-6/h-thanh-tri-dt-49-m2-x-4-5-tang-sdcc-gia-2-35-ty-pr9668815.html"
														title="Bán nhà Tựu Liệt, H. Thanh Trì, DT 49 m2 x 4,5 tầng, SĐCC, giá 2.35 tỷ">
														Bán nhà Tựu Liệt, H. Thanh Trì, DT 49 m2 x 4,5 tầng, SĐCC,
														giá 2.35 tỷ </a>
												</h3>
											</div>

										</div>
										<div class="p-bottom-crop">
											<div class="p-bottom-left">
												<div>
													<div class="left">Giá</div>
													:&nbsp;2.35 tỷ
												</div>
												<div>
													<div class="left">Diện tích</div>
													:&nbsp;49 m²
												</div>
												<div>
													<div class="fleft">
														<div class="left">Quận/huyện</div>
														:&nbsp;<a class="link_blue"
															href="ban-nha-rieng-thanh-tri.html"
															title="Bán nhà riêng tại Thanh Trì">Thanh Trì</a>, <a
															class="link_blue" href="ban-nha-rieng-ha-noi.html"
															title="Bán nhà riêng tại Hà Nội">Hà Nội</a>
													</div>
													<div class="p-bottom-right font09">30/06/2016</div>
													<div class="clear"></div>
												</div>
											</div>

										</div>
										<div class="clear"></div>
									</div>

								</div>


								<div class="vip5" rel="9353894">
									<div class="p-main">
										<div class="p-main-image-crop">
											<a class="product-avatar"
												href="ban-nha-mat-pho-pho-thach-lam_1-phuong-hiep-tan/gap-mt-lam-8x22m-13-2-ty-ngay-truong-hoc-dong-khoi-pr9353894.html"
												onclick=""> <img class="product-avatar-img"
												src="../file4.batdongsan.com.vn/crop/120x90/2016/05/17/20160517094351-8b9e.jpg"
												alt="Bán gấp MT Thạch Lam, 8x22m, 13.2 tỷ, ngay trường học Đồng Khởi">

											</a>
										</div>
										<div class="p-content">
											<div class="p-title">
												<h3>
													<a
														href="ban-nha-mat-pho-pho-thach-lam_1-phuong-hiep-tan/gap-mt-lam-8x22m-13-2-ty-ngay-truong-hoc-dong-khoi-pr9353894.html"
														title="Bán gấp MT Thạch Lam, 8x22m, 13.2 tỷ, ngay trường học Đồng Khởi">
														Bán gấp MT Thạch Lam, 8x22m, 13.2 tỷ, ngay trường học Đồng
														Khởi </a>
												</h3>
											</div>

										</div>
										<div class="p-bottom-crop">
											<div class="p-bottom-left">
												<div>
													<div class="left">Giá</div>
													:&nbsp;13.2 tỷ
												</div>
												<div>
													<div class="left">Diện tích</div>
													:&nbsp;176 m²
												</div>
												<div>
													<div class="fleft">
														<div class="left">Quận/huyện</div>
														:&nbsp;<a class="link_blue"
															href="ban-nha-mat-pho-tan-phu.html"
															title="Bán nhà mặt phố tại Tân Phú">Tân Phú</a>, <a
															class="link_blue" href="ban-nha-mat-pho-tp-hcm.html"
															title="Bán nhà mặt phố tại Hồ Chí Minh">Hồ Chí Minh</a>
													</div>
													<div class="p-bottom-right font09">30/06/2016</div>
													<div class="clear"></div>
												</div>
											</div>

										</div>
										<div class="clear"></div>
									</div>

								</div>


								<div class="vip5" rel="9374595">
									<div class="p-main">
										<div class="p-main-image-crop">
											<a class="product-avatar"
												href="ban-can-ho-chung-cu-duong-to-huu-xa-trung-van-prj-ecolife-capitol/du-an-xanh-nhat-khu-vuc-gia-cdt-tang-dep-dep-lh-ngay-091-740-2828-pr9374595.html"
												onclick=""> <img class="product-avatar-img"
												src="../file4.batdongsan.com.vn/crop/120x90/2016/05/19/20160519100624-3efb.jpg"
												alt="Dự án xanh nhất khu vực Ecolife Capitol giá CĐT, tầng đẹp, căn đẹp LH ngay 091.740.2828">

											</a>
										</div>
										<div class="p-content">
											<div class="p-title">
												<h3>
													<a
														href="ban-can-ho-chung-cu-duong-to-huu-xa-trung-van-prj-ecolife-capitol/du-an-xanh-nhat-khu-vuc-gia-cdt-tang-dep-dep-lh-ngay-091-740-2828-pr9374595.html"
														title="Dự án xanh nhất khu vực Ecolife Capitol giá CĐT, tầng đẹp, căn đẹp LH ngay 091.740.2828">
														Dự án xanh nhất khu vực Ecolife Capitol giá CĐT, tầng đẹp,
														căn đẹp LH ngay 091.740.2828 </a>
												</h3>
											</div>

										</div>
										<div class="p-bottom-crop">
											<div class="p-bottom-left">
												<div>
													<div class="left">Giá</div>
													:&nbsp;1.3 tỷ
												</div>
												<div>
													<div class="left">Diện tích</div>
													:&nbsp;75 m²
												</div>
												<div>
													<div class="fleft">
														<div class="left">Quận/huyện</div>
														:&nbsp;<a class="link_blue"
															href="ban-can-ho-chung-cu-nam-tu-liem.html"
															title="Bán căn hộ chung cư tại Nam Từ Liêm">Nam Từ
															Liêm</a>, <a class="link_blue"
															href="ban-can-ho-chung-cu-ha-noi.html"
															title="Bán căn hộ chung cư tại Hà Nội">Hà Nội</a>
													</div>
													<div class="p-bottom-right font09">30/06/2016</div>
													<div class="clear"></div>
												</div>
											</div>

										</div>
										<div class="clear"></div>
									</div>

								</div>


								<div class="vip5" rel="9169911">
									<div class="p-main">
										<div class="p-main-image-crop">
											<a class="product-avatar"
												href="ban-nha-biet-thu-lien-ke-phuong-thach-ban-1-prj-ha-noi-garden-city/chinh-chu-can-cat-lo-can-goc-dep-nhat-du-an-long-bien-lh-0944-213-872-pr9169911.html"
												onclick=""> <img class="product-avatar-img"
												src="../file4.batdongsan.com.vn/crop/120x90/2016/04/21/20160421092820-3026.jpg"
												alt="Chính chủ cần bán cắt lỗ biệt thự căn góc đẹp nhất dự án Long Biên. LH: 0944 213 872">

											</a>
										</div>
										<div class="p-content">
											<div class="p-title">
												<h3>
													<a
														href="ban-nha-biet-thu-lien-ke-phuong-thach-ban-1-prj-ha-noi-garden-city/chinh-chu-can-cat-lo-can-goc-dep-nhat-du-an-long-bien-lh-0944-213-872-pr9169911.html"
														title="Chính chủ cần bán cắt lỗ biệt thự căn góc đẹp nhất dự án Long Biên. LH: 0944 213 872">
														Chính chủ cần bán cắt lỗ biệt thự căn góc đẹp
														nhất dự án Long Biên. LH: 0944 213 872 </a>
												</h3>
											</div>

										</div>
										<div class="p-bottom-crop">
											<div class="p-bottom-left">
												<div>
													<div class="left">Giá</div>
													:&nbsp;11.5 tỷ
												</div>
												<div>
													<div class="left">Diện tích</div>
													:&nbsp;244 m²
												</div>
												<div>
													<div class="fleft">
														<div class="left">Quận/huyện</div>
														:&nbsp;<a class="link_blue"
															href="ban-nha-biet-thu-lien-ke-long-bien.html"
															title="Bán nhà biệt thự, liền kề tại Long Biên">Long
															Biên</a>, <a class="link_blue"
															href="ban-nha-biet-thu-lien-ke-ha-noi.html"
															title="Bán nhà biệt thự, liền kề tại Hà Nội">Hà
															Nội</a>
													</div>
													<div class="p-bottom-right font09">30/06/2016</div>
													<div class="clear"></div>
												</div>
											</div>

										</div>
										<div class="clear"></div>
									</div>

								</div>


								<div class="vip5" rel="9458827">
									<div class="p-main">
										<div class="p-main-image-crop">
											<a class="product-avatar"
												href="ban-dat-nen-du-an-xa-phuoc-hoa-prj-khu-do-thi-phuoc-hoa-goldenland/tai-dinh-cu-kcn-tan-binh-pr9458827.html"
												onclick=""> <img class="product-avatar-img"
												src="../file4.batdongsan.com.vn/crop/120x90/2016/05/30/20160530184214-714f.jpg"
												alt="Đất nền tái định cư KCN Tân Bình">

											</a>
										</div>
										<div class="p-content">
											<div class="p-title">
												<h3>
													<a
														href="ban-dat-nen-du-an-xa-phuoc-hoa-prj-khu-do-thi-phuoc-hoa-goldenland/tai-dinh-cu-kcn-tan-binh-pr9458827.html"
														title="Đất nền tái định cư KCN Tân Bình"> Đất nền tái
														định cư KCN Tân Bình </a>
												</h3>
											</div>

										</div>
										<div class="p-bottom-crop">
											<div class="p-bottom-left">
												<div>
													<div class="left">Giá</div>
													:&nbsp;173 triệu
												</div>
												<div>
													<div class="left">Diện tích</div>
													:&nbsp;100 m²
												</div>
												<div>
													<div class="fleft">
														<div class="left">Quận/huyện</div>
														:&nbsp;<a class="link_blue"
															href="ban-dat-nen-du-an-phu-giao-bd.html"
															title="Bán đất nền dự án tại Phú Giáo">Phú Giáo</a>, <a
															class="link_blue"
															href="ban-dat-nen-du-an-binh-duong.html"
															title="Bán đất nền dự án tại Bình Dương">Bình Dương</a>
													</div>
													<div class="p-bottom-right font09">30/06/2016</div>
													<div class="clear"></div>
												</div>
											</div>

										</div>
										<div class="clear"></div>
									</div>

								</div>
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
							<div class="t_left-baiviet">
								<div class="t_left-baiviet-header">
									<div class="t_left-baiviet-header-left">
										<div>
											<div class="t_left-baiviet-header-left-1"></div>
											<div class="t_left-baiviet-header-left-repeat">
												<span id="ctl43_ctl00_Label1">Bài viết mới</span>
											</div>
											<div class="t_left-baiviet-header-left-2"></div>
										</div>
									</div>
									<div class="t_left-baiviet-header-right">

										<div class="t_left-baiviet-header-right-link"
											style="border: none;">

											<a href="tu-van-luat-bat-dong-san.html" title="Tư vấn luật"
												style="font-size: 11px;"> Tư vấn luật</a>
										</div>

										<div class="t_left-baiviet-header-right-link">

											<a href="xay-dung/index.html" title="Xây dựng"
												style="font-size: 11px;"> Xây dựng</a>
										</div>

										<div class="t_left-baiviet-header-right-link">

											<a href="kien-truc/index.html" title="Kiến trúc"
												style="font-size: 11px;"> Kiến trúc</a>
										</div>

										<div class="t_left-baiviet-header-right-link">

											<a href="noi-ngoai-that/index.html" title="Nội - Ngoại thất"
												style="font-size: 11px;"> Nội - Ngoại thất</a>
										</div>

										<div class="t_left-baiviet-header-right-link">

											<a href="phong-thuy/index.html" title="Phong thủy"
												style="font-size: 11px;"> Phong thủy</a>
										</div>

										<div class="clear"></div>
									</div>
								</div>
								<div class="line-home"></div>
								<div class="t_left-baiviet-content">

									<div class="group-news-border-backgroup">

										<a
											href="nha-pho/nha-ong-dien-tich-152-m2-co-be-boi-tien-nghi-nhu-khu-nghi-duong-ar78481.html">
											<img style="border: 1px solid #ccc;"
											src="../file1.batdongsan.com.vn/crop82x82.20160630104818758.nha-ong-dien-tich-152-m2-co-be-boi-tien-nghi-nhu-khu-nghi-duong.jpg"
											alt="Nhà ống diện tích 152 m2 có bể bơi tiện nghi như khu nghỉ dưỡng">
										</a>
										<div class="group-news-title">
											<a
												href="nha-pho/nha-ong-dien-tich-152-m2-co-be-boi-tien-nghi-nhu-khu-nghi-duong-ar78481.html"
												title="Nhà ống diện tích 152 m2 có bể bơi tiện nghi như khu nghỉ dưỡng">
												Nhà ống diện tích 152 m2 có bể bơi tiện nghi như khu nghỉ
												dưỡng </a>
										</div>
										<div class="group-news-summary">Ngôi nhà ở quận 10
											(Tp.HCM) là dạng nhà ống có diện tích 152 m2 (mặt tiền 3,8m,
											sâu 40m). Gia đình chủ nhà có 3 thế hệ, đây có thể xem là một
											xã hội thu nhỏ với...</div>
									</div>

									<div class="group-news-border-backgroup">

										<a
											href="toan-canh-ngoi-nha/noi-rong-khong-gian-nha-voi-rem-mong-nhe-ar78461.html">
											<img style="border: 1px solid #ccc;"
											src="../file4.batdongsan.com.vn/crop/82x82/2016/06/29/skfAIqGF/20160629141341-4650.jpg"
											alt="Nới rộng không gian nhà với rèm mỏng nhẹ">
										</a>
										<div class="group-news-title">
											<a
												href="toan-canh-ngoi-nha/noi-rong-khong-gian-nha-voi-rem-mong-nhe-ar78461.html"
												title="Nới rộng không gian nhà với rèm mỏng nhẹ"> Nới
												rộng không gian nhà với rèm mỏng nhẹ </a>
										</div>
										<div class="group-news-summary">Lớp rèm mỏng nhẹ sẽ giúp
											ích rất nhiều trong các ngôi nhà nhỏ khi vừa giúp phân tách
											không gian, vừa tăng hiệu ứng thị giác, tạo cảm giác không
											gian nhà trở nên rộng rãi hơn.</div>
									</div>

									<div class="clear"></div>

									<div class="group-news-border-backgroup">

										<a
											href="chung-cu/can-ho-18m2-dep-tien-nghi-nho-thiet-ke-tuyet-voi-ar78458.html">
											<img style="border: 1px solid #ccc;"
											src="../file1.batdongsan.com.vn/crop82x82.20160629111438148.can-ho-18m2-dep-tien-nghi-nho-thiet-ke-tuyet-voi.jpg"
											alt="Căn hộ 18m2 đẹp tiện nghi nhờ thiết kế tuyệt vời">
										</a>
										<div class="group-news-title">
											<a
												href="chung-cu/can-ho-18m2-dep-tien-nghi-nho-thiet-ke-tuyet-voi-ar78458.html"
												title="Căn hộ 18m2 đẹp tiện nghi nhờ thiết kế tuyệt vời">
												Căn hộ 18m2 đẹp tiện nghi nhờ thiết kế tuyệt vời </a>
										</div>
										<div class="group-news-summary">Dù diện tích rất nhỏ,
											chỉ vỏn vẹn 18m2 nhưng căn hộ này có đủ các khu vực chức năng
											như phòng khách, bếp, bàn ăn, giường ngủ... Hơn nữa, nhờ ý
											tưởng thiết kế tuyệt vời nên căn...</div>
									</div>

									<div class="group-news-border-backgroup">

										<a
											href="phong-thuy-toan-canh/cach-hoa-giai-khi-bo-tri-bon-rua-canh-bep-ar78457.html">
											<img style="border: 1px solid #ccc;"
											src="../file4.batdongsan.com.vn/crop/82x82/2016/06/29/skfAIqGF/20160629111207-0846.jpg"
											alt="Cách hóa giải khi bố trí bồn rửa cạnh bếp">
										</a>
										<div class="group-news-title">
											<a
												href="phong-thuy-toan-canh/cach-hoa-giai-khi-bo-tri-bon-rua-canh-bep-ar78457.html"
												title="Cách hóa giải khi bố trí bồn rửa cạnh bếp"> Cách
												hóa giải khi bố trí bồn rửa cạnh bếp </a>
										</div>
										<div class="group-news-summary">Nhiều gia đình đang tạo
											ra sự xung khắc gay gắt giữa lửa và nước trong phòng bếp của
											gia đình khi bố trí bồn rửa cạnh bếp. Hãy tham khảo cách hóa
											giải trong bài viết để hạn chế những...</div>
									</div>

									<div class="clear"></div>

									<div style="clear: both"></div>
									<div class="art-latest">
										<div class="art-item">
											<ul>

												<li><a
													href="phong-thuy-toan-canh/nhung-dau-hieu-phong-thuy-cua-mot-ngoi-nha-thinh-vuong-ar78448.html"
													title="Những dấu hiệu phong thủy của một ngôi nhà thịnh vượng">
														Những dấu hiệu phong thủy của một ngôi nhà thịnh vượng</a></li>

												<li><a
													href="phong-thuy-phong-ngu/bi-quyet-giup-khoi-goi-suc-song-cho-phong-ngu-ar78438.html"
													title="Bí quyết giúp khơi gợi sức sống cho phòng ngủ">
														Bí quyết giúp khơi gợi sức sống cho phòng ngủ</a></li>

												<li><a
													href="the-gioi-kien-truc/thiet-ke-moi-tuyet-dep-cho-thu-vien-thanh-pho-thien-tan-ar78437.html"
													title="Thiết kế mới tuyệt đẹp cho thư viện thành phố Thiên Tân">
														Thiết kế mới tuyệt đẹp cho thư viện thành phố Thiên Tân</a></li>

												<li><a
													href="kien-thuc-xay-dung/3-luu-y-co-ban-khi-thi-cong-cau-thang-bang-kinh-cuong-luc-ar78436.html"
													title="3 lưu ý cơ bản khi thi công cầu thang bằng kính cường lực">
														3 lưu ý cơ bản khi thi công cầu thang bằng kính cường lực</a></li>

												<li><a
													href="quyen-so-huu/co-duoc-ban-nha-thuoc-so-huu-rieng-ar78434.html"
													title="Có được bán nhà thuộc sở hữu riêng?"> Có được
														bán nhà thuộc sở hữu riêng?</a></li>

												<li><a
													href="nghia-vu-tai-chinh/quy-dinh-ve-tinh-tien-thue-dat-tien-su-dung-dat-cua-du-an-dau-tu-ar78422.html"
													title="Quy định về tính tiền thuê đất, tiền sử dụng đất của dự án đầu tư">
														Quy định về tính tiền thuê đất, tiền sử dụng đất của dự án
														đầu tư</a></li>

											</ul>
										</div>
									</div>
								</div>
							</div>
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
							<h3 style="color: White;">Tiêu điểm tuần qua</h3>
						</div>
					</div>
					<div id="ctl37_BodyContainer" class="bor_box">

						<div class="list">
							<ul>

								<li><a class="controls-view-date-contents-link"
									title="HUD hủy hợp đồng giao dịch với Công ty CP địa ốc Thăng Long"
									href="tin-thi-truong.html"> HUD hủy hợp đồng giao dịch với
										Công ty CP địa ốc Thăng...</a></li>

								<li><a class="controls-view-date-contents-link"
									title="Nóng đất nền phía Tây Thủ đô"
									href="tin-thi-truong/nong-dat-nen-phia-tay-thu-do-ar78360.html">

										Nóng đất nền phía Tây Thủ đô</a></li>

								<li><a class="controls-view-date-contents-link"
									title="Nỗi niềm người đi mua đất"
									href="tin-thi-truong/noi-niem-nguoi-di-mua-dat-ar78355.html">

										Nỗi niềm người đi mua đất</a></li>

								<li><a class="controls-view-date-contents-link"
									title="Nguy cơ tái diễn &quot;lệch pha&quot; nguồn cung bất động sản"
									href="tin-thi-truong/nguy-co-tai-dien-lech-pha-nguon-cung-bat-dong-san-ar78351.html">

										Nguy cơ tái diễn "lệch pha" nguồn cung bất động sản</a></li>

								<li><a class="controls-view-date-contents-link"
									title="TTBĐS: &quot;Nóng&quot; nhưng không có cơ sở hình thành bong bóng"
									href="tin-thi-truong/ttbds-nong-nhung-khong-co-co-so-hinh-thanh-bong-bong-ar78346.html">

										TTBĐS: "Nóng" nhưng không có cơ sở hình thành bong...</a></li>

								<li><a class="controls-view-date-contents-link"
									title="Dân thắng kiện, dự án Gateway Thảo Điền mất đất mặt tiền"
									href="tin-thi-truong/dan-thang-kien-du-an-gateway-thao-dien-mat-dat-mat-tien-ar78341.html">

										Dân thắng kiện, dự án Gateway Thảo Điền mất đất mặt...</a></li>

							</ul>
						</div>
					</div>
					<div id="ctl37_FooterContainer"></div>
				</div>
				<div style="clear: both; margin-bottom: 10px;"></div>

				<div class="container-common">
					<div id="ctl42_HeaderContainer" class="box-header">
						<div class="name_tit" align="center">
							<h3 style="color: White;">Lời khuyên</h3>
						</div>
					</div>
					<div id="ctl42_BodyContainer" class="bor_box">

						<div class="list">
							<ul>

								<li><a class="controls-view-date-contents-link"
									title="4 sai lầm phổ biến khi mua bất động sản"
									href="loi-khuyen-cho-nguoi-mua/4-sai-lam-pho-bien-khi-mua-bat-dong-san-ar78446.html">

										4 sai lầm phổ biến khi mua bất động sản</a></li>

								<li><a class="controls-view-date-contents-link"
									title="Những điểm xấu cần tránh khi chọn mua nhà"
									href="loi-khuyen-cho-nguoi-mua/nhung-diem-xau-can-tranh-khi-chon-mua-nha-ar78375.html">

										Những điểm xấu cần tránh khi chọn mua nhà</a></li>

								<li><a class="controls-view-date-contents-link"
									title="Người mua nhà cần lưu ý gì trước khi đặt bút ký kết với chủ đầu tư?"
									href="loi-khuyen-cho-nguoi-mua/nguoi-mua-nha-can-luu-y-gi-truoc-khi-dat-but-ky-ket-voi-chu-dau-tu-ar78349.html">

										Người mua nhà cần lưu ý gì trước khi đặt bút ký kết...</a></li>

								<li><a class="controls-view-date-contents-link"
									title="Tuyệt chiêu bán căn hộ nhanh chóng và hiệu quả"
									href="loi-khuyen-cho-nguoi-ban/tuyet-chieu-ban-can-ho-nhanh-chong-va-hieu-qua-ar78301.html">

										Tuyệt chiêu bán căn hộ nhanh chóng và hiệu quả</a></li>

								<li><a class="controls-view-date-contents-link"
									title="Mua " nhà="" trên="" giấy':="" xuống="" tiền="" lúc=""
									nào="" là="" hợp="" lý?'=""
									href="loi-khuyen-cho-nguoi-mua/mua-nha-tren-giay-xuong-tien-luc-nao-la-hop-ly-ar78282.html">

										Mua 'nhà trên giấy': Xuống tiền lúc nào là hợp lý?</a></li>

								<li><a class="controls-view-date-contents-link"
									title="Một số vấn đề cần lưu ý khi mua căn hộ giá rẻ"
									href="loi-khuyen-cho-nguoi-mua/mot-so-van-de-can-luu-y-khi-mua-can-ho-gia-re-ar78190.html">

										Một số vấn đề cần lưu ý khi mua căn hộ giá rẻ</a></li>

							</ul>
						</div>
					</div>
					<div id="ctl42_FooterContainer"></div>
				</div>
				<div style="clear: both; margin-bottom: 10px;"></div>

				<div class="container-common">
					<div id="ctl48_HeaderContainer" class="box-header">
						<div class="name_tit" align="center">
							<h3 style="color: White;">Treo tranh phong thủy</h3>
						</div>
					</div>
					<div id="ctl48_BodyContainer" class="bor_box">



						<div style="text-align: center; padding-top: 5px;"></div>
						<div class="list">

							<div class="aligncenter">
								<a
									href="phong-thuy-phong-ngu/chon-tranh-phong-thuy-theo-menh-de-treo-trong-phong-ngu-ar76514.html"><img
									src="../file4.batdongsan.com.vn/crop/200x140/2016/03/21/ar1bbLYR/20160321141104-4e73.jpg"
									alt="Chọn tranh phong thủy theo mệnh để treo trong phòng ngủ"
									title="Chọn tranh phong thủy theo mệnh để treo trong phòng ngủ"></a>
							</div>
							<div
								style="display: block; margin: 5px 10px; border-bottom: 1px solid #ccc; padding-bottom: 5px;">
								<a
									href="phong-thuy-phong-ngu/chon-tranh-phong-thuy-theo-menh-de-treo-trong-phong-ngu-ar76514.html"
									style="color: #055699 !important; font-weight: bold;">Chọn
									tranh phong thủy theo mệnh để treo trong phòng ngủ</a>
							</div>
							<ul>
								<li><a
									href="phong-thuy-toan-canh/treo-tranh-phong-thuy-cat-tuong-phu-quy-nam-2016-ar75170.html"
									title="Treo tranh phong thủy cát tường, phú quý năm 2016">Treo
										tranh phong thủy cát tường, phú quý năm 2016</a></li>

								<li><a
									href="phong-thuy-phong-khach/treo-tranh-trong-phong-khach-can-chu-y-toi-phuong-vi-ar74525.html"
									title="Treo tranh trong phòng khách cần chú ý tới phương vị">Treo
										tranh trong phòng khách cần chú ý tới phương vị</a></li>

								<li><a
									href="tu-van-phong-thuy/tu-van-cach-treo-tranh-voi-hop-phong-thuy-ar74259.html"
									title="Tư vấn cách treo tranh voi hợp phong thủy">Tư vấn
										cách treo tranh voi hợp phong thủy</a></li>

								<li><a
									href="phong-thuy-toan-canh/cach-treo-tranh-ky-lan-ar73334.html"
									title="Cách treo tranh kỳ lân">Cách treo tranh kỳ lân</a></li>

								<li><a
									href="phong-thuy-toan-canh/cach-treo-tranh-hoa-lan-ar73309.html"
									title="Cách treo tranh hoa lan">Cách treo tranh hoa lan</a></li>
							</ul>
						</div>
					</div>
					<div id="ctl48_FooterContainer"></div>
				</div>
				<div style="clear: both; margin-bottom: 10px;"></div>

				<div class="container-common">
					<div id="ctl50_HeaderContainer" class="box-header">
						<div class="name_tit" align="center">
							<h4>TƯ VẤN NỘI - NGOẠI THẤT</h4>
						</div>
					</div>
					<div id="ctl50_BodyContainer" class="bor_box">

						<div class="tuvan">
							<img src="Images/icon_user.png" alt="">
							<p>
								<strong>Tư vấn nội - ngoại thất từ chuyên gia</strong>
							</p>
							<div>&nbsp;</div>
						</div>
						<div class="list">
							<ul>
								<li><a
									href="tu-van-noi-ngoai-that/bi-quyet-de-so-huu-ngoi-nha-dep-toan-dien-ar78210.html"
									title="Bí quyết để sở hữu ngôi nhà đẹp toàn diện">Bí quyết
										để sở hữu ngôi nhà đẹp toàn diện</a></li>

								<li><a
									href="tu-van-noi-ngoai-that/tu-van-bo-tri-noi-that-can-ho-hien-dai-cho-chu-nha-9x-dt-57m2-ar77691.html"
									title="Tư vấn bố trí nội thất căn hộ hiện đại cho chủ nhà 9x, DT 57m2">Tư
										vấn bố trí nội thất căn hộ hiện đại cho chủ nhà 9x, DT 57m2</a></li>

								<li><a
									href="tu-van-noi-ngoai-that/tu-van-thiet-ke-va-bo-tri-noi-that-cho-can-nha-15m-ar77497.html"
									title="Tư vấn thiết kế và bố trí nội thất cho căn nhà 15m²">Tư
										vấn thiết kế và bố trí nội thất cho căn nhà 15m²</a></li>

								<li><a
									href="tu-van-noi-ngoai-that/it-tien-van-cai-tao-duoc-bep-dep-ar77036.html"
									title="Ít tiền vẫn cải tạo được bếp đẹp">Ít tiền vẫn cải
										tạo được bếp đẹp</a></li>

								<li><a
									href="tu-van-noi-ngoai-that/tu-van-thiet-ke-va-bo-tri-noi-that-cho-nha-ong-2-tang-dt-40m-ar77007.html"
									title="Tư vấn thiết kế và bố trí nội thất cho nhà ống 2 tầng, DT 40m²">Tư
										vấn thiết kế và bố trí nội thất cho nhà ống 2 tầng, DT 40m²</a></li>

								<li><a
									href="tu-van-noi-ngoai-that/tu-van-cai-tao-them-phong-ngu-cho-can-ho-73m2-ar76861.html"
									title="Tư vấn cải tạo thêm phòng ngủ cho căn hộ 73m2">Tư
										vấn cải tạo thêm phòng ngủ cho căn hộ 73m2</a></li>
							</ul>
						</div>
					</div>
					<div id="ctl50_FooterContainer"></div>
				</div>
				<div style="clear: both; margin-bottom: 10px;"></div>

				<div class="container-faq">
					<div id="ctl54_HeaderContainer" class="box-header box-header-bg"
						style="margin-top: 1px;">
						<div class="name_tit" align="center" style="padding-top: 0px;">
							<h4>Hỏi - Đáp</h4>
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