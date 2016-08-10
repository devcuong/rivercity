<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tiles:insertDefinition name="trangconraovatTemplate">
	<tiles:putAttribute name="body">
		<div class="container-default">
			<div>
				<div class="loginerror"></div>
				<div style="margin-top: 10px;">
					<div class="dangnhap">
						<div class="dangnhap-content">
							<div class="dangnhap-header">
								<img src="../file4.batdongsan.com.vn/images/dangnhap.jpg"
									alt="Đăng nhập">&nbsp; Đăng nhập
							</div>
							<div class="dangnhap-content-1">
								<div style="background-color: white">
									<div class="dangnhap-content-1-left" style="position: relative">
										<div class="dangnhap-content-1-left-row">
											Tên đăng nhập hoặc email (<span>*</span>)
										</div>
										<div class="dangnhap-content-1-left-row">
											<input name="ctl00$MainContent$_login$LoginUser$UserName"
												type="text" id="MainContent__login_LoginUser_UserName"
												class="textEntry"> <span
												id="MainContent__login_LoginUser_UserNameRequired"
												title="User Name is required." class="failureNotification"
												style="display: none;">* Tài khoản không được để
												trống</span>
										</div>
										<div class="dangnhap-content-1-left-row">
											Mật khẩu(<span>*</span>)
										</div>
										<div class="dangnhap-content-1-left-row">
											<input name="ctl00$MainContent$_login$LoginUser$Password"
												type="password" id="MainContent__login_LoginUser_Password"
												class="textEntry"> <span
												id="MainContent__login_LoginUser_PasswordRequired"
												title="Password is required." class="failureNotification"
												style="display: none;">* Password không được để trống</span>
										</div>
										<div class="dangnhap-content-1-left-row">
											<div class="dangnhap-content-1-left-row-checbox">
												<input id="MainContent__login_LoginUser_RememberMe"
													type="checkbox"
													name="ctl00$MainContent$_login$LoginUser$RememberMe">
											</div>
											<div class="dangnhap-content-1-left-row-text">
												<label for="MainContent__login_LoginUser_RememberMe"
													id="MainContent__login_LoginUser_RememberMeLabel"
													class="inline">Nhớ tài khoản</label>
											</div>
											<div class="clear"></div>
										</div>
										<div class="dangnhap-content-bottom">
											<span> <input type="submit"
												name="ctl00$MainContent$_login$LoginUser$LoginButton"
												value="Đăng Nhập"
												onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$_login$LoginUser$LoginButton&quot;, &quot;&quot;, true, &quot;LoginUserValidationGroup&quot;, &quot;&quot;, false, false))"
												id="MainContent__login_LoginUser_LoginButton"
												class="button-login">
											</span><span><a href="lay-lai-mat-khau.html"
												style="text-decoration: underline;">Quên mật khẩu?</a></span>
										</div>
										<div class="dangnhap-content-end" style="margin: 10px">
											<img src="../file4.batdongsan.com.vn/images/new.gif"> <span>Đăng
												nhập bằng tài khoản</span> <a href="#" style="cursor: default">
												<img
												src="../file4.batdongsan.com.vn/images/Home/images/dangnhap-icon1.jpg">
											</a> <span> <a id="MainContent__login_LoginUser_lkGmail"
												href="javascript:__doPostBack('ctl00$MainContent$_login$LoginUser$lkGmail','')">Gmail</a>
												hoặc
											</span> <a href="#" style="cursor: default"> <img
												src="../file4.batdongsan.com.vn/images/Home/images/dangnhap-icon2.jpg"></a>
											<span> <a id="MainContent__login_LoginUser_lkYahoo"
												href="javascript:__doPostBack('ctl00$MainContent$_login$LoginUser$lkYahoo','')">Yahoo</a></span>
										</div>
									</div>
									<div class="dangnhap-content-1-right">
										<div class="dangnhap-content-1-right-top colorblue">Nếu
											bạn chưa có tài khoản tại BATDONGSAN.COM.VN</div>
										<div class="dangnhap-content-1-right-nut" align="center">
											<a id="MainContent__login_LoginUser_lnkReg" class="linkReg"
												href="dang-ky-nguoi-dung.html"> Đăng ký</a>
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>
					</div>
					<div style="margin-top: 10px;">
						Nếu gặp bất kỳ khó khăn gì trong việc đăng ký, đăng nhập, đăng tin
						hay trong việc sử dụng website nói chung, Quý vị hãy liên hệ ngay
						với chúng tôi theo số đt: <strong> 0936.365.158</strong> hoặc
						email: <a href="mailto:hotro@batdongsan.com.vn"><strong>hotro@batdongsan.com.vn</strong></a>
						để được trợ giúp
					</div>
				</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>