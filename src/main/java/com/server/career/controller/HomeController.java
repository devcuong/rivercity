package com.server.career.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.server.career.bean.ImageSlideBean;
import com.server.career.bean.InformationInvestorBean;
import com.server.career.bean.InformationNormalBean;
import com.server.career.bean.InformationSpecialBean;
import com.server.career.service.ImageSlideService;
import com.server.career.service.InformationNormalService;
import com.server.career.service.InformationSpecialService;
import com.server.career.service.InvestorService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private ImageSlideService imageSlideService;
	
	@Autowired
	private InformationNormalService informationNormalService;
	
	@Autowired
	private InformationSpecialService informationSpecialService;

	@Autowired
	private InvestorService investorService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Map<String, Object> model, HttpServletRequest request) {
		/* String requestURI = request.getServerName(); */
		List<ImageSlideBean> imageSlideBeans = imageSlideService.getAllImageSlide();
		model.put("slide", imageSlideBeans);
		return "home";
	}

	@RequestMapping(value = { "/{urlPage}" }, method = RequestMethod.GET)
	public String page(@PathVariable("urlPage") String urlPage,
			Map<String, Object> model, HttpServletRequest request) {
		if (urlPage != null) {
			String[] nameArray = urlPage.split("\\.");
			String pageName = nameArray[0].toString();
			if ("gioi-thieu".equals(pageName)) {
				List<InformationNormalBean> informationNormalBeans = informationNormalService.getAllInformationNormal();
				List<InformationSpecialBean> informationSpecialBeans = informationSpecialService.getAllInformationSpecial();
				List<InformationInvestorBean> allInformationInvestorBean = new ArrayList<InformationInvestorBean>();
				for(int i = 0; i< informationSpecialBeans.size();i++){
					List<InformationInvestorBean> informationInvestorBean = investorService.getInvestorByInformationSpecialId(informationSpecialBeans.get(i).getInforId());
					allInformationInvestorBean.addAll(informationInvestorBean);
					allInformationInvestorBean.removeAll(Collections.singleton(null));
				}
				model.put("informationNormal", informationNormalBeans);
				model.put("informationSpecial", informationSpecialBeans);
				model.put("informationInvestor", allInformationInvestorBean);
				return "gioithieu";
			}
			if ("vi-tri".equals(pageName)) {
				return "vitri";
			}
			if("tien-ich".equals(pageName)){
				return "tienich";
			}
			if("thong-tin-can-ho".equals(pageName)){
				return "thongtincanho";
			}
			if("thu-vien".equals(pageName)){
				return "thuvien";
			}
			if("tin-tuc".equals(pageName)){
				return "tintuc";
			}
			if("lien-he".equals(pageName)){
				return "lienhe";
			}
		}
		return "article";
	}
}