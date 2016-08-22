package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.NewsBean;

@Repository
public interface NewsDao {
	public List<NewsBean> getAllNews();

	public NewsBean getNewsById(Integer newsId);

	public int addNews(NewsBean newsBean);

	public List<NewsBean> getMostViewNews();

	public int updateCountViews(Integer newsId, Integer countViews);
	
	public List<NewsBean> getLastestNews();
}
