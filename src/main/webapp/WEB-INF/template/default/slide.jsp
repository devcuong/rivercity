<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<div id="g1-precontent" class="g1-precontent">
	<figure id="g1-primary-slider">
		<div id="rev_slider_3_1_wrapper"
			class="rev_slider_wrapper fullwidthbanner-container"
			style="margin: 0px auto; background-color: #E9E9E9; padding: 0px; margin-top: 0px; margin-bottom: 0px; max-height: 440px;">
			<!-- START REVOLUTION SLIDER 4.6.92 fullwidth mode -->
			<div id="rev_slider_3_1" class="rev_slider fullwidthabanner"
				style="display: none; max-height: 440px; height: 440px;">
				<ul>
					<!-- SLIDE  -->
					<li data-transition="random" data-slotamount="7"
						data-saveperformance="off">
						<!-- MAIN IMAGE --> <img
						src="http://quangcaohieuqua.net/wp-content/uploads/2016/03/quang-cao-facebook.png"
						alt="quang-cao-facebook" data-bgposition="center top"
						data-bgfit="cover" data-bgrepeat="no-repeat"> <!-- LAYERS -->
					</li>
					<!-- SLIDE  -->
					<li data-transition="random" data-slotamount="7"
						data-saveperformance="off">
						<!-- MAIN IMAGE --> <img
						src="http://quangcaohieuqua.net/wp-content/uploads/2016/03/quang-cao-google-adwords.png"
						alt="quang-cao-google-adwords" data-bgposition="center top"
						data-bgfit="cover" data-bgrepeat="no-repeat"> <!-- LAYERS -->
					</li>
					<!-- SLIDE  -->
					<li data-transition="random" data-slotamount="7"
						data-saveperformance="off">
						<!-- MAIN IMAGE --> <img
						src="http://quangcaohieuqua.net/wp-content/uploads/2016/03/thiet-ke-website.png"
						alt="thiet-ke-website" data-bgposition="center top"
						data-bgfit="cover" data-bgrepeat="no-repeat"> <!-- LAYERS -->
					</li>
					<!-- SLIDE  -->
					<li data-transition="random" data-slotamount="7"
						data-saveperformance="off">
						<!-- MAIN IMAGE --> <img
						src="http://quangcaohieuqua.net/wp-content/uploads/2016/03/dich-vu-seo-tu-khoa.png"
						alt="dich-vu-seo-tu-khoa" data-bgposition="center top"
						data-bgfit="cover" data-bgrepeat="no-repeat"> <!-- LAYERS -->
					</li>
				</ul>
				<div class="tp-bannertimer"></div>
			</div>


			<style scoped></style>

			<script type="text/javascript">
				/******************************************
					-	PREPARE PLACEHOLDER FOR SLIDER	-
				 ******************************************/

				var setREVStartSize = function() {
					var tpopt = new Object();
					tpopt.startwidth = 960;
					tpopt.startheight = 440;
					tpopt.container = jQuery('#rev_slider_3_1');
					tpopt.fullScreen = "off";
					tpopt.forceFullWidth = "off";

					tpopt.container.closest(".rev_slider_wrapper").css({
						height : tpopt.container.height()
					});
					tpopt.width = parseInt(tpopt.container.width(), 0);
					tpopt.height = parseInt(tpopt.container.height(), 0);
					tpopt.bw = tpopt.width / tpopt.startwidth;
					tpopt.bh = tpopt.height / tpopt.startheight;
					if (tpopt.bh > tpopt.bw)
						tpopt.bh = tpopt.bw;
					if (tpopt.bh < tpopt.bw)
						tpopt.bw = tpopt.bh;
					if (tpopt.bw < tpopt.bh)
						tpopt.bh = tpopt.bw;
					if (tpopt.bh > 1) {
						tpopt.bw = 1;
						tpopt.bh = 1
					}
					if (tpopt.bw > 1) {
						tpopt.bw = 1;
						tpopt.bh = 1
					}
					tpopt.height = Math.round(tpopt.startheight
							* (tpopt.width / tpopt.startwidth));
					if (tpopt.height > tpopt.startheight
							&& tpopt.autoHeight != "on")
						tpopt.height = tpopt.startheight;
					if (tpopt.fullScreen == "on") {
						tpopt.height = tpopt.bw * tpopt.startheight;
						var cow = tpopt.container.parent().width();
						var coh = jQuery(window).height();
						if (tpopt.fullScreenOffsetContainer != undefined) {
							try {
								var offcontainers = tpopt.fullScreenOffsetContainer
										.split(",");
								jQuery.each(offcontainers, function(e, t) {
									coh = coh - jQuery(t).outerHeight(true);
									if (coh < tpopt.minFullScreenHeight)
										coh = tpopt.minFullScreenHeight
								})
							} catch (e) {
							}
						}
						tpopt.container.parent().height(coh);
						tpopt.container.height(coh);
						tpopt.container.closest(".rev_slider_wrapper").height(
								coh);
						tpopt.container.closest(
								".forcefullwidth_wrapper_tp_banner").find(
								".tp-fullwidth-forcer").height(coh);
						tpopt.container.css({
							height : "100%"
						});
						tpopt.height = coh;
					} else {
						tpopt.container.height(tpopt.height);
						tpopt.container.closest(".rev_slider_wrapper").height(
								tpopt.height);
						tpopt.container.closest(
								".forcefullwidth_wrapper_tp_banner").find(
								".tp-fullwidth-forcer").height(tpopt.height);
					}
				};

				/* CALL PLACEHOLDER */
				setREVStartSize();
				var tpj = jQuery;
				tpj.noConflict();
				var revapi3;

				tpj(document).ready(function() {

					if (tpj('#rev_slider_3_1').revolution == undefined) {
						revslider_showDoubleJqueryError('#rev_slider_3_1');
					} else {
						revapi3 = tpj('#rev_slider_3_1').show().revolution({
							dottedOverlay : "none",
							delay : 9000,
							startwidth : 960,
							startheight : 440,
							hideThumbs : 200,

							thumbWidth : 100,
							thumbHeight : 50,
							thumbAmount : 4,

							simplifyAll : "off",

							navigationType : "bullet",
							navigationArrows : "solo",
							navigationStyle : "round",

							touchenabled : "on",
							onHoverStop : "on",
							nextSlideOnWindowFocus : "off",

							swipe_threshold : 75,
							swipe_min_touches : 1,
							drag_block_vertical : false,

							keyboardNavigation : "off",

							navigationHAlign : "center",
							navigationVAlign : "bottom",
							navigationHOffset : 0,
							navigationVOffset : 20,

							soloArrowLeftHalign : "left",
							soloArrowLeftValign : "center",
							soloArrowLeftHOffset : 20,
							soloArrowLeftVOffset : 0,

							soloArrowRightHalign : "right",
							soloArrowRightValign : "center",
							soloArrowRightHOffset : 20,
							soloArrowRightVOffset : 0,

							shadow : 0,
							fullWidth : "on",
							fullScreen : "off",

							spinner : "spinner0",

							stopLoop : "off",
							stopAfterLoops : -1,
							stopAtSlide : -1,

							shuffle : "off",

							autoHeight : "off",
							forceFullWidth : "off",

							hideThumbsOnMobile : "off",
							hideNavDelayOnMobile : 1500,
							hideBulletsOnMobile : "off",
							hideArrowsOnMobile : "off",
							hideThumbsUnderResolution : 0,

							hideSliderAtLimit : 0,
							hideCaptionAtLimit : 0,
							hideAllCaptionAtLilmit : 0,
							startWithSlide : 0
						});

					}
				}); /*ready*/
			</script>
		</div>
		<!-- END REVOLUTION SLIDER -->
	</figure>
	<div id="g1-precontent-shortcode" class="g1-layout-inner">
		<ul class="g1-grid">
			<li class="g1-column g1-two-third g1-valign-middle">
				<h2>QUẢNG CÁO TRỰC TUYẾN CHUYÊN NGHIỆP</h2>
			</li>

			<li class="g1-column g1-one-third g1-valign-middle"><a
				id="g1-button-1"
				class="g1-button g1-button--big g1-button--simple g1-button--wide"
				href="http://quangcaohieuqua.net/lien-he/">Hotline: 090 6262 865
			</a></li>

		</ul>
	</div>
	<div class="g1-background"></div>
</div>