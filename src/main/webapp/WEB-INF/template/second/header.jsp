<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="header">
	<div class="container">
		<div class="logo">
			<a href="#"><img
				src="<c:url value="/resources/images/logo3.png" />" alt=""
				class="img-responsive" /></a>
		</div>
		<div class="social-icons">
			<ul>
				<li><a href="#"><span class="pic1"></span></a></li>
				<li><a href="#"><span class="pic2"></span></a></li>
				<li><a href="#"><span class="pic3"></span></a></li>
				<li><a href="#"><span class="pic4"></span></a></li>
			</ul>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="container">
	<div id="search-widget-wrapper">
		<div id="search-widget" class="collapse in">
			<div class="search-form container2">
				<div class="bg-blue">
					<form name="search" id="frm_block_quick_search"
						onsubmit="return submitBlockSearchForm()" method="get">
						<div class="row">
							<div class="col-sm-8">
								<label class="hidden-xs text-white">Tìm việc làm...</label> <input
									class="form-control search-all" type="text" tabindex="101"
									name="keyword" autocomplete="off" id="keywordMainSearch"
									value=""
									placeholder="Nhập Chức Danh, Vị Trí Công Việc, Kỹ Năng Liên Quan...">
							</div>
							<div class="col-sm-4">
								<label class="hidden-xs text-white">Tại Việt Nam</label>
								<select class="form-control">
									<option value="Ho Chi Minh" selected>Hồ Chí Minh</option>
									<option value="Ha Noi">Hà Nội</option>
									<option value="An Giang">An Giang</option>
									<option value="Bac Lieu">Bạc Liêu</option>
									<option value="Ba Ria Vung Tau">Bà Rịa Vũng Tàu</option>
									<option value="Bac Can">Bắc Cạn</option>
									<option value="Bac Giang">Bắc Giang</option>
									<option value="Bac Ninh">Bắc Ninh</option>
								</select>
							</div>
						</div>
						<!-- Search button -->
						<div class="row btn_search_middle">
							<div class="col-xs-5 col-sm-3 push-top-xs">
								<button class="btn-search btn btn-primary" type="button"
									onclick="return searchPremiumJob(0);" tabindex="106">
									<span><strong>Tìm ngay!</strong></span>
								</button>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>