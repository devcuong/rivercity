package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.ArticleBean;

@Service
public interface ArticleService {

	public ArticleBean getArticleById(String articleId);
	
	public int addNewArticle(ArticleBean articleBean);
	
	public List<ArticleBean> getAllArticle();
	
	public int deleteArticleById(String articleId);

}
