package com.server.career.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.server.career.bean.ArticleBean;
import com.server.career.service.ArticleService;

/**
 * Trang Admin
 * 
 * @author cuong
 *
 */
@Controller
public class AdminController {

	@Autowired
	private ArticleService articleService;

	@RequestMapping(value = { "/admin/article/add" }, method = {
			RequestMethod.GET, RequestMethod.POST })
	public String add(@ModelAttribute("articleBean") ArticleBean articleBean,
			Map<String, Object> model, HttpServletRequest request) {
		String commit = request.getParameter("commit");

		// Insert, Update article
		if (commit != null && "1".equals(commit)) {
			articleService.addNewArticle(articleBean);
		} else {
			articleBean = new ArticleBean();
		}

		// Get all article
		List<ArticleBean> articleBeans = articleService.getAllArticle();

		if (articleBeans != null) {
			model.put("allArticle", articleBeans);
		}

		return "admin/addarticle";
	}

	@RequestMapping(value = { "/admin/article/delete" }, method = {
			RequestMethod.GET, RequestMethod.POST })
	public String delete(HttpServletRequest request) {

		String articleId = request.getParameter("articleId");
		if (articleId != null) {
			articleService.deleteArticleById(articleId);
		}
		return "redirect:/admin/article/add";
	}

	@RequestMapping(value = { "/admin/article/update" }, method = {
			RequestMethod.GET, RequestMethod.POST })
	public String update(
			@ModelAttribute("articleBean") ArticleBean articleBean,
			Map<String, Object> model, HttpServletRequest request) {

		String articleId = request.getParameter("articleId");
		if (articleId != null) {
			articleBean = articleService.getArticleById(articleId);
		}

		// Get all article
		List<ArticleBean> articleBeans = articleService.getAllArticle();

		if (articleBeans != null) {
			model.put("allArticle", articleBeans);
		}

		return "redirect:/admin/article/add";
	}
}
