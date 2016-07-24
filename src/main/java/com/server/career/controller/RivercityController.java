package com.server.career.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
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
import com.server.career.bean.NewsBean;
import com.server.career.service.AgencyService;
import com.server.career.service.ImageSlideService;
import com.server.career.service.InformationNormalService;
import com.server.career.service.InvestorService;
import com.server.career.service.NewsService;

@Controller
public class RivercityController {

	@Autowired
	private ImageSlideService imageSlideService;

	@Autowired
	private InformationNormalService informationNormalService;

	@Autowired
	private InvestorService investorService;

	@Autowired
	private NewsService newsService;

	@Autowired
	private AgencyService agencyService;

	private static final Logger logger = Logger
			.getLogger(RivercityController.class);

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Map<String, Object> model, HttpServletRequest request) {
		List<ImageSlideBean> imageSlideBeans = imageSlideService
				.getAllImageSlide();
		model.put("slide", imageSlideBeans);
		return "rivercity/home";
	}

	@RequestMapping(value = { "/{urlPage}" }, method = RequestMethod.GET)
	public String page(@PathVariable("urlPage") String urlPage,
			Map<String, Object> model, HttpServletRequest request) {

		try {
			if (urlPage != null) {
				String[] nameArray = urlPage.split("\\.");
				String pageName = nameArray[0].toString();
				if ("gioi-thieu".equals(pageName)) {
					// Get 
					List<InformationNormalBean> informationNormalBeans = informationNormalService
							.getAllInformationNormal();

					List<InformationInvestorBean> allInformationInvestorBean = investorService
							.AddAllInvester(informationNormalBeans);

					model.put("informationNormal", informationNormalBeans);
					model.put("informationInvestor", allInformationInvestorBean);
					return "rivercity/gioithieu";
				}
				if ("vi-tri".equals(pageName)) {
					return "rivercity/vitri";
				}
				if ("tien-ich".equals(pageName)) {
					return "rivercity/tienich";
				}
				if ("thong-tin-can-ho".equals(pageName)) {
					return "rivercity/thongtincanho";
				}
				if ("thu-vien".equals(pageName)) {
					return "rivercity/thuvien";
				}
				if ("tin-tuc".equals(pageName)) {
					List<NewsBean> newsBeans = newsService.getAllNews();
					if (newsBeans != null) {
						model.put("news", newsBeans);
					}
					return "rivercity/tintuc";
				}
				if ("lien-he".equals(pageName)) {
					List<AgentBean> agentBeans = agencyService.getAllAgent();
					if (agentBeans != null) {
						model.put("agent", agentBeans);
					}
					
				}
			}
			return "admin/error";
		} catch (Exception e) {
			logger.error(e.getMessage());
			return "admin/error";
		}
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

				return "rivercity/tintuc";
			}
			String[] tenBlock = urlSubPage.split("-");
			if ("block".equals(tenBlock[0])) {
				model.put("blockName", tenBlock[1]);
				return "rivercity/block";
			}
		}
		return "rivercity/home";
	}

	@RequestMapping(value = "/tin-tuc", method = RequestMethod.POST)
	public @ResponseBody NewsBean loadNews(Map<String, Object> model,
			HttpServletRequest request) {

		try {
			String newsId = request.getParameter("newsId");

			if (newsId != null) {
				NewsBean newsBean = newsService.getNewsById(Integer
						.parseInt(newsId));

				return newsBean;
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return null;
	}
}