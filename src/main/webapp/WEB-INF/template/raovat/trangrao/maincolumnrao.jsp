<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="body-right">
				<div class="container-default">
					<div>
						<div id="content-main-right">
							<div style="margin-bottom: 8px;">
								<a id="emailregister" class="fancybox.iframe"
									href="http://batdongsan.com.vn/Modules/EmailSendRegister/EmailRegister.aspx?pType=38&amp;cateId=324&amp;cityCode=SG&amp;distId=59&amp;projId=103&amp;room=3&amp;area=6&amp;price=4&amp;direction=-1&amp;streetId=8244&amp;wardId=8754"
									rel="nofollow"> <img src="./tindang_files/btnClick2.png"
									alt="Click here to show popup"
									style="margin-top: -7px; width: 240px;"></a>
							</div>
							<div id="column-right">
								<div>
									<div id="product_search" class="box-left">
										<div class="box-title">Tìm kiếm trong 1.000.000 tin rao
										</div>
										<div id="searchcp" class="search-form">
											<div class="result"></div>
											<div class="searchrow"
												style="position: relative; z-index: 100; text-align: left !important;">
												<div class="newicon"
													style="width: 213px !important; padding-left: 5px; border: 1px solid #ccc; clear: both;">
													<input type="text" id="txtAutoComplete"
														placeholder="Nhập địa điểm, vd: Sunrise City"
														style="border: 0; width: 187px; padding: 0"
														class="ui-autocomplete-input" autocomplete="off"
														role="textbox" aria-autocomplete="list"
														aria-haspopup="true">
												</div>
												<div class="suggestTT">
													<div class="arr">
														<img src="./tindang_files/greyarrow.png">
													</div>
													<div class="greencolor goiy">
														<strong>Gợi ý</strong>
													</div>
													<ul>
														<li>Nhập tên tỉnh/thành phố, quận/huyện, phường/xã,
															đường/phố, dự án; ví dụ: Sunrise City</li>
														<li>Phải chọn các gợi ý chúng tôi đề xuất bên dưới để
															kết quả chính xác nhất</li>
														<li>Nếu không nhập địa điểm ở đây, Quý vị có thể chọn
															lựa khu vực bằng các ô phía dưới trong công cụ tìm kiếm
															này</li>
													</ul>
													<div class="closeTT">
														<img src="./tindang_files/close.png">
													</div>
												</div>
											</div>
											<div id="divCategory" class="searchrow advance-select-box">
												<span class="select-text hasvalue"> <span
													class="select-text-content" readonly="readonly"
													style="width: 193px;">Nhà đất bán</span>
												</span> <input type="hidden" name="cboCategory" id="hdCboCatagory"
													value="38">
													<div id="divCatagoryOptions"
														class="advance-select-options advance-options advance-select-options-2"
														hddvalue="hdCboCatagory" ddlid="divCategory">
														<ul class="advance-options" style="min-width: 218px;">
															<li vl="0" class="advance-options"
																style="min-width: 186px;">--Chọn loại tin rao--</li>
															<li vl="38" class="advance-options current"
																style="min-width: 186px;">Nhà đất bán</li>
															<li vl="49" class="advance-options"
																style="min-width: 186px;">Nhà đất cho thuê</li>
														</ul>
													</div>
											</div>
											<div id="divCategoryRe" class="searchrow advance-select-box">
												<span class="select-text hasvalue"> <span
													class="select-text-content" readonly="readonly"
													style="width: 193px;">- Bán căn hộ chung cư</span>
												</span> <input type="hidden" name="cboTypeRe" id="hdCboCatagoryRe"
													value="324">
													<div id="divCatagoryReOptions"
														class="advance-select-options advance-options advance-select-options-2"
														hddvalue="hdCboCatagoryRe" ddlid="divCategoryRe">
														<ul class="advance-options" style="min-width: 218px;">
															<li class="advance-options" vl="0">--Chọn loại nhà
																đất--</li>
															<li class="advance-options" vl="324">- Bán căn hộ
																chung cư</li>
															<li class="advance-options" vl="362">- Tất cả các
																loại nhà bán</li>
															<li class="advance-options" vl="41">&nbsp;&nbsp;&nbsp;&nbsp;+
																Bán nhà riêng</li>
															<li class="advance-options" vl="325">&nbsp;&nbsp;&nbsp;&nbsp;+
																Bán nhà biệt thự, liền kề</li>
															<li class="advance-options" vl="163">&nbsp;&nbsp;&nbsp;&nbsp;+
																Bán nhà mặt phố</li>
															<li class="advance-options" vl="361">- Tất cả các
																loại đất bán</li>
															<li class="advance-options" vl="40">&nbsp;&nbsp;&nbsp;&nbsp;+
																Bán đất nền dự án</li>
															<li class="advance-options" vl="283">&nbsp;&nbsp;&nbsp;&nbsp;+
																Bán đất</li>
															<li class="advance-options" vl="44">- Bán trang
																trại, khu nghỉ dưỡng</li>
															<li class="advance-options" vl="45">- Bán kho, nhà
																xưởng</li>
															<li class="advance-options" vl="48">- Bán loại bất
																động sản khác</li>
														</ul>
													</div>
											</div>
											<div id="divCity" class="searchrow advance-select-box">
												<span class="select-text hasvalue"><input type="text"
													class="select-text-content" value="--Chọn Tỉnh/Thành phố--"
													placeholder="--Chọn Tỉnh/Thành phố--" readonly="readonly"
													style="width: 193px;"></span> <input type="hidden"
													name="cboCity" id="hdCboCity" value="SG">
													<div id="divCityOptions"
														class="advance-select-options advance-options advance-select-options-2"
														hddvalue="hdCboCity" ddlid="divCity">
														<ul class="advance-options" style="min-width: 218px;">
															<li vl="CN" class="advance-options"
																style="min-width: 186px;">--Chọn Tỉnh/Thành phố--</li>
															<li vl="SG" class="advance-options current"
																style="min-width: 186px;">Hồ Chí Minh</li>
															<li vl="HN" class="advance-options"
																style="min-width: 186px;">Hà Nội</li>
															<li vl="BD" class="advance-options"
																style="min-width: 186px;">Bình Dương</li>
															<li vl="DDN" class="advance-options"
																style="min-width: 186px;">Đà Nẵng</li>
															<li vl="HP" class="advance-options"
																style="min-width: 186px;">Hải Phòng</li>
															<li vl="LA" class="advance-options"
																style="min-width: 186px;">Long An</li>
															<li vl="VT" class="advance-options"
																style="min-width: 186px;">Bà Rịa Vũng Tàu</li>
															<li vl="AG" class="advance-options"
																style="min-width: 186px;">An Giang</li>
															<li vl="BG" class="advance-options"
																style="min-width: 186px;">Bắc Giang</li>
															<li vl="BK" class="advance-options"
																style="min-width: 186px;">Bắc Kạn</li>
															<li vl="BL" class="advance-options"
																style="min-width: 186px;">Bạc Liêu</li>
															<li vl="BN" class="advance-options"
																style="min-width: 186px;">Bắc Ninh</li>
															<li vl="BTR" class="advance-options"
																style="min-width: 186px;">Bến Tre</li>
															<li vl="BDD" class="advance-options"
																style="min-width: 186px;">Bình Định</li>
															<li vl="BP" class="advance-options"
																style="min-width: 186px;">Bình Phước</li>
															<li vl="BTH" class="advance-options"
																style="min-width: 186px;">Bình Thuận</li>
															<li vl="CM" class="advance-options"
																style="min-width: 186px;">Cà Mau</li>
															<li vl="CT" class="advance-options"
																style="min-width: 186px;">Cần Thơ</li>
															<li vl="CB" class="advance-options"
																style="min-width: 186px;">Cao Bằng</li>
															<li vl="DDL" class="advance-options"
																style="min-width: 186px;">Đắk Lắk</li>
															<li vl="DNO" class="advance-options"
																style="min-width: 186px;">Đắk Nông</li>
															<li vl="DDB" class="advance-options"
																style="min-width: 186px;">Điện Biên</li>
															<li vl="DNA" class="advance-options"
																style="min-width: 186px;">Đồng Nai</li>
															<li vl="DDT" class="advance-options"
																style="min-width: 186px;">Đồng Tháp</li>
															<li vl="GL" class="advance-options"
																style="min-width: 186px;">Gia Lai</li>
															<li vl="HG" class="advance-options"
																style="min-width: 186px;">Hà Giang</li>
															<li vl="HNA" class="advance-options"
																style="min-width: 186px;">Hà Nam</li>
															<li vl="HT" class="advance-options"
																style="min-width: 186px;">Hà Tĩnh</li>
															<li vl="HD" class="advance-options"
																style="min-width: 186px;">Hải Dương</li>
															<li vl="HGI" class="advance-options"
																style="min-width: 186px;">Hậu Giang</li>
															<li vl="HB" class="advance-options"
																style="min-width: 186px;">Hòa Bình</li>
															<li vl="HY" class="advance-options"
																style="min-width: 186px;">Hưng Yên</li>
															<li vl="KH" class="advance-options"
																style="min-width: 186px;">Khánh Hòa</li>
															<li vl="KG" class="advance-options"
																style="min-width: 186px;">Kiên Giang</li>
															<li vl="KT" class="advance-options"
																style="min-width: 186px;">Kon Tum</li>
															<li vl="LCH" class="advance-options"
																style="min-width: 186px;">Lai Châu</li>
															<li vl="LDD" class="advance-options"
																style="min-width: 186px;">Lâm Đồng</li>
															<li vl="LS" class="advance-options"
																style="min-width: 186px;">Lạng Sơn</li>
															<li vl="LCA" class="advance-options"
																style="min-width: 186px;">Lào Cai</li>
															<li vl="NDD" class="advance-options"
																style="min-width: 186px;">Nam Định</li>
															<li vl="NA" class="advance-options"
																style="min-width: 186px;">Nghệ An</li>
															<li vl="NB" class="advance-options"
																style="min-width: 186px;">Ninh Bình</li>
															<li vl="NT" class="advance-options"
																style="min-width: 186px;">Ninh Thuận</li>
															<li vl="PT" class="advance-options"
																style="min-width: 186px;">Phú Thọ</li>
															<li vl="PY" class="advance-options"
																style="min-width: 186px;">Phú Yên</li>
															<li vl="QB" class="advance-options"
																style="min-width: 186px;">Quảng Bình</li>
															<li vl="QNA" class="advance-options"
																style="min-width: 186px;">Quảng Nam</li>
															<li vl="QNG" class="advance-options"
																style="min-width: 186px;">Quảng Ngãi</li>
															<li vl="QNI" class="advance-options"
																style="min-width: 186px;">Quảng Ninh</li>
															<li vl="QT" class="advance-options"
																style="min-width: 186px;">Quảng Trị</li>
															<li vl="ST" class="advance-options"
																style="min-width: 186px;">Sóc Trăng</li>
															<li vl="SL" class="advance-options"
																style="min-width: 186px;">Sơn La</li>
															<li vl="TNI" class="advance-options"
																style="min-width: 186px;">Tây Ninh</li>
															<li vl="TB" class="advance-options"
																style="min-width: 186px;">Thái Bình</li>
															<li vl="TN" class="advance-options"
																style="min-width: 186px;">Thái Nguyên</li>
															<li vl="TH" class="advance-options"
																style="min-width: 186px;">Thanh Hóa</li>
															<li vl="TTH" class="advance-options"
																style="min-width: 186px;">Thừa Thiên Huế</li>
															<li vl="TG" class="advance-options"
																style="min-width: 186px;">Tiền Giang</li>
															<li vl="TV" class="advance-options"
																style="min-width: 186px;">Trà Vinh</li>
															<li vl="TQ" class="advance-options"
																style="min-width: 186px;">Tuyên Quang</li>
															<li vl="VL" class="advance-options"
																style="min-width: 186px;">Vĩnh Long</li>
															<li vl="VP" class="advance-options"
																style="min-width: 186px;">Vĩnh Phúc</li>
															<li vl="YB" class="advance-options"
																style="min-width: 186px;">Yên Bái</li>
														</ul>
													</div>
											</div>
											<div id="divDistrict" class="searchrow advance-select-box"
												title="">
												<span class="select-text hasvalue"><input type="text"
													class="select-text-content" value="--Chọn Quận/Huyện--"
													placeholder="--Chọn Quận/Huyện--" readonly="readonly"
													style="width: 193px;"></span> <input type="hidden"
													name="cboDistrict" id="hdCboDistrict" value="59">
													<div id="divDistrictOptions"
														class="advance-select-options advance-options advance-select-options-2"
														hddvalue="hdCboDistrict" ddlid="divDistrict">
														<ul class="advance-options" style="min-width: 218px;">
															<li vl="0" class="advance-options"
																style="min-width: 186px;">--Chọn Quận/Huyện--</li>
															<li vl="72" class="advance-options"
																style="min-width: 186px;">Bình Chánh</li>
															<li vl="65" class="advance-options"
																style="min-width: 186px;">Bình Tân</li>
															<li vl="66" class="advance-options"
																style="min-width: 186px;">Bình Thạnh</li>
															<li vl="73" class="advance-options"
																style="min-width: 186px;">Cần Giờ</li>
															<li vl="74" class="advance-options"
																style="min-width: 186px;">Củ Chi</li>
															<li vl="67" class="advance-options"
																style="min-width: 186px;">Gò Vấp</li>
															<li vl="75" class="advance-options"
																style="min-width: 186px;">Hóc Môn</li>
															<li vl="76" class="advance-options"
																style="min-width: 186px;">Nhà Bè</li>
															<li vl="68" class="advance-options"
																style="min-width: 186px;">Phú Nhuận</li>
															<li vl="53" class="advance-options"
																style="min-width: 186px;">Quận 1</li>
															<li vl="62" class="advance-options"
																style="min-width: 186px;">Quận 10</li>
															<li vl="63" class="advance-options"
																style="min-width: 186px;">Quận 11</li>
															<li vl="64" class="advance-options"
																style="min-width: 186px;">Quận 12</li>
															<li vl="54" class="advance-options"
																style="min-width: 186px;">Quận 2</li>
															<li vl="55" class="advance-options"
																style="min-width: 186px;">Quận 3</li>
															<li vl="56" class="advance-options"
																style="min-width: 186px;">Quận 4</li>
															<li vl="57" class="advance-options"
																style="min-width: 186px;">Quận 5</li>
															<li vl="58" class="advance-options"
																style="min-width: 186px;">Quận 6</li>
															<li vl="59" class="advance-options current"
																style="min-width: 186px;">Quận 7</li>
															<li vl="60" class="advance-options"
																style="min-width: 186px;">Quận 8</li>
															<li vl="61" class="advance-options"
																style="min-width: 186px;">Quận 9</li>
															<li vl="69" class="advance-options"
																style="min-width: 186px;">Tân Bình</li>
															<li vl="70" class="advance-options"
																style="min-width: 186px;">Tân Phú</li>
															<li vl="71" class="advance-options"
																style="min-width: 186px;">Thủ Đức</li>
														</ul>
													</div>
											</div>
											<div id="divArea" class="searchrow advance-select-box ">
												<span class="select-text hasvalue"> <span
													class="select-text-content" readonly="readonly"
													style="width: 193px;">150 - 200 m2</span>
												</span> <input type="hidden" id="hdCboArea" name="cboArea"
													value="6">
													<div id="divAreaOptions"
														class="advance-select-options advance-options advance-select-options-2"
														minvalue="txtAreaMinValue" maxvalue="txtAreaMaxValue"
														unit="area" hddvalue="hdCboArea" ddlid="divArea">
														<table class="header-options options">
															<tbody>
																<tr class="advance-options">
																	<td class="advance-options"><input type="text"
																		id="txtAreaMinValue" name="areamin" placeholder="Từ"
																		class="min-value advance-options" maxlength="6"
																		numbersonly="true" decimal="false" value=""></td>
																	<td class="advance-options"><span
																		class="advance-options">- </span></td>
																	<td class="advance-options"><input type="text"
																		id="txtAreaMaxValue" name="areamax" placeholder="Đến"
																		class="max-value advance-options" maxlength="6"
																		numbersonly="true" decimal="false" value=""></td>
																	<td class="advance-options"><span
																		class="advance-options">m2</span></td>
																</tr>
															</tbody>
														</table>
														<ul name="cboArea" id="cboArea" class="advance-options"
															style="min-width: 218px;">
															<li vl="-1" class="advance-options"
																style="min-width: 186px;">--Chọn Diện tích--</li>
															<li vl="0" class="advance-options"
																style="min-width: 186px;">Chưa xác định</li>
															<li vl="1" class="advance-options"
																style="min-width: 186px;">&lt;= 30 m2</li>
															<li vl="2" class="advance-options"
																style="min-width: 186px;">30 - 50 m2</li>
															<li vl="3" class="advance-options"
																style="min-width: 186px;">50 - 80 m2</li>
															<li vl="4" class="advance-options"
																style="min-width: 186px;">80 - 100 m2</li>
															<li vl="5" class="advance-options"
																style="min-width: 186px;">100 - 150 m2</li>
															<li vl="6" class="advance-options current"
																style="min-width: 186px;">150 - 200 m2</li>
															<li vl="7" class="advance-options"
																style="min-width: 186px;">200 - 250 m2</li>
															<li vl="8" class="advance-options"
																style="min-width: 186px;">250 - 300 m2</li>
															<li vl="9" class="advance-options"
																style="min-width: 186px;">300 - 500 m2</li>
															<li vl="10" class="advance-options"
																style="min-width: 186px;">&gt;= 500 m2</li>
														</ul>
													</div>
											</div>
											<div id="divPrice" class="searchrow advance-select-box">
												<span class="select-text hasvalue"> <span
													class="select-text-content" readonly="readonly"
													style="width: 193px;">1 - 2 tỷ</span>
												</span> <input type="hidden" id="hdCboPrice" name="cboPrice"
													value="4">
													<div id="divPriceOptions"
														class="advance-select-options advance-options advance-select-options-2"
														minvalue="txtPriceMinValue" maxvalue="txtPriceMaxValue"
														unit="money" lblmin="lblPriceMin" lblmax="lblPriceMax"
														hddvalue="hdCboPrice" ddlid="divPrice">
														<table class="header-options options">
															<tbody>
																<tr class="advance-options">
																	<td class="advance-options"><input type="text"
																		id="txtPriceMinValue" name="pricemin" placeholder="Từ"
																		class="min-value advance-options" maxlength="6"
																		numbersonly="true" decimal="true" value=""><div
																				id="lblPriceMin"></div></td>
																	<td class="advance-options"><span
																		class="advance-options">- </span></td>
																	<td class="advance-options"><input type="text"
																		id="txtPriceMaxValue" name="pricemax"
																		placeholder="Đến" class="max-value advance-options"
																		maxlength="6" numbersonly="true" decimal="true"
																		value=""><div id="lblPriceMax"></div></td>
																</tr>
															</tbody>
														</table>
														<ul class="advance-options" style="min-width: 218px;">
															<li vl="-1" class="advance-options"
																style="min-width: 186px;">--Chọn mức giá--</li>
															<li vl="0" class="advance-options"
																style="min-width: 186px;">Thỏa thuận</li>
															<li vl="1" class="advance-options"
																style="min-width: 186px;">&lt; 500 triệu</li>
															<li vl="2" class="advance-options"
																style="min-width: 186px;">500 - 800 triệu</li>
															<li vl="3" class="advance-options"
																style="min-width: 186px;">800 triệu - 1 tỷ</li>
															<li vl="4" class="advance-options current"
																style="min-width: 186px;">1 - 2 tỷ</li>
															<li vl="5" class="advance-options"
																style="min-width: 186px;">2 - 3 tỷ</li>
															<li vl="6" class="advance-options"
																style="min-width: 186px;">3 - 5 tỷ</li>
															<li vl="7" class="advance-options"
																style="min-width: 186px;">5 - 7 tỷ</li>
															<li vl="8" class="advance-options"
																style="min-width: 186px;">7 - 10 tỷ</li>
															<li vl="9" class="advance-options"
																style="min-width: 186px;">10 - 20 tỷ</li>
															<li vl="10" class="advance-options"
																style="min-width: 186px;">20 - 30 tỷ</li>
															<li vl="11" class="advance-options"
																style="min-width: 186px;">&gt; 30 tỷ</li>
														</ul>
													</div>
											</div>
											<div id="divWard"
												class="searchrow adv-search advance-select-box" title=""
												style="display: block;">
												<span class="select-text hasvalue"><input type="text"
													class="select-text-content" value="--Chọn Phường/Xã--"
													placeholder="--Chọn Phường/Xã--" readonly="readonly"
													style="width: 193px;"></span> <input type="hidden"
													name="cboWard" id="hdCboWard" value="8754">
													<div id="divWardOptions"
														class="advance-select-options advance-options advance-select-options-2"
														hddvalue="hdCboWard" ddlid="divWard">
														<ul class="advance-options" style="min-width: 218px;">
															<li vl="0" class="advance-options"
																style="min-width: 186px;">--Chọn Phường/Xã--</li>
															<li vl="8753" class="advance-options"
																style="min-width: 186px;">Bình Thuận</li>
															<li vl="8754" class="advance-options current"
																style="min-width: 186px;">Phú Mỹ</li>
															<li vl="8755" class="advance-options"
																style="min-width: 186px;">Phú Thuận</li>
															<li vl="8759" class="advance-options"
																style="min-width: 186px;">Tân Hưng</li>
															<li vl="8761" class="advance-options"
																style="min-width: 186px;">Tân Kiểng</li>
															<li vl="8773" class="advance-options"
																style="min-width: 186px;">Tân Phong</li>
															<li vl="8774" class="advance-options"
																style="min-width: 186px;">Tân Phú</li>
															<li vl="11902" class="advance-options"
																style="min-width: 186px;">Tân Quy</li>
															<li vl="8776" class="advance-options"
																style="min-width: 186px;">Tân Thuận Đông</li>
															<li vl="8778" class="advance-options"
																style="min-width: 186px;">Tân Thuận Tây</li>
														</ul>
													</div>
											</div>
											<div id="divStreet"
												class="searchrow adv-search advance-select-box" title=""
												style="display: block;">
												<span class="select-text hasvalue"><input type="text"
													class="select-text-content" value="--Chọn Đường/Phố--"
													placeholder="--Chọn Đường/Phố--" readonly="readonly"
													style="width: 193px;"></span> <input type="hidden"
													name="cboStreet" id="hdCboStreet" value="8244">
													<div id="divStreetOptions"
														class="advance-select-options advance-options advance-select-options-2"
														hddvalue="hdCboStreet" ddlid="divStreet">
														<ul class="advance-options" style="min-width: 218px;">
															<li vl="0" class="advance-options"
																style="min-width: 186px;">--Chọn Đường/Phố--</li>
															<li vl="3789" class="advance-options"
																style="min-width: 186px;">1</li>
															<li vl="3780" class="advance-options"
																style="min-width: 186px;">10</li>
															<li vl="1998" class="advance-options"
																style="min-width: 186px;">11</li>
															<li vl="4311" class="advance-options"
																style="min-width: 186px;">11N</li>
															<li vl="1999" class="advance-options"
																style="min-width: 186px;">12</li>
															<li vl="2647" class="advance-options"
																style="min-width: 186px;">12B</li>
															<li vl="4781" class="advance-options"
																style="min-width: 186px;">13</li>
															<li vl="2001" class="advance-options"
																style="min-width: 186px;">14</li>
															<li vl="5780" class="advance-options"
																style="min-width: 186px;">14A</li>
															<li vl="2002" class="advance-options"
																style="min-width: 186px;">15</li>
															<li vl="8244" class="advance-options current"
																style="min-width: 186px;">15B</li>
															<li vl="4187" class="advance-options"
																style="min-width: 186px;">16</li>
															<li vl="2850" class="advance-options"
																style="min-width: 186px;">17</li>
															<li vl="2095" class="advance-options"
																style="min-width: 186px;">18</li>
															<li vl="5707" class="advance-options"
																style="min-width: 186px;">19</li>
															<li vl="3788" class="advance-options"
																style="min-width: 186px;">2</li>
															<li vl="4991" class="advance-options"
																style="min-width: 186px;">20</li>
															<li vl="3631" class="advance-options"
																style="min-width: 186px;">21</li>
															<li vl="2773" class="advance-options"
																style="min-width: 186px;">22</li>
															<li vl="709" class="advance-options"
																style="min-width: 186px;">23</li>
															<li vl="2869" class="advance-options"
																style="min-width: 186px;">24</li>
															<li vl="2870" class="advance-options"
																style="min-width: 186px;">25</li>
															<li vl="4281" class="advance-options"
																style="min-width: 186px;">25A</li>
															<li vl="4766" class="advance-options"
																style="min-width: 186px;">27</li>
															<li vl="2165" class="advance-options"
																style="min-width: 186px;">28</li>
															<li vl="2166" class="advance-options"
																style="min-width: 186px;">29</li>
															<li vl="689" class="advance-options"
																style="min-width: 186px;">3</li>
															<li vl="4196" class="advance-options"
																style="min-width: 186px;">30</li>
															<li vl="4416" class="advance-options"
																style="min-width: 186px;">31</li>
															<li vl="7772" class="advance-options"
																style="min-width: 186px;">32</li>
															<li vl="4265" class="advance-options"
																style="min-width: 186px;">33</li>
															<li vl="2876" class="advance-options"
																style="min-width: 186px;">34</li>
															<li vl="6346" class="advance-options"
																style="min-width: 186px;">35</li>
															<li vl="2878" class="advance-options"
																style="min-width: 186px;">36</li>
															<li vl="2879" class="advance-options"
																style="min-width: 186px;">37</li>
															<li vl="2167" class="advance-options"
																style="min-width: 186px;">38</li>
															<li vl="2520" class="advance-options"
																style="min-width: 186px;">39</li>
															<li vl="4413" class="advance-options"
																style="min-width: 186px;">3A</li>
															<li vl="11347" class="advance-options"
																style="min-width: 186px;">3J</li>
															<li vl="1990" class="advance-options"
																style="min-width: 186px;">4</li>
															<li vl="4672" class="advance-options"
																style="min-width: 186px;">40</li>
															<li vl="4211" class="advance-options"
																style="min-width: 186px;">41</li>
															<li vl="2885" class="advance-options"
																style="min-width: 186px;">42</li>
															<li vl="4213" class="advance-options"
																style="min-width: 186px;">43</li>
															<li vl="3061" class="advance-options"
																style="min-width: 186px;">44</li>
															<li vl="2889" class="advance-options"
																style="min-width: 186px;">45</li>
															<li vl="2263" class="advance-options"
																style="min-width: 186px;">47</li>
															<li vl="2894" class="advance-options"
																style="min-width: 186px;">48</li>
															<li vl="2895" class="advance-options"
																style="min-width: 186px;">49</li>
															<li vl="5263" class="advance-options"
																style="min-width: 186px;">4A</li>
															<li vl="9763" class="advance-options"
																style="min-width: 186px;">4F</li>
															<li vl="3786" class="advance-options"
																style="min-width: 186px;">5</li>
															<li vl="6272" class="advance-options"
																style="min-width: 186px;">51</li>
															<li vl="2898" class="advance-options"
																style="min-width: 186px;">52</li>
															<li vl="4472" class="advance-options"
																style="min-width: 186px;">53</li>
															<li vl="2904" class="advance-options"
																style="min-width: 186px;">56</li>
															<li vl="2908" class="advance-options"
																style="min-width: 186px;">59</li>
															<li vl="10127" class="advance-options"
																style="min-width: 186px;">5K</li>
															<li vl="2840" class="advance-options"
																style="min-width: 186px;">6</li>
															<li vl="2252" class="advance-options"
																style="min-width: 186px;">61</li>
															<li vl="8036" class="advance-options"
																style="min-width: 186px;">62</li>
															<li vl="8689" class="advance-options"
																style="min-width: 186px;">63</li>
															<li vl="2915" class="advance-options"
																style="min-width: 186px;">65</li>
															<li vl="2916" class="advance-options"
																style="min-width: 186px;">66</li>
															<li vl="2917" class="advance-options"
																style="min-width: 186px;">67</li>
															<li vl="2918" class="advance-options"
																style="min-width: 186px;">68</li>
															<li vl="4291" class="advance-options"
																style="min-width: 186px;">69</li>
															<li vl="1994" class="advance-options"
																style="min-width: 186px;">7</li>
															<li vl="631" class="advance-options"
																style="min-width: 186px;">70</li>
															<li vl="7957" class="advance-options"
																style="min-width: 186px;">71</li>
															<li vl="8680" class="advance-options"
																style="min-width: 186px;">73</li>
															<li vl="2925" class="advance-options"
																style="min-width: 186px;">75</li>
															<li vl="8797" class="advance-options"
																style="min-width: 186px;">76</li>
															<li vl="4294" class="advance-options"
																style="min-width: 186px;">77</li>
															<li vl="7118" class="advance-options"
																style="min-width: 186px;">78</li>
															<li vl="4295" class="advance-options"
																style="min-width: 186px;">79</li>
															<li vl="4309" class="advance-options"
																style="min-width: 186px;">7L</li>
															<li vl="2841" class="advance-options"
																style="min-width: 186px;">8</li>
															<li vl="4297" class="advance-options"
																style="min-width: 186px;">81</li>
															<li vl="4299" class="advance-options"
																style="min-width: 186px;">83</li>
															<li vl="4300" class="advance-options"
																style="min-width: 186px;">85</li>
															<li vl="2842" class="advance-options"
																style="min-width: 186px;">9</li>
															<li vl="4310" class="advance-options"
																style="min-width: 186px;">9M</li>
															<li vl="4273" class="advance-options"
																style="min-width: 186px;">Bế Văn Cấm</li>
															<li vl="3858" class="advance-options"
																style="min-width: 186px;">Bến Nghé</li>
															<li vl="335" class="advance-options"
																style="min-width: 186px;">Bùi Bằng Đoàn</li>
															<li vl="5592" class="advance-options"
																style="min-width: 186px;">Bùi Văn Ba</li>
															<li vl="3070" class="advance-options"
																style="min-width: 186px;">Cao Triều Phát</li>
															<li vl="7192" class="advance-options"
																style="min-width: 186px;">Chuyên Dùng</li>
															<li vl="7431" class="advance-options"
																style="min-width: 186px;">Chuyên Dùng 9</li>
															<li vl="1985" class="advance-options"
																style="min-width: 186px;">D1</li>
															<li vl="2599" class="advance-options"
																style="min-width: 186px;">D4</li>
															<li vl="8159" class="advance-options"
																style="min-width: 186px;">D6</li>
															<li vl="3526" class="advance-options"
																style="min-width: 186px;">Đặng Đại Độ</li>
															<li vl="5722" class="advance-options"
																style="min-width: 186px;">Đặng Đức Thuật</li>
															<li vl="6503" class="advance-options"
																style="min-width: 186px;">Đào Tông Nguyên</li>
															<li vl="5715" class="advance-options"
																style="min-width: 186px;">Đào Trí</li>
															<li vl="7458" class="advance-options"
																style="min-width: 186px;">Đô Đốc Tuyết</li>
															<li vl="310" class="advance-options"
																style="min-width: 186px;">Giải Phóng</li>
															<li vl="5685" class="advance-options"
																style="min-width: 186px;">Gò Lu</li>
															<li vl="6202" class="advance-options"
																style="min-width: 186px;">Gò Ô Môi</li>
															<li vl="755" class="advance-options"
																style="min-width: 186px;">Hà Huy Tập</li>
															<li vl="7708" class="advance-options"
																style="min-width: 186px;">Him Lam</li>
															<li vl="616" class="advance-options"
																style="min-width: 186px;">Hoàng Quốc Việt</li>
															<li vl="300" class="advance-options"
																style="min-width: 186px;">Hoàng Văn Thái</li>
															<li vl="9749" class="advance-options"
																style="min-width: 186px;">Hưng Gia 2</li>
															<li vl="7552" class="advance-options"
																style="min-width: 186px;">Hưng Gia 5</li>
															<li vl="5718" class="advance-options"
																style="min-width: 186px;">Hưng Phước</li>
															<li vl="7926" class="advance-options"
																style="min-width: 186px;">Hưng Thái</li>
															<li vl="3010" class="advance-options"
																style="min-width: 186px;">Huỳnh Tấn Phát</li>
															<li vl="6789" class="advance-options"
																style="min-width: 186px;">Kiều Đàm</li>
															<li vl="4266" class="advance-options"
																style="min-width: 186px;">Lâm Văn Bền</li>
															<li vl="5678" class="advance-options"
																style="min-width: 186px;">Lãnh Binh Thăng</li>
															<li vl="10154" class="advance-options"
																style="min-width: 186px;">Lê Đăng Lương</li>
															<li vl="314" class="advance-options"
																style="min-width: 186px;">Lê Văn Lương</li>
															<li vl="5679" class="advance-options"
																style="min-width: 186px;">Lê Văn Thêm</li>
															<li vl="325" class="advance-options"
																style="min-width: 186px;">Lê Văn Thiêm</li>
															<li vl="3026" class="advance-options"
																style="min-width: 186px;">Lưu Trọng Lư</li>
															<li vl="7349" class="advance-options"
																style="min-width: 186px;">Lý Long Tường</li>
															<li vl="4262" class="advance-options"
																style="min-width: 186px;">Lý Phục Man</li>
															<li vl="4163" class="advance-options"
																style="min-width: 186px;">Mai Chí Thọ</li>
															<li vl="5713" class="advance-options"
																style="min-width: 186px;">Mai Văn Vĩnh</li>
															<li vl="7622" class="advance-options"
																style="min-width: 186px;">Mỹ Hưng</li>
															<li vl="7650" class="advance-options"
																style="min-width: 186px;">Mỹ Phú 1</li>
															<li vl="8590" class="advance-options"
																style="min-width: 186px;">Mỹ Tú Cảnh Quan</li>
															<li vl="2251" class="advance-options"
																style="min-width: 186px;">Nguyễn Bính</li>
															<li vl="8905" class="advance-options"
																style="min-width: 186px;">Nguyễn Cao Nam</li>
															<li vl="479" class="advance-options"
																style="min-width: 186px;">Nguyễn Đức Cảnh</li>
															<li vl="458" class="advance-options"
																style="min-width: 186px;">Nguyễn Hữu Thọ</li>
															<li vl="1476" class="advance-options"
																style="min-width: 186px;">Nguyễn Khắc Viện</li>
															<li vl="394" class="advance-options"
																style="min-width: 186px;">Nguyễn Lương Bằng</li>
															<li vl="1310" class="advance-options"
																style="min-width: 186px;">Nguyễn Tất Thành</li>
															<li vl="615" class="advance-options"
																style="min-width: 186px;">Nguyễn Thị Thập</li>
															<li vl="8383" class="advance-options"
																style="min-width: 186px;">Nguyễn Văn Bính</li>
															<li vl="278" class="advance-options"
																style="min-width: 186px;">Nguyễn Văn Linh</li>
															<li vl="4274" class="advance-options"
																style="min-width: 186px;">Nguyễn Văn Luông</li>
															<li vl="5680" class="advance-options"
																style="min-width: 186px;">Nguyễn Văn Quỳ</li>
															<li vl="10905" class="advance-options"
																style="min-width: 186px;">P</li>
															<li vl="3505" class="advance-options"
																style="min-width: 186px;">Phạm Hữu Lầu</li>
															<li vl="3586" class="advance-options"
																style="min-width: 186px;">Phạm Thái Bường</li>
															<li vl="2664" class="advance-options"
																style="min-width: 186px;">Phạm Văn Nghị</li>
															<li vl="2233" class="advance-options"
																style="min-width: 186px;">Phan Huy Thực.</li>
															<li vl="6463" class="advance-options"
																style="min-width: 186px;">Phan Khiêm Ích</li>
															<li vl="5693" class="advance-options"
																style="min-width: 186px;">Phú Thuận</li>
															<li vl="6006" class="advance-options"
																style="min-width: 186px;">Quốc lộ 32</li>
															<li vl="597" class="advance-options"
																style="min-width: 186px;">Quốc lộ 71</li>
															<li vl="11206" class="advance-options"
																style="min-width: 186px;">Số 1</li>
															<li vl="11211" class="advance-options"
																style="min-width: 186px;">Số 10</li>
															<li vl="11209" class="advance-options"
																style="min-width: 186px;">Số 11</li>
															<li vl="11601" class="advance-options"
																style="min-width: 186px;">Số 11N</li>
															<li vl="11205" class="advance-options"
																style="min-width: 186px;">Số 12</li>
															<li vl="11240" class="advance-options"
																style="min-width: 186px;">Số 13</li>
															<li vl="11227" class="advance-options"
																style="min-width: 186px;">Số 14</li>
															<li vl="11270" class="advance-options"
																style="min-width: 186px;">Số 14A</li>
															<li vl="11210" class="advance-options"
																style="min-width: 186px;">Số 15</li>
															<li vl="11225" class="advance-options"
																style="min-width: 186px;">Số 16</li>
															<li vl="11215" class="advance-options"
																style="min-width: 186px;">Số 17</li>
															<li vl="11255" class="advance-options"
																style="min-width: 186px;">Số 18</li>
															<li vl="11235" class="advance-options"
																style="min-width: 186px;">Số 19</li>
															<li vl="11223" class="advance-options"
																style="min-width: 186px;">Số 2</li>
															<li vl="11221" class="advance-options"
																style="min-width: 186px;">Số 20</li>
															<li vl="11277" class="advance-options"
																style="min-width: 186px;">Số 21</li>
															<li vl="11228" class="advance-options"
																style="min-width: 186px;">Số 22</li>
															<li vl="11245" class="advance-options"
																style="min-width: 186px;">Số 23</li>
															<li vl="11279" class="advance-options"
																style="min-width: 186px;">Số 25</li>
															<li vl="11391" class="advance-options"
																style="min-width: 186px;">Số 25A</li>
															<li vl="11237" class="advance-options"
																style="min-width: 186px;">Số 28</li>
															<li vl="11219" class="advance-options"
																style="min-width: 186px;">Số 3</li>
															<li vl="11289" class="advance-options"
																style="min-width: 186px;">Số 30</li>
															<li vl="11298" class="advance-options"
																style="min-width: 186px;">Số 32</li>
															<li vl="11376" class="advance-options"
																style="min-width: 186px;">Số 33</li>
															<li vl="11261" class="advance-options"
																style="min-width: 186px;">Số 34</li>
															<li vl="11296" class="advance-options"
																style="min-width: 186px;">Số 35</li>
															<li vl="9396" class="advance-options"
																style="min-width: 186px;">Số 36</li>
															<li vl="11280" class="advance-options"
																style="min-width: 186px;">Số 37</li>
															<li vl="11212" class="advance-options"
																style="min-width: 186px;">Số 38</li>
															<li vl="11229" class="advance-options"
																style="min-width: 186px;">Số 39</li>
															<li vl="11232" class="advance-options"
																style="min-width: 186px;">Số 4</li>
															<li vl="11231" class="advance-options"
																style="min-width: 186px;">Số 40</li>
															<li vl="11246" class="advance-options"
																style="min-width: 186px;">Số 41</li>
															<li vl="11294" class="advance-options"
																style="min-width: 186px;">Số 43</li>
															<li vl="11266" class="advance-options"
																style="min-width: 186px;">Số 45</li>
															<li vl="11218" class="advance-options"
																style="min-width: 186px;">Số 47</li>
															<li vl="11297" class="advance-options"
																style="min-width: 186px;">Số 49</li>
															<li vl="11217" class="advance-options"
																style="min-width: 186px;">Số 5</li>
															<li vl="11271" class="advance-options"
																style="min-width: 186px;">Số 51</li>
															<li vl="11314" class="advance-options"
																style="min-width: 186px;">Số 53</li>
															<li vl="11192" class="advance-options"
																style="min-width: 186px;">Số 6</li>
															<li vl="11394" class="advance-options"
																style="min-width: 186px;">Số 65</li>
															<li vl="11222" class="advance-options"
																style="min-width: 186px;">Số 7</li>
															<li vl="11328" class="advance-options"
																style="min-width: 186px;">Số 71</li>
															<li vl="11241" class="advance-options"
																style="min-width: 186px;">Số 75</li>
															<li vl="11377" class="advance-options"
																style="min-width: 186px;">Số 77</li>
															<li vl="11264" class="advance-options"
																style="min-width: 186px;">Số 79</li>
															<li vl="11207" class="advance-options"
																style="min-width: 186px;">Số 8</li>
															<li vl="11236" class="advance-options"
																style="min-width: 186px;">Số 81</li>
															<li vl="11440" class="advance-options"
																style="min-width: 186px;">Số 85</li>
															<li vl="11233" class="advance-options"
																style="min-width: 186px;">Số 9</li>
															<li vl="11390" class="advance-options"
																style="min-width: 186px;">Số 9M</li>
															<li vl="7981" class="advance-options"
																style="min-width: 186px;">Tân An Huy</li>
															<li vl="2968" class="advance-options"
																style="min-width: 186px;">Tân Mỹ</li>
															<li vl="8676" class="advance-options"
																style="min-width: 186px;">Tân Phú</li>
															<li vl="6989" class="advance-options"
																style="min-width: 186px;">Tân Quy</li>
															<li vl="5714" class="advance-options"
																style="min-width: 186px;">Tân Quý</li>
															<li vl="6813" class="advance-options"
																style="min-width: 186px;">Tân Quy Đông</li>
															<li vl="6713" class="advance-options"
																style="min-width: 186px;">Tân Thuận Tây</li>
															<li vl="2427" class="advance-options"
																style="min-width: 186px;">Tân Trào</li>
															<li vl="7640" class="advance-options"
																style="min-width: 186px;">Tân Văn Khánh</li>
															<li vl="7935" class="advance-options"
																style="min-width: 186px;">Thái Văn Bương</li>
															<li vl="6502" class="advance-options"
																style="min-width: 186px;">Thới An 22</li>
															<li vl="10859" class="advance-options"
																style="min-width: 186px;">Tiểu Nam</li>
															<li vl="4625" class="advance-options"
																style="min-width: 186px;">Tỉnh lộ 15B</li>
															<li vl="599" class="advance-options"
																style="min-width: 186px;">Tỉnh lộ 73</li>
															<li vl="5784" class="advance-options"
																style="min-width: 186px;">Tôn Dật Tiên</li>
															<li vl="5694" class="advance-options"
																style="min-width: 186px;">Trần Đức Lương</li>
															<li vl="219" class="advance-options"
																style="min-width: 186px;">Trần Quốc Toản</li>
															<li vl="5754" class="advance-options"
																style="min-width: 186px;">Trần Trọng Cung</li>
															<li vl="6883" class="advance-options"
																style="min-width: 186px;">Trần Văn Khánh</li>
															<li vl="2468" class="advance-options"
																style="min-width: 186px;">Trần Văn Trà</li>
															<li vl="510" class="advance-options"
																style="min-width: 186px;">Trần Xuân Soạn</li>
															<li vl="6758" class="advance-options"
																style="min-width: 186px;">Vườn Điều</li>
														</ul>
													</div>
											</div>
											<div id="divBedRoom"
												class="searchrow adv-search advance-select-box"
												style="display: block;">
												<span class="select-text hasvalue"> <span
													class="select-text-content" readonly="readonly"
													style="width: 193px;">3+</span>
												</span> <input type="hidden" name="cboBedRoom" id="hdCboBedRoom"
													value="3">
													<div id="divBedRoomOptions"
														class="advance-select-options advance-options advance-select-options-2"
														hddvalue="hdCboBedRoom" ddlid="divBedRoom">
														<ul class="advance-options" style="min-width: 218px;">
															<li vl="-1" class="advance-options"
																style="min-width: 186px;">--Chọn số phòng ngủ--</li>
															<li vl="0" class="advance-options"
																style="min-width: 186px;">Không xác định</li>
															<li vl="1" class="advance-options"
																style="min-width: 186px;">1+</li>
															<li vl="2" class="advance-options"
																style="min-width: 186px;">2+</li>
															<li vl="3" class="advance-options current"
																style="min-width: 186px;">3+</li>
															<li vl="4" class="advance-options"
																style="min-width: 186px;">4+</li>
															<li vl="5" class="advance-options"
																style="min-width: 186px;">5+</li>
														</ul>
													</div>
											</div>
											<div id="divHomeDirection"
												class="searchrow adv-search advance-select-box"
												style="display: block;">
												<span class="select-text"> <span
													class="select-text-content" readonly="readonly"
													style="width: 193px;">--Chọn hướng nhà--</span>
												</span> <input type="hidden" name="cboHomeDirection"
													id="hdCboHomeDirection" value="-1">
													<div id="divHomeDirectionOptions"
														class="advance-select-options advance-options advance-select-options-2"
														hddvalue="hdCboHomeDirection" ddlid="divHomeDirection">
														<ul class="advance-options" style="min-width: 218px;">
															<li vl="-1" class="advance-options"
																style="min-width: 186px;">--Chọn hướng nhà--</li>
															<li vl="0" class="advance-options"
																style="min-width: 186px;">KXĐ</li>
															<li vl="1" class="advance-options"
																style="min-width: 186px;">Đông</li>
															<li vl="2" class="advance-options"
																style="min-width: 186px;">Tây</li>
															<li vl="3" class="advance-options"
																style="min-width: 186px;">Nam</li>
															<li vl="4" class="advance-options"
																style="min-width: 186px;">Bắc</li>
															<li vl="5" class="advance-options"
																style="min-width: 186px;">Đông-Bắc</li>
															<li vl="6" class="advance-options"
																style="min-width: 186px;">Tây-Bắc</li>
															<li vl="7" class="advance-options"
																style="min-width: 186px;">Tây-Nam</li>
															<li vl="8" class="advance-options"
																style="min-width: 186px;">Đông-Nam</li>
														</ul>
													</div>
											</div>
											<div id="divProject"
												class="searchrow adv-search advance-select-box" title=""
												style="display: block;">
												<span class="select-text hasvalue"><input type="text"
													class="select-text-content"
													value="--Chọn dự án bất động sản--"
													placeholder="--Chọn dự án bất động sản--"
													readonly="readonly" style="width: 193px;"></span> <input
													type="hidden" name="cboListProj" id="hdCboProject"
													value="103">
													<div id="divProjectOptions"
														class="advance-select-options advance-options advance-select-options-2"
														hddvalue="hdCboProject" ddlid="divProject">
														<ul class="advance-options" style="min-width: 218px;">
															<li vl="0" class="advance-options"
																style="min-width: 186px;">--Chọn dự án bất động
																sản--</li>
															<li vl="2157" class="advance-options"
																style="min-width: 186px;">An Gia Riverside</li>
															<li vl="2244" class="advance-options"
																style="min-width: 186px;">An Gia Skyline</li>
															<li vl="320" class="advance-options"
																style="min-width: 186px;">Belleza Apartment</li>
															<li vl="1909" class="advance-options"
																style="min-width: 186px;">Biệt thự Lam Thiên Lục
																Địa</li>
															<li vl="1078" class="advance-options"
																style="min-width: 186px;">Biệt thự lâu đài Chateau</li>
															<li vl="847" class="advance-options"
																style="min-width: 186px;">Bình An Apartment</li>
															<li vl="1676" class="advance-options"
																style="min-width: 186px;">Căn hộ An Viên</li>
															<li vl="2126" class="advance-options"
																style="min-width: 186px;">Căn hộ Florita Đức Khải</li>
															<li vl="672" class="advance-options"
																style="min-width: 186px;">Căn hộ Incomex</li>
															<li vl="2199" class="advance-options"
																style="min-width: 186px;">Căn hộ Luxcity</li>
															<li vl="1895" class="advance-options"
																style="min-width: 186px;">Căn hộ Phú Mỹ An</li>
															<li vl="2245" class="advance-options"
																style="min-width: 186px;">Căn hộ Sunriver</li>
															<li vl="1646" class="advance-options"
																style="min-width: 186px;">Cảnh Viên 1</li>
															<li vl="1648" class="advance-options"
																style="min-width: 186px;">Cảnh Viên 2</li>
															<li vl="485" class="advance-options"
																style="min-width: 186px;">Cảnh Viên 3</li>
															<li vl="1533" class="advance-options"
																style="min-width: 186px;">Chung cư Hoàng Kim</li>
															<li vl="2213" class="advance-options"
																style="min-width: 186px;">Chung cư Hưng Phúc</li>
															<li vl="1382" class="advance-options"
																style="min-width: 186px;">Chung cư Minh Thành</li>
															<li vl="90" class="advance-options"
																style="min-width: 186px;">Chung cư Phú Mỹ</li>
															<li vl="1585" class="advance-options"
																style="min-width: 186px;">Chung cư Tân Mỹ</li>
															<li vl="1326" class="advance-options"
																style="min-width: 186px;">CityLand Riverside</li>
															<li vl="2490" class="advance-options"
																style="min-width: 186px;">Diamond City</li>
															<li vl="1881" class="advance-options"
																style="min-width: 186px;">Docklands Sài Gòn</li>
															<li vl="842" class="advance-options"
																style="min-width: 186px;">Dự án Seven Diamond</li>
															<li vl="2472" class="advance-options"
																style="min-width: 186px;">Đức Long Golden Land</li>
															<li vl="2578" class="advance-options"
																style="min-width: 186px;">D-Vela</li>
															<li vl="1320" class="advance-options"
																style="min-width: 186px;">Ehome 5 - The Bridgeview</li>
															<li vl="1308" class="advance-options"
																style="min-width: 186px;">Garden Court 1</li>
															<li vl="1642" class="advance-options"
																style="min-width: 186px;">Garden Court 2</li>
															<li vl="1310" class="advance-options"
																style="min-width: 186px;">Garden Plaza 1</li>
															<li vl="1783" class="advance-options"
																style="min-width: 186px;">Garden Plaza 2</li>
															<li vl="1117" class="advance-options"
																style="min-width: 186px;">Grand View</li>
															<li vl="1464" class="advance-options"
																style="min-width: 186px;">Green Valley</li>
															<li vl="1655" class="advance-options"
																style="min-width: 186px;">Green View</li>
															<li vl="1194" class="advance-options"
																style="min-width: 186px;">Happy Valley</li>
															<li vl="1597" class="advance-options"
																style="min-width: 186px;">Hemera Building</li>
															<li vl="360" class="advance-options"
																style="min-width: 186px;">Him Lam Riverside</li>
															<li vl="108" class="advance-options"
																style="min-width: 186px;">Hoàng Anh Gia Lai 1</li>
															<li vl="109" class="advance-options"
																style="min-width: 186px;">Hoàng Anh Gia Lai 2</li>
															<li vl="1324" class="advance-options"
																style="min-width: 186px;">Hoàng Anh Thanh Bình</li>
															<li vl="1309" class="advance-options"
																style="min-width: 186px;">Hưng Gia 3</li>
															<li vl="2402" class="advance-options"
																style="min-width: 186px;">Hưng Phát Golden Star</li>
															<li vl="1632" class="advance-options"
																style="min-width: 186px;">Hưng Thái</li>
															<li vl="1633" class="advance-options"
																style="min-width: 186px;">Hưng Vượng 1</li>
															<li vl="1635" class="advance-options"
																style="min-width: 186px;">Hưng Vượng 2</li>
															<li vl="1637" class="advance-options"
																style="min-width: 186px;">Hưng Vượng 3</li>
															<li vl="1028" class="advance-options"
																style="min-width: 186px;">Jamona City</li>
															<li vl="2159" class="advance-options"
																style="min-width: 186px;">Jamona Golden Silk</li>
															<li vl="1877" class="advance-options"
																style="min-width: 186px;">KDC Nam Long Phú Thuận</li>
															<li vl="1822" class="advance-options"
																style="min-width: 186px;">KDC Thiên Phú Gia</li>
															<li vl="1768" class="advance-options"
																style="min-width: 186px;">Khu biệt thự Mỹ Hoàng</li>
															<li vl="1313" class="advance-options"
																style="min-width: 186px;">Khu Biệt Thự Mỹ Kim 1,2</li>
															<li vl="1899" class="advance-options"
																style="min-width: 186px;">Khu Biệt thự Mỹ Kim 3</li>
															<li vl="1831" class="advance-options"
																style="min-width: 186px;">Khu biệt thự Mỹ Quang</li>
															<li vl="1569" class="advance-options"
																style="min-width: 186px;">Khu biệt thự Mỹ Văn</li>
															<li vl="1784" class="advance-options"
																style="min-width: 186px;">Khu biệt thự Nam Đô</li>
															<li vl="1720" class="advance-options"
																style="min-width: 186px;">Khu biệt thự Phú Gia</li>
															<li vl="336" class="advance-options"
																style="min-width: 186px;">Khu căn hộ Mỹ Đức</li>
															<li vl="1546" class="advance-options"
																style="min-width: 186px;">Khu căn hộ An Hòa</li>
															<li vl="949" class="advance-options"
																style="min-width: 186px;">Khu căn hộ Res III</li>
															<li vl="1669" class="advance-options"
																style="min-width: 186px;">Khu dân cư Kim Sơn</li>
															<li vl="1341" class="advance-options"
																style="min-width: 186px;">Khu dân cư Nam Viên</li>
															<li vl="1174" class="advance-options"
																style="min-width: 186px;">Khu dân cư Phú Mỹ</li>
															<li vl="1894" class="advance-options"
																style="min-width: 186px;">Khu dân cư Phú Mỹ Chợ Lớn</li>
															<li vl="1809" class="advance-options"
																style="min-width: 186px;">Khu dân cư Savimex</li>
															<li vl="1724" class="advance-options"
																style="min-width: 186px;">Khu dân cư Tân An Huy</li>
															<li vl="1525" class="advance-options"
																style="min-width: 186px;">Khu dân cư Tân Thành lập</li>
															<li vl="1584" class="advance-options"
																style="min-width: 186px;">Khu dân cư Tấn Trường</li>
															<li vl="1261" class="advance-options"
																style="min-width: 186px;">Khu dân cư Ven Sông
																Sadeco</li>
															<li vl="493" class="advance-options"
																style="min-width: 186px;">Khu đô thị Him Lam Kênh
																Tẻ</li>
															<li vl="1291" class="advance-options"
																style="min-width: 186px;">Khu đô thị Nam Long</li>
															<li vl="1681" class="advance-options"
																style="min-width: 186px;">Khu nhà phố Hưng Gia</li>
															<li vl="1679" class="advance-options"
																style="min-width: 186px;">Khu nhà phố Hưng Phước</li>
															<li vl="1311" class="advance-options"
																style="min-width: 186px;">Khu phố Mỹ Toàn 2</li>
															<li vl="1578" class="advance-options"
																style="min-width: 186px;">Khu phố Nam Thiên 1,2,3</li>
															<li vl="1312" class="advance-options"
																style="min-width: 186px;">Khu phố Nam Thông I</li>
															<li vl="1364" class="advance-options"
																style="min-width: 186px;">Khu phố Nam Thông II</li>
															<li vl="1452" class="advance-options"
																style="min-width: 186px;">Khu tái định cư Phú Mỹ 2</li>
															<li vl="1045" class="advance-options"
																style="min-width: 186px;">La Casa</li>
															<li vl="2066" class="advance-options"
																style="min-width: 186px;">Lotus Residence</li>
															<li vl="2347" class="advance-options"
																style="min-width: 186px;">Luxury Home</li>
															<li vl="2371" class="advance-options"
																style="min-width: 186px;">M-One Nam Sài Gòn</li>
															<li vl="1905" class="advance-options"
																style="min-width: 186px;">Mỹ Cảnh</li>
															<li vl="1694" class="advance-options"
																style="min-width: 186px;">Mỹ Gia 1</li>
															<li vl="1719" class="advance-options"
																style="min-width: 186px;">Mỹ Gia 2</li>
															<li vl="1718" class="advance-options"
																style="min-width: 186px;">Mỹ Giang</li>
															<li vl="1652" class="advance-options"
																style="min-width: 186px;">Mỹ Hào</li>
															<li vl="1660" class="advance-options"
																style="min-width: 186px;">Mỹ Hưng</li>
															<li vl="1641" class="advance-options"
																style="min-width: 186px;">Mỹ Khang</li>
															<li vl="1715" class="advance-options"
																style="min-width: 186px;">Mỹ Khánh 1</li>
															<li vl="1714" class="advance-options"
																style="min-width: 186px;">Mỹ Khánh 2</li>
															<li vl="1717" class="advance-options"
																style="min-width: 186px;">Mỹ Khánh 3</li>
															<li vl="1454" class="advance-options"
																style="min-width: 186px;">Mỹ Khánh 4</li>
															<li vl="1630" class="advance-options"
																style="min-width: 186px;">Mỹ Phát</li>
															<li vl="1697" class="advance-options"
																style="min-width: 186px;">Mỹ Phú 1</li>
															<li vl="1698" class="advance-options"
																style="min-width: 186px;">Mỹ Phú 2</li>
															<li vl="1175" class="advance-options"
																style="min-width: 186px;">Mỹ Phú 3</li>
															<li vl="639" class="advance-options"
																style="min-width: 186px;">Mỹ Phú Apartment</li>
															<li vl="1611" class="advance-options"
																style="min-width: 186px;">Mỹ Phúc</li>
															<li vl="1617" class="advance-options"
																style="min-width: 186px;">Mỹ Phước</li>
															<li vl="1667" class="advance-options"
																style="min-width: 186px;">Mỹ Thái 1</li>
															<li vl="1692" class="advance-options"
																style="min-width: 186px;">Mỹ Thái 2</li>
															<li vl="1693" class="advance-options"
																style="min-width: 186px;">Mỹ Thái 3</li>
															<li vl="1664" class="advance-options"
																style="min-width: 186px;">Mỹ Toàn 1</li>
															<li vl="1858" class="advance-options"
																style="min-width: 186px;">Mỹ Toàn 3</li>
															<li vl="1722" class="advance-options"
																style="min-width: 186px;">Mỹ Tú 1</li>
															<li vl="1723" class="advance-options"
																style="min-width: 186px;">Mỹ Tú 2</li>
															<li vl="1810" class="advance-options"
																style="min-width: 186px;">Mỹ Tú 3</li>
															<li vl="1668" class="advance-options"
																style="min-width: 186px;">Mỹ Viên</li>
															<li vl="1639" class="advance-options"
																style="min-width: 186px;">Nam Khang</li>
															<li vl="1682" class="advance-options"
																style="min-width: 186px;">Nam Long 1</li>
															<li vl="1663" class="advance-options"
																style="min-width: 186px;">Nam Long 2</li>
															<li vl="1684" class="advance-options"
																style="min-width: 186px;">Nam Long 3</li>
															<li vl="1136" class="advance-options"
																style="min-width: 186px;">Nam Phú Villas</li>
															<li vl="2501" class="advance-options"
																style="min-width: 186px;">Nam Phúc - Le Jardin</li>
															<li vl="1670" class="advance-options"
																style="min-width: 186px;">Nam Quang 1</li>
															<li vl="1751" class="advance-options"
																style="min-width: 186px;">Nam Quang 2</li>
															<li vl="1120" class="advance-options"
																style="min-width: 186px;">Nam Thông</li>
															<li vl="1703" class="advance-options"
																style="min-width: 186px;">Nam Thông 3</li>
															<li vl="598" class="advance-options"
																style="min-width: 186px;">Ngọc Lan Apartment</li>
															<li vl="1662" class="advance-options"
																style="min-width: 186px;">Park View</li>
															<li vl="1163" class="advance-options"
																style="min-width: 186px;">PetroLand Tower</li>
															<li vl="82" class="advance-options"
																style="min-width: 186px;">Phú Mỹ Hưng</li>
															<li vl="472" class="advance-options"
																style="min-width: 186px;">Quốc Cường Gia Lai 1</li>
															<li vl="2422" class="advance-options"
																style="min-width: 186px;">River City</li>
															<li vl="487" class="advance-options"
																style="min-width: 186px;">Riverpark Residence</li>
															<li vl="991" class="advance-options"
																style="min-width: 186px;">Riverside Residence</li>
															<li vl="837" class="advance-options"
																style="min-width: 186px;">Riviera Point</li>
															<li vl="619" class="advance-options"
																style="min-width: 186px;">Royal Tower</li>
															<li vl="541" class="advance-options"
																style="min-width: 186px;">Sài Gòn Paragon</li>
															<li vl="2164" class="advance-options"
																style="min-width: 186px;">Saigon Plaza Tower</li>
															<li vl="538" class="advance-options"
																style="min-width: 186px;">SC VivoCity</li>
															<li vl="1860" class="advance-options"
																style="min-width: 186px;">Scenic Valley</li>
															<li vl="2415" class="advance-options"
																style="min-width: 186px;">Scenic Valley 2</li>
															<li vl="488" class="advance-options"
																style="min-width: 186px;">Sky Garden 3</li>
															<li vl="1340" class="advance-options"
																style="min-width: 186px;">Sky Garden I</li>
															<li vl="1342" class="advance-options"
																style="min-width: 186px;">Sky Garden II</li>
															<li vl="712" class="advance-options"
																style="min-width: 186px;">Southern Palace</li>
															<li vl="365" class="advance-options"
																style="min-width: 186px;">Star Hill</li>
															<li vl="527" class="advance-options"
																style="min-width: 186px;">Sunrise City</li>
															<li vl="2136" class="advance-options"
																style="min-width: 186px;">Sunrise City View</li>
															<li vl="103" class="advance-options current"
																style="min-width: 186px;">The Era Town</li>
															<li vl="958" class="advance-options"
																style="min-width: 186px;">The EverRich III</li>
															<li vl="705" class="advance-options"
																style="min-width: 186px;">The Mark</li>
															<li vl="992" class="advance-options"
																style="min-width: 186px;">The Panorama</li>
															<li vl="622" class="advance-options"
																style="min-width: 186px;">Thiên Sơn Plaza - Hồ Chí
																Minh</li>
															<li vl="2423" class="advance-options"
																style="min-width: 186px;">Tulip Tower</li>
															<li vl="1379" class="advance-options"
																style="min-width: 186px;">USilk Apartment</li>
															<li vl="144" class="advance-options"
																style="min-width: 186px;">V-Star</li>
														</ul>
													</div>
											</div>
											<div class="searchbtn">
												<input type="image" name="btnSearch" id="btnSearchContext"
													onmouseover="this.src=&#39;http://file4.batdongsan.com.vn/images/search2.jpg&#39;"
													onmouseout="this.src=&#39;http://file4.batdongsan.com.vn/images/search1.jpg&#39;"
													src="./tindang_files/search1.jpg">
											</div>
											<div id="divLabelSearchAdv">
												<span class="box-sub-title advance" id="lblSearch">Bỏ
													tìm nâng cao</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<input type="hidden"
					name="ctl00$RightMainContent$_productCount$areaCount"
					id="areaCount"> <input type="hidden"
					name="ctl00$RightMainContent$_productCount$priceCount"
					id="priceCount"> <input type="hidden"
						name="ctl00$RightMainContent$_productCount$roomCount"
						id="roomCount">
							<div id="RightMainContent__productCount_HeaderContainer"
								class="box-header1">
								<div align="center" class="name_tit1 new-header">Bán căn
									hộ chung cư theo dự án tại 7</div>
							</div>
							<div id="RightMainContent__productCount_bodyContainer"
								class="bor_box">
								<div id="div_count_product">
									<div id="divCountByAreas"></div>
									<div class="Project">

										<ul>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-an-gia-riverside">
													An Gia Riverside</a> (28)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-an-gia-skyline">
													An Gia Skyline</a> (72)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-can-ho-an-vien">
													Căn hộ An Viên</a> (4)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-can-ho-florita-duc-khai">
													Căn hộ Florita Đức Khải</a> (231)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-can-ho-luxcity">
													Căn hộ Luxcity</a> (289)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-can-ho-phu-my-an">
													Căn hộ Phú Mỹ An</a> (3)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-can-ho-sunriver">
													Căn hộ Sunriver</a> (15)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-canh-vien-1">
													Cảnh Viên 1</a> (6)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-canh-vien-2">
													Cảnh Viên 2</a> (7)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-chung-cu-hoang-kim">
													Chung cư Hoàng Kim</a> (6)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-chung-cu-hung-phuc">
													Chung cư Hưng Phúc</a> (33)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-chung-cu-minh-thanh">
													Chung cư Minh Thành</a> (4)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-chung-cu-tan-my">
													Chung cư Tân Mỹ</a> (7)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-cityland-riverside">
													CityLand Riverside</a> (1)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-diamond-city">
													Diamond City</a> (11)</li>

											<li><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-docklands-sai-gon">
													Docklands Sài Gòn</a> (113)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-duc-long-golden-land">
													Đức Long Golden Land</a> (66)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-d-vela">
													D-Vela</a> (4)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-ehome-5-the-bridgeview">
													Ehome 5 - The Bridgeview</a> (39)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-garden-court-2">
													Garden Court 2</a> (9)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-garden-plaza-2">
													Garden Plaza 2</a> (1)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-green-valley">
													Green Valley</a> (33)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-green-view">
													Green View</a> (11)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-hoang-anh-thanh-binh">
													Hoàng Anh Thanh Bình</a> (139)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-hung-phat-golden-star">
													Hưng Phát Golden Star</a> (108)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-hung-vuong-1">
													Hưng Vượng 1</a> (7)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-hung-vuong-2">
													Hưng Vượng 2</a> (10)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-hung-vuong-3">
													Hưng Vượng 3</a> (3)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-jamona-golden-silk">
													Jamona Golden Silk</a> (2)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-kdc-nam-long-phu-thuan">
													KDC Nam Long Phú Thuận</a> (2)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-khu-biet-thu-phu-gia">
													Khu biệt thự Phú Gia</a> (1)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-khu-can-ho-an-hoa">
													Khu căn hộ An Hòa</a> (2)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-khu-dan-cu-nam-vien">
													Khu dân cư Nam Viên</a> (3)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-khu-dan-cu-phu-my-cho-lon">
													Khu dân cư Phú Mỹ Chợ Lớn</a> (1)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-khu-nha-pho-hung-gia">
													Khu nhà phố Hưng Gia</a> (1)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-khu-nha-pho-hung-phuoc">
													Khu nhà phố Hưng Phước</a> (1)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-khu-tai-dinh-cu-phu-my-2">
													Khu tái định cư Phú Mỹ 2</a> (1)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-lotus-residence">
													Lotus Residence</a> (1)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-luxury-home">
													Luxury Home</a> (153)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-m-one-nam-sai-gon">
													M-One Nam Sài Gòn</a> (210)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-canh">
													Mỹ Cảnh</a> (1)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-hung">
													Mỹ Hưng</a> (8)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-khang">
													Mỹ Khang</a> (8)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-khanh-1">
													Mỹ Khánh 1</a> (1)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-khanh-2">
													Mỹ Khánh 2</a> (3)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-khanh-3">
													Mỹ Khánh 3</a> (4)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-khanh-4">
													Mỹ Khánh 4</a> (4)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-phat">
													Mỹ Phát</a> (3)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-phu-1">
													Mỹ Phú 1</a> (3)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-phuc">
													Mỹ Phúc</a> (3)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-phuoc">
													Mỹ Phước</a> (6)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-tu-1">
													Mỹ Tú 1</a> (5)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-my-vien">
													Mỹ Viên</a> (3)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nam-khang">
													Nam Khang</a> (12)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nam-phuc-le-jardin">
													Nam Phúc - Le Jardin</a> (20)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-park-view">
													Park View</a> (20)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-river-city">
													River City</a> (254)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-saigon-plaza-tower">
													Saigon Plaza Tower</a> (34)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-scenic-valley">
													Scenic Valley</a> (55)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-scenic-valley-2">
													Scenic Valley 2</a> (7)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-sky-garden-i">
													Sky Garden I</a> (21)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-sky-garden-ii">
													Sky Garden II</a> (20)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-sunrise-city-view">
													Sunrise City View</a> (22)</li>

											<li style="display: none;"><a
												href="http://batdongsan.com.vn/ban-can-ho-chung-cu-tulip-tower">
													Tulip Tower</a> (12)</li>

										</ul>
										<p style="text-align: right;">
											<a href="javascript:void(0)" rel="nofollow" class="show_p"
												style="font-style: italic; text-decoration: underline;">Xem
												thêm»</a>
										</p>

									</div>
									<div class="show3"></div>
								</div>
							</div>
							<div style="clear: both; margin-bottom: 10px;"></div>
							<div class="clear"></div>
							<div class="adPosition"
								positioncode="BANNER_POSITION_RIGHT_MAIN_CONTENT"
								style="margin-bottom: 10px;">
								<div class="adshared">
									<div class="aditem" time="15" style="display: block;"
										src="http://file4.batdongsan.com.vn/2016/06/13/V5fQl2m0/20160613154338-2c1e.jpg"
										altsrc="http://file4.batdongsan.com.vn/2016/06/13/V5fQl2m0/20160613154338-2c1e.jpg"
										link="https://alokiddy.com.vn/" bid="3846" tip="" tp="7"
										w="240" h="150" k="">
										<a href="http://batdongsan.com.vn/click.aspx?bannerid=3846"
											target="_blank" title="" rel="nofollow"><img
											src="./tindang_files/20160613154338-2c1e.jpg"
											style="width: 100%; height: 150px;"></a>
									</div>
								</div>
							</div>
							<div class="clear"></div> <input type="hidden"
							name="ctl00$RightMainContent$_boxKeyword$areaCount"
							id="areaCount"> <input type="hidden"
								name="ctl00$RightMainContent$_boxKeyword$priceCount"
								id="priceCount"> <input type="hidden"
									name="ctl00$RightMainContent$_boxKeyword$roomCount"
									id="roomCount">

										<div id="RightMainContent__boxKeyword_HeaderContainer"
											class="box-header1 checkrun">
											<div align="center" class="name_tit1 new-header">LIÊN
												KẾT NỔI BẬT</div>
										</div>
										<div id="RightMainContent__boxKeyword_bodyContainer"
											class="bor_box checkrun">
											<div id="div_count_product">
												<div id="divCountByAreas">



													<ul>

														<li><a
															href="http://batdongsan.com.vn/ban-nha-rieng-phuong-phu-thuan-3">
																Bán nhà Phường Phú Thuận</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-dat-phuong-tan-phong-9">
																Bán đất Phường Tân Phong</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-nha-rieng-duong-nguyen-van-linh-59">
																Bán nhà Nguyễn Văn Linh</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-nha-rieng-duong-tan-my-59">
																Bán nhà Tân Mỹ</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-nha-rieng-duong-tan-quy-dong-59">
																Bán nhà Tân Quy Đông</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-nha-rieng-duong-43-1-59">
																Bán nhà Đường 43</a></li>

														<li><a
															href="http://batdongsan.com.vn/cho-thue-nha-mat-pho-duong-le-van-luong-59">
																Cho thuê nhà mặt tiền Lê Văn Lương</a></li>

														<li><a
															href="http://batdongsan.com.vn/cho-thue-nha-mat-pho-duong-tan-quy-dong-59">
																Cho thuê nhà mặt tiền Tân Quy Đông</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-nha-mat-pho-duong-79-1-59">
																Bán nhà mặt tiền 79</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-nha-mat-pho-duong-36-59">
																Bán nhà mặt tiền 36</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-nha-mat-pho-duong-53-59">
																Bán nhà mặt tiền 53</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-nha-mat-pho-duong-2-59">
																Bán nhà mặt tiền 2</a></li>

														<li><a
															href="http://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-le-van-luong-59">
																Cho thuê cửa hàng Lê Văn Lương</a></li>

														<li><a
															href="http://batdongsan.com.vn/cho-thue-cua-hang-ki-ot-duong-ton-dat-tien-59">
																Cho thuê cửa hàng Tôn Dật Tiên</a></li>

														<li><a
															href="http://batdongsan.com.vn/nha-dat-ban-hai-phong">
																Nhà đất Hải Phòng</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-can-ho-chung-cu-river-gate">
																Chung cư River Gate</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-can-ho-chung-cu-sai-gon-mia">
																Căn hộ Sài Gòn Mia</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-can-ho-chung-cu-9-view-apartment">
																Căn hộ 9 View Apartment</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-can-ho-chung-cu-hung-phat-golden-star">
																Căn hộ Hưng Phát Golden Star</a></li>

														<li><a
															href="http://batdongsan.com.vn/ban-can-ho-chung-cu-moonlight-garden">
																Căn hộ Moonlight Garden</a></li>

													</ul>

												</div>
												<div class="show3"></div>
											</div>
										</div>
										<div style="clear: both; margin-bottom: 10px;"></div>

										<div class="clear"></div>
										<div class="container-default">
											<div>

												<div class="box-bg-right">
													<ul>
														<li><a
															href="http://batdongsan.com.vn/phong-thuy-theo-tuoi/phong-thuy-theo-tuoi-ft0"
															onclick="SetType(&#39;2&#39;)"
															style="white-space: nowrap; font-size: 11.5px;"> <img
																alt="Xem phong thủy theo tuổi"
																src="./tindang_files/batquai.png" width="24px">XEM
																	PHONG THỦY THEO TUỔI </a></li>
														<li><a id="ctl46_ctl01_LinkButton1"
															href="http://batdongsan.com.vn/phong-thuy-theo-tuoi/phong-thuy-theo-tuoi-ft0#cost"
															onclick="SetType(&#39;3&#39;)"> <img
																alt="Tính lãi suất" src="./tindang_files/Info.png">TÍNH
																	LÃI SUẤT </a></li>
													</ul>
												</div>
											</div>
										</div>
										<div class="container-default">
											<div>


												<div class="enterprise-rightContent">
													<div class="rc11">
														<div class="title-style">
															<span id="RightMainContent__brokerByProduct_lblTitle">Các
																nhà môi giới Bán căn hộ chung cư khu vực Quận 7, Hồ Chí
																Minh</span>
														</div>
													</div>
													<div class="rc12">
														<div id="dntb"
															style="visibility: visible; overflow: hidden; position: relative; z-index: 2; left: 0px; width: 699px;">

															<ul
																style="margin: 0px; padding: 0px; position: relative; list-style-type: none; z-index: 1; width: 3961px; left: -3241.31px;">
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-3/nguyen-thi-nguyet-anh-ib447855"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160616140503-9df9.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-3/nguyen-thi-nguyet-anh-ib447855">Nguyễn
																				Thị Nguyệt Ánh</a> <br> 0904615519<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/nguyen-thi-huong-dung-ib383917"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.1455.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/nguyen-thi-huong-dung-ib383917">Nguyễn
																				Thị Hương Dung</a> <br> 0916020270<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-chanh/vo-thai-minh-ib379119"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20151119154220-7036.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-chanh/vo-thai-minh-ib379119">Võ
																				Thái Minh</a> <br> 0911473007<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/nguyen-tuan-du-ib242009"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.451101.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/nguyen-tuan-du-ib242009">Nguyễn
																				Tuấn Dủ</a> <br> 0909213286<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/pham-xuan-long-ib382242"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20151130103331-cc90.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/pham-xuan-long-ib382242">Phạm
																				Xuân Long</a> <br> 0905309855<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/-ib463842"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160729101406-9eec.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/-ib463842">Bành
																				Thị Hồng Phượng</a> <br> 0908630709<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/huynh-nguyen-phuc-ib233263"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160617184540-fbdb.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/huynh-nguyen-phuc-ib233263">Huỳnh
																				Nguyễn Phúc</a> <br> 0987320326<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-hai-chau-ddn/nguyen-viet-trung-ib189814"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.261161.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-hai-chau-ddn/nguyen-viet-trung-ib189814">Nguyễn
																				Việt Trung</a> <br> 0906751182<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/-ib219839"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160601093815-48d7.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/-ib219839">richmovic214@gmail.com</a>
																			<br> 0932758630<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/ms-duong-kim-lien-ib257807"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160519090454-aeb1.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/ms-duong-kim-lien-ib257807">Ms.
																				Dương Kim Liên</a> <br> 0934423639<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-ba-eb2171"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160720143644-09fd.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-ba-eb2171">Công
																				Ty Bất Động Sản Asreal</a> <br> 0918331238<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/san-giao-d-eb2156"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160802141051-0883.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/san-giao-d-eb2156">Sàn
																				giao dịch BĐS Thanh Bình Land</a> <br> <br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-11/cong-ty-co-eb2147"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160518160054-b737.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-11/cong-ty-co-eb2147">Công
																				ty cổ phần đầu tư kinh doanh địa ốc Cường Thịnh</a> <br>
																				0909666821<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-cp-eb2016"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20150804141318-b5c1.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-cp-eb2016">Công
																				ty CP ĐT Bất Động Sản Rio Land</a> <br> <br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-tn-eb2010"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20150730095210-35a7.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-tn-eb2010">Công
																				ty TNHH TM DV Môi Giới BĐS Nam Sài Gòn</a> <br>
																				0911705678<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/southern-h-eb2161"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160708173022-7b7b.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/southern-h-eb2161">Southern
																				Homes Việt Nam</a> <br> 0906968377<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nha-be/cong-ty-co-eb2127"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160402084734-e47b.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nha-be/cong-ty-co-eb2127">Công
																				Ty Cổ Phần Dịch Vụ Bất Động Sản BB</a> <br>
																				0932822328<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-cp-eb2092"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160120160407-e67d.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-cp-eb2092">CÔNG
																				TY CP TM DV BẤT ĐỘNG SẢN ĐẤT TIÊN</a> <br>
																				0916600649<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-tn-eb2041"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20151029143954-e0b7.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-tn-eb2041">Công
																				ty TNHH Việt Nam International services (VIS)</a> <br>
																				0961000027<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-co-eb2020"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20150808115756-936c.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-co-eb2020">Công
																				ty Cổ Phần Dịch Vụ BĐS Danh Khôi - DKRS</a> <br> <br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/dia-oc-him-eb1218"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.325591.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/dia-oc-him-eb1218">Địa
																				Ốc Him Lam</a> <br> 0907888918<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-tn-eb1939"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.503895.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-tn-eb1939">Công
																				ty TNHH Dịch vụ Bất động sản Tân Hưng</a> <br>
																				0908555888<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-tan-binh/cong-ty-co-eb1152"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20150515133734-e247.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-tan-binh/cong-ty-co-eb1152">Công
																				ty Cổ Phần Địa Ốc Thắng Lợi</a> <br> 0918835875<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-8/cong-ty-co-eb1071"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.2431.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-8/cong-ty-co-eb1071">Công
																				ty cổ phần thương mại địa ốc Điền Phát</a> <br>
																				0939969969<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-4/cong-ty-tn-eb1070"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.2430.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-4/cong-ty-tn-eb1070">Công
																				ty TNHH Dịch vụ Bất Động Sản Việt Long</a> <br>
																				0907339666<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-cp-eb809"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.2169.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-cp-eb809">Công
																				ty CP Giao dịch Bất động sản Quốc Tế INTEREAL</a> <br>
																				<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-4/cong-ty-co-eb2111"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160314165702-49e8.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-4/cong-ty-co-eb2111">Công
																				ty cổ phần Nhà Sum</a> <br> 0903357008<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-3/cong-ty-st-eb2094"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160122113310-73ee.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-3/cong-ty-st-eb2094">Công
																				ty Standard Real</a> <br> <br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/cong-ty-tn-eb1256"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.340949.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/cong-ty-tn-eb1256">Công
																				ty TNHH TM-DV Đầu Tư Thiên Tín</a> <br> 0938870016<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-co-eb1020"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.2380.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-co-eb1020">Công
																				ty Cổ Phần Sàn Giao Dịch Bất Động Sản Bến Thành</a> <br>
																				0903867082<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-9/cong-ty-tn-eb852"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.2212.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-9/cong-ty-tn-eb852">Công
																				ty TNHH Thương mại Phú Duy</a> <br> 0909491808<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/nguyen-dien-canh-ib471563"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160818175618-6227.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/nguyen-dien-canh-ib471563">Nguyễn
																				Diên Cảnh</a> <br> 0909082287<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/bui-nhu-ngoc-ib387822"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160412103038-e60f.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/bui-nhu-ngoc-ib387822">Bùi
																				Như Ngọc</a> <br> 0906968363<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-2/lan-quyen-ib155414"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.261162.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-2/lan-quyen-ib155414">Lan
																				Quyên</a> <br> 0902657699<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-phu-nhuan/tuyet-nhung-ib169110"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.261162.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-phu-nhuan/tuyet-nhung-ib169110">Lê
																				Thị Tuyết Nhung</a> <br> 0915959487<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nha-be/-ib124699"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.261162.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nha-be/-ib124699">Võ
																				Thanh Thơ</a> <br> 0946587373<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nha-be/nguyen-thanh-tron-ib272280"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.499457.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nha-be/nguyen-thanh-tron-ib272280">Nguyễn
																				Thành Trơn</a> <br> 0909227199<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/nguyen-tan-luc-ib237200"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.444676.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/nguyen-tan-luc-ib237200">Nguyễn
																				Tấn Lực</a> <br> 0903189091<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/hi%E1%BB%81n-ib112786"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.265554.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/hi%E1%BB%81n-ib112786">Lê
																				Thị Hiền</a> <br> 0902886488<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-2/vothanhhung-ib103452"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.254520.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-2/vothanhhung-ib103452">Võ
																				Thanh Hùng</a> <br> 0907006123<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-3/nguyen-thi-nguyet-anh-ib447855"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160616140503-9df9.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-3/nguyen-thi-nguyet-anh-ib447855">Nguyễn
																				Thị Nguyệt Ánh</a> <br> 0904615519<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/nguyen-thi-huong-dung-ib383917"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.1455.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/nguyen-thi-huong-dung-ib383917">Nguyễn
																				Thị Hương Dung</a> <br> 0916020270<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-chanh/vo-thai-minh-ib379119"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20151119154220-7036.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-chanh/vo-thai-minh-ib379119">Võ
																				Thái Minh</a> <br> 0911473007<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/nguyen-tuan-du-ib242009"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.451101.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/nguyen-tuan-du-ib242009">Nguyễn
																				Tuấn Dủ</a> <br> 0909213286<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/pham-xuan-long-ib382242"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20151130103331-cc90.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/pham-xuan-long-ib382242">Phạm
																				Xuân Long</a> <br> 0905309855<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/-ib463842"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160729101406-9eec.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/-ib463842">Bành
																				Thị Hồng Phượng</a> <br> 0908630709<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/huynh-nguyen-phuc-ib233263"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160617184540-fbdb.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/huynh-nguyen-phuc-ib233263">Huỳnh
																				Nguyễn Phúc</a> <br> 0987320326<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-hai-chau-ddn/nguyen-viet-trung-ib189814"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.261161.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-hai-chau-ddn/nguyen-viet-trung-ib189814">Nguyễn
																				Việt Trung</a> <br> 0906751182<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/-ib219839"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160601093815-48d7.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/-ib219839">richmovic214@gmail.com</a>
																			<br> 0932758630<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/ms-duong-kim-lien-ib257807"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160519090454-aeb1.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/ms-duong-kim-lien-ib257807">Ms.
																				Dương Kim Liên</a> <br> 0934423639<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-ba-eb2171"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160720143644-09fd.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-ba-eb2171">Công
																				Ty Bất Động Sản Asreal</a> <br> 0918331238<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/san-giao-d-eb2156"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160802141051-0883.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/san-giao-d-eb2156">Sàn
																				giao dịch BĐS Thanh Bình Land</a> <br> <br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-11/cong-ty-co-eb2147"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160518160054-b737.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-11/cong-ty-co-eb2147">Công
																				ty cổ phần đầu tư kinh doanh địa ốc Cường Thịnh</a> <br>
																				0909666821<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-cp-eb2016"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20150804141318-b5c1.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-cp-eb2016">Công
																				ty CP ĐT Bất Động Sản Rio Land</a> <br> <br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-tn-eb2010"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20150730095210-35a7.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-tn-eb2010">Công
																				ty TNHH TM DV Môi Giới BĐS Nam Sài Gòn</a> <br>
																				0911705678<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/southern-h-eb2161"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160708173022-7b7b.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/southern-h-eb2161">Southern
																				Homes Việt Nam</a> <br> 0906968377<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nha-be/cong-ty-co-eb2127"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160402084734-e47b.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nha-be/cong-ty-co-eb2127">Công
																				Ty Cổ Phần Dịch Vụ Bất Động Sản BB</a> <br>
																				0932822328<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-cp-eb2092"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160120160407-e67d.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-cp-eb2092">CÔNG
																				TY CP TM DV BẤT ĐỘNG SẢN ĐẤT TIÊN</a> <br>
																				0916600649<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-tn-eb2041"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20151029143954-e0b7.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-tn-eb2041">Công
																				ty TNHH Việt Nam International services (VIS)</a> <br>
																				0961000027<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-co-eb2020"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20150808115756-936c.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-co-eb2020">Công
																				ty Cổ Phần Dịch Vụ BĐS Danh Khôi - DKRS</a> <br> <br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/dia-oc-him-eb1218"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.325591.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/dia-oc-him-eb1218">Địa
																				Ốc Him Lam</a> <br> 0907888918<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-tn-eb1939"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.503895.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-tn-eb1939">Công
																				ty TNHH Dịch vụ Bất động sản Tân Hưng</a> <br>
																				0908555888<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-tan-binh/cong-ty-co-eb1152"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20150515133734-e247.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-tan-binh/cong-ty-co-eb1152">Công
																				ty Cổ Phần Địa Ốc Thắng Lợi</a> <br> 0918835875<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-8/cong-ty-co-eb1071"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.2431.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-8/cong-ty-co-eb1071">Công
																				ty cổ phần thương mại địa ốc Điền Phát</a> <br>
																				0939969969<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-4/cong-ty-tn-eb1070"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.2430.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-4/cong-ty-tn-eb1070">Công
																				ty TNHH Dịch vụ Bất Động Sản Việt Long</a> <br>
																				0907339666<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-cp-eb809"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.2169.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/cong-ty-cp-eb809">Công
																				ty CP Giao dịch Bất động sản Quốc Tế INTEREAL</a> <br>
																				<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-4/cong-ty-co-eb2111"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160314165702-49e8.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-4/cong-ty-co-eb2111">Công
																				ty cổ phần Nhà Sum</a> <br> 0903357008<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-3/cong-ty-st-eb2094"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160122113310-73ee.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-3/cong-ty-st-eb2094">Công
																				ty Standard Real</a> <br> <br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/cong-ty-tn-eb1256"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.340949.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/cong-ty-tn-eb1256">Công
																				ty TNHH TM-DV Đầu Tư Thiên Tín</a> <br> 0938870016<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-co-eb1020"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.2380.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/cong-ty-co-eb1020">Công
																				ty Cổ Phần Sàn Giao Dịch Bất Động Sản Bến Thành</a> <br>
																				0903867082<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-9/cong-ty-tn-eb852"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.2212.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-9/cong-ty-tn-eb852">Công
																				ty TNHH Thương mại Phú Duy</a> <br> 0909491808<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/nguyen-dien-canh-ib471563"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160818175618-6227.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/nguyen-dien-canh-ib471563">Nguyễn
																				Diên Cảnh</a> <br> 0909082287<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/bui-nhu-ngoc-ib387822"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160412103038-e60f.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/bui-nhu-ngoc-ib387822">Bùi
																				Như Ngọc</a> <br> 0906968363<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-2/lan-quyen-ib155414"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.261162.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-2/lan-quyen-ib155414">Lan
																				Quyên</a> <br> 0902657699<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-phu-nhuan/tuyet-nhung-ib169110"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.261162.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-phu-nhuan/tuyet-nhung-ib169110">Lê
																				Thị Tuyết Nhung</a> <br> 0915959487<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nha-be/-ib124699"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.261162.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nha-be/-ib124699">Võ
																				Thanh Thơ</a> <br> 0946587373<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nha-be/nguyen-thanh-tron-ib272280"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.499457.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-nha-be/nguyen-thanh-tron-ib272280">Nguyễn
																				Thành Trơn</a> <br> 0909227199<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/nguyen-tan-luc-ib237200"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.444676.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-thanh/nguyen-tan-luc-ib237200">Nguyễn
																				Tấn Lực</a> <br> 0903189091<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/hi%E1%BB%81n-ib112786"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.265554.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/hi%E1%BB%81n-ib112786">Lê
																				Thị Hiền</a> <br> 0902886488<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-2/vothanhhung-ib103452"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.254520.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-2/vothanhhung-ib103452">Võ
																				Thanh Hùng</a> <br> 0907006123<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
																<li
																	style="overflow: hidden; float: left; width: 233px; height: 535px;"><div
																		class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-3/nguyen-thi-nguyet-anh-ib447855"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20160616140503-9df9.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-3/nguyen-thi-nguyet-anh-ib447855">Nguyễn
																				Thị Nguyệt Ánh</a> <br> 0904615519<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/nguyen-thi-huong-dung-ib383917"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.1455.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-1/nguyen-thi-huong-dung-ib383917">Nguyễn
																				Thị Hương Dung</a> <br> 0916020270<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-chanh/vo-thai-minh-ib379119"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20151119154220-7036.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-binh-chanh/vo-thai-minh-ib379119">Võ
																				Thái Minh</a> <br> 0911473007<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/nguyen-tuan-du-ib242009"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/thumb80x80.451101.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/nguyen-tuan-du-ib242009">Nguyễn
																				Tuấn Dủ</a> <br> 0909213286<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div>
																	<div class="broker-view">
																		<div class="broker-ava">
																			<a
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/pham-xuan-long-ib382242"
																				rel="nofollow"> <img class="img"
																				src="./tindang_files/20151130103331-cc90.jpg"></a>
																		</div>
																		<div
																			style="line-height: 20px; float: right; width: 140px;">
																			<a style="font-size: 12px; text-decoration: none;"
																				class="colorboldblue" rel="nofollow"
																				href="http://batdongsan.com.vn/ban-can-ho-chung-cu-quan-7/pham-xuan-long-ib382242">Phạm
																				Xuân Long</a> <br> 0905309855<br>
																		</div>
																		<div style="clear: both;"></div>
																	</div></li>
															</ul>
															<a id="RightMainContent__brokerByProduct_hplToSearch"
																class="viewmore normalblue"
																href="http://batdongsan.com.vn/moi-gioi-ban-can-ho-chung-cu-quan-7">Xem
																thêm nhà môi giới khác</a>
														</div>
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

												<script type="text/javascript">
    $(function () {
        var divs = $("#dntb > div");
        if (divs.length > 5) {
            for (var i = 0; i < divs.length; i += 5) {
                divs.slice(i, i + 5).wrapAll("<li></li>");
            }
            $("#dntb > li").wrapAll("<ul></ul>");
        }
    });
    $(document).ready(function () {
        var divs = $("#dntb > ul > li > div");
        if (divs.length > 5) {
            $("#dntb").jCarouselLite({
                scroll: -1,
                visibile: 1,
                auto: 5000,
                speed: 1500,
                hoverPause: false,
                vertical: false
            });
        }
    });
</script>
											</div>
										</div>
										<div class="container-default">
											<div>
												<div id="RightMainContent__boxlinkBanxehoi_panel0">
													<div align="center" class="name_tit1 new-header">Bạn
														quan tâm tới xe hơi?</div>
													<div class="list bor_box">
														<ul>
															<li><a href="http://banxehoi.com/xe-toyota-yaris"
																target="_blank" title="Xe Toyota Yaris">Toyota Yaris</a></li>
															<li><a
																href="http://banxehoi.com/xe-toyota-innova-nam-2008"
																target="_blank" title="Xe Toyota Innova 2008">Toyota
																	Innova 2008</a></li>
															<li><a href="http://banxehoi.com/xe-ford-focus"
																target="_blank" title="Xe Ford Focus">Ford Focus</a></li>
															<li><a href="http://banxehoi.com/xe-kia-carens"
																target="_blank" title="Xe Kia Carens">Kia Carens</a></li>
															<li><a
																href="http://banxehoi.com/xe-hyundai-i20-active"
																target="_blank" title="Bán xe Hyundai i20 Active">Xe
																	i20 Active</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>

										<div id="bannerfix">
											<div class="adPosition" positioncode="BANNER_POSITION_FIX"
												style="position: fixed; bottom: 0px; right: 0px; z-index: 100;"></div>
										</div>
										<div class="clear"></div>
			</div>