package com.server.career.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.server.career.bean.AgentBean;
import com.server.career.bean.NewsBean;
import com.server.career.bean.ProjectBean;
import com.server.career.bean.SellPostBean;
import com.server.career.service.AgencyService;
import com.server.career.service.NewsService;
import com.server.career.service.ProjectService;
import com.server.career.service.SellPostService;

@Controller
public class RaoVatController {

	@Autowired
	private SellPostService sellPostService;

	@Autowired
	private NewsService newsService;

	@Autowired
	private ProjectService projectService;

	@Autowired
	private AgencyService agencyService;

	@RequestMapping(value = { "/raovat" }, method = RequestMethod.GET)
	public String trangChu(Map<String, Object> model, HttpServletRequest request) {
		List<AgentBean> agentBeans = agencyService.getRepresentativeAgent();
		List<ProjectBean> projectBeans = projectService.getAllProject();
		List<NewsBean> newsBeans = newsService.getAllNews();
		List<SellPostBean> sellPostBeans = sellPostService.getTopSellPost();
		List<SellPostBean> vipSellPostBeans = sellPostService.getVipSellPostTypeSell();
		List<SellPostBean> vipRentPostBeans = sellPostService.getVipSellPostTypeRent();

		model.put("agentBean", agentBeans);
		model.put("projectBean", projectBeans);
		model.put("sellBean", sellPostBeans);
		model.put("newsBean", newsBeans);
		model.put("vipSellBean", vipSellPostBeans);
		model.put("vipRentBean", vipRentPostBeans);

		return "raovat/trangchu";
	}

	@RequestMapping(value = { "/raovat/tintuc/{urlSubPage}" }, method = RequestMethod.GET)
	public String trangCon(@PathVariable("urlSubPage") String urlSubPage,
			Map<String, Object> model, HttpServletRequest request) {
		if (urlSubPage != null) {
			String[] nameArray = urlSubPage.split("\\-");
			String lastName = nameArray[nameArray.length - 1];
			String[] idArray = lastName.split("\\.");
			String id = idArray[0];
			NewsBean newsBean = newsService.getNewsById(Integer.parseInt(id));
			// Tin tuc chinh
			model.put("newsMain", newsBean);

			List<NewsBean> newsBeans = newsService.getAllNews();
			// Danh sach cac tin tuc khac
			model.put("news", newsBeans);

			return "raovat/trangcon";
		}
		return "raovat/trangcon";
	}
}
