package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.ArticleBean;
import com.server.career.dao.ArticleDao;
import com.server.career.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleDao articleDao;
	
	public ArticleBean getArticleById(String articleId) {
		ArticleBean articleBean = articleDao.getArticleById(articleId);
		return articleBean;
	}
	
	public int addNewArticle(ArticleBean articleBean) {
		return articleDao.addNewArticle(articleBean);
	}

	public List<ArticleBean> getAllArticle() {
		return articleDao.getAllArticle();
	}
	
	public int deleteArticleById(String articleId) {
		return articleDao.deleteArticleById(articleId);
	}
}
