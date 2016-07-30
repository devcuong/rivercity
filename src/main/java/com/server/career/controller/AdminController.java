package com.server.career.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.server.career.bean.InformationNormalBean;
import com.server.career.bean.LoginBean;
import com.server.career.bean.NewsBean;
import com.server.career.service.InformationNormalService;
import com.server.career.service.NewsService;
import com.server.career.service.UserService;

@Controller
public class AdminController {

	@Autowired
	private UserService userService;

	@Autowired
	private NewsService newsService;

	@Autowired
	private InformationNormalService normalService;

	private static final Logger logger = Logger.getLogger(AdminController.class);

	@RequestMapping(value = { "/quantri" }, method = RequestMethod.GET)
	public String home(@ModelAttribute("userBean") LoginBean loginBean, Map<String, Object> model,
			HttpServletRequest request) {
		return "admin/dangnhap";
	}

	@RequestMapping(value = { "/quantri/dangnhap" }, method = RequestMethod.POST)
	public String login(@ModelAttribute("userBean") LoginBean loginBean, Map<String, Object> model,
			HttpServletRequest request) {
		try {
			Integer isLogin = userService.login(loginBean.getUserName(), loginBean.getPassword());
			if (isLogin == 1) {
				request.getSession().setAttribute("login", loginBean);
				return "admin/trangchu";
			} else
				return "admin/uploadfile";
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return "admin/error";

	}

	@RequestMapping(value = { "/quantri/gioithieu" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String quanTriGioiThieu(@ModelAttribute("informationNormalBean") InformationNormalBean informationNormalBean,
			Map<String, Object> model, HttpServletRequest request) {

		try {
			String them = request.getParameter("them");
			if (them != null) {
				int addNormal = normalService.updateNormalBean(informationNormalBean, request);
				if (addNormal == 0)
					throw new Exception("Khong them duoc normal bean");
			}
			model.put("normalBean", informationNormalBean);
			return "admin/gioithieu";
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return "admin/error";
	}

	@RequestMapping(value = { "/quantri/tintuc" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String quanTriTinTuc(@ModelAttribute("newsBean") NewsBean newsBean, Map<String, Object> model,
			HttpServletRequest request) {
		try {
			String them = request.getParameter("them");
			if (them != null) {
				int addNews = newsService.addNews(newsBean);
				if (addNews == 0)
					throw new Exception("Khong them duoc tin tuc");
			} else {
					List<NewsBean> news = newsService.getAllNews();
					model.put("adminNews", news);
			}
			return "admin/tintuc";
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return "admin/error";
	}
}
