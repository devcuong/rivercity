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
import org.springframework.web.bind.annotation.ResponseBody;

import com.server.career.bean.AgentBean;
import com.server.career.bean.ImageSlideBean;
import com.server.career.bean.InformationInvestorBean;
import com.server.career.bean.InformationNormalBean;
import com.server.career.bean.InformationSpecialBean;
import com.server.career.bean.NewsBean;
import com.server.career.service.AgencyService;
import com.server.career.service.ImageSlideService;
import com.server.career.service.InformationNormalService;
import com.server.career.service.InformationSpecialService;
import com.server.career.service.InvestorService;
import com.server.career.service.NewsService;

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

	@Autowired
	private NewsService newsService;

	@Autowired
	private AgencyService agencyService;

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Map<String, Object> model, HttpServletRequest request) {
		List<ImageSlideBean> imageSlideBeans = imageSlideService
				.getAllImageSlide();
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
				List<InformationNormalBean> informationNormalBeans = informationNormalService
						.getAllInformationNormal();
				List<InformationSpecialBean> informationSpecialBeans = informationSpecialService
						.getAllInformationSpecial();
				List<InformationInvestorBean> allInformationInvestorBean = new ArrayList<InformationInvestorBean>();
				for (int i = 0; i < informationSpecialBeans.size(); i++) {
					List<InformationInvestorBean> informationInvestorBean = investorService
							.getInvestorByInformationSpecialId(informationSpecialBeans
									.get(i).getInforId());
					allInformationInvestorBean.addAll(informationInvestorBean);
					allInformationInvestorBean.removeAll(Collections
							.singleton(null));
				}
				model.put("informationNormal", informationNormalBeans);
				model.put("informationSpecial", informationSpecialBeans);
				model.put("informationInvestor", allInformationInvestorBean);
				return "gioithieu";
			}
			if ("vi-tri".equals(pageName)) {
				return "vitri";
			}
			if ("tien-ich".equals(pageName)) {
				return "tienich";
			}
			if ("thong-tin-can-ho".equals(pageName)) {
				return "thongtincanho";
			}
			if ("thu-vien".equals(pageName)) {
				return "thuvien";
			}
			if ("tin-tuc".equals(pageName)) {
				List<NewsBean> newsBeans = newsService.getAllNews();
				if (newsBeans != null) {
					model.put("news", newsBeans);
				}
				return "tintuc";
			}
			if ("lien-he".equals(pageName)) {
				List<AgentBean> agentBeans = agencyService.getAllAgent();
				if (agentBeans != null) {
					model.put("agent", agentBeans);
				}
				return "lienhe";
			}

		}
		return "article";
	}

	@RequestMapping(value = { "/{urlPage}/{urlSubPage}" }, method = RequestMethod.GET)
	public String subPage(@PathVariable("urlPage") String urlPage,
			@PathVariable("urlSubPage") String urlSubPage,
			Map<String, Object> model, HttpServletRequest request) {
		if (urlSubPage != null) {
			if ("tin-tuc".equals(urlPage)) {
				String[] nameArray = urlSubPage.split("\\-");
				String lastName = nameArray[nameArray.length - 1];
				String[] idArray = lastName.split("\\.");
				String id = idArray[0];
				NewsBean newsBean = newsService.getNewsById(Integer
						.parseInt(id));

				// Tin tuc chinh
				model.put("newsMain", newsBean);

				List<NewsBean> newsBeans = newsService.getAllNews();
				// Danh sach cac tin tuc khac
				model.put("news", newsBeans);

				return "tintuc";
			}
			String[] tenBlock = urlSubPage.split("-");
			if ("block".equals(tenBlock[0])) {
				model.put("blockName", tenBlock[1]);
				return "block";
			}
		}
		return "article";
	}

	@RequestMapping(value = "/tin-tuc", method = RequestMethod.POST)
	public @ResponseBody NewsBean loadNews(Map<String, Object> model,
			HttpServletRequest request) {

		String newsId = request.getParameter("newsId");

		if (newsId != null) {
			NewsBean newsBean = newsService.getNewsById(Integer
					.parseInt(newsId));

			/*
			 * // Tin tuc chinh model.put("newsMain", newsBean);
			 * 
			 * List<NewsBean> newsBeans = newsService.getAllNews();
			 */

			return newsBean;
		}
		return null;
	}
}