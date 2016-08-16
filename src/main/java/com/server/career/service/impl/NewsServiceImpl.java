package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.NewsBean;
import com.server.career.dao.NewsDao;
import com.server.career.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsDao newsDao;
	
	public List<NewsBean> getAllNews() {
		return newsDao.getAllNews();
	}
	
	public NewsBean getNewsById(Integer newsId) {
		return newsDao.getNewsById(newsId);
	}

	@Override
	public int addNews(NewsBean newsBean) {
		return newsDao.addNews(newsBean);
	}
}
