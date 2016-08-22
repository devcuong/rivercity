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
import com.server.career.bean.NewsCategoryBean;
import com.server.career.bean.ProjectBean;
import com.server.career.bean.SellPostBean;
import com.server.career.service.AgencyService;
import com.server.career.service.NewsCategoryService;
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

	@Autowired
	private NewsCategoryService newsCategoryService;

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

	@RequestMapping(value = { "/raovat/tin-tuc/{urlSubPage}" }, method = RequestMethod.GET)
	public String trangCon(@PathVariable("urlSubPage") String urlSubPage, Map<String, Object> model,
			HttpServletRequest request) {
		if (urlSubPage != null) {
			String[] nameArray = urlSubPage.split("\\-");
			String lastName = nameArray[nameArray.length - 1];
			String[] idArray = lastName.split("\\.");
			String id = idArray[0];

			// Lay tin tuc nguoi dung doc
			NewsBean newsBean = newsService.getNewsById(Integer.parseInt(id));
			// Lay cac tin tuc xem nhieu nhat
			List<NewsBean> newsBeans = newsService.getMostViewNews();
			// Lay cac the loai tin tuc duoc chu y nhat
			List<NewsCategoryBean> newsCategoryBeans = newsCategoryService.getMostViewCategory();
			// Danh sach tin tuc moi nhat
			List<NewsBean> lastestNews = newsService.getLastestNews();
			
			// Tin tuc chinh
			model.put("newsMain", newsBean);
			// Danh sach cac tin tuc xem nhieu nhat
			model.put("news", newsBeans);
			// Danh sach cac the loai tin duoc xem nhieu nhat
			model.put("categoryNews", newsCategoryBeans);
			// Danh sach cac tin moi nhat
			model.put("lastestNews", lastestNews);
			return "raovat/trangcon";
		}
		return "raovat/trangcon";
	}
	@RequestMapping(value = { "/raovat/tin-rao/{urlSubPage}" }, method = RequestMethod.GET)
	public String trangRao(@PathVariable("urlSubPage") String urlSubPage, Map<String, Object> model,
			HttpServletRequest request) {
		if (urlSubPage != null) {
			
		}
		return "raovat/trangrao";
	}
}
