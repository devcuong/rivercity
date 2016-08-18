package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.NewsBean;

@Service
public interface NewsService {
	public List<NewsBean> getAllNews();
	public NewsBean getNewsById(Integer newsId);
	public int addNews(NewsBean newsBean);
	public List<NewsBean> getMostViewNews();
}
