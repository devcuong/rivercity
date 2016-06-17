package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.ArticleBean;

@Repository
public interface ArticleDao {
	// Get article by id
	public ArticleBean getArticleById(String articleId);
	
	public int addNewArticle(ArticleBean articleBean);
	
	public List<ArticleBean> getAllArticle();
	
	public int deleteArticleById(String articleId);
}
