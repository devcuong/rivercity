package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.server.career.bean.NewsBean;
import com.server.career.dao.NewsCategoryDao;
import com.server.career.dao.NewsDao;
import com.server.career.service.NewsService;
import com.server.career.util.TimeHandleUtil;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsDao newsDao;
	
	@Autowired
	private NewsCategoryDao newsCategoryDao;

	public List<NewsBean> getAllNews() {
		return newsDao.getAllNews();
	}

	public NewsBean getNewsById(Integer newsId) {
		NewsBean newsBean = newsDao.getNewsById(newsId);
		int viewsCount = newsBean.getNewsViewCount()+1;
		newsDao.updateCountViews(newsId, viewsCount);
		return newsBean;
	}

	@Override
	public int addNews(NewsBean newsBean) {
		return newsDao.addNews(newsBean);
	}

	@Override
	public List<NewsBean> getMostViewNews() {
		List<NewsBean> newsBeans = newsDao.getMostViewNews();
		for (int i = 0; i < newsBeans.size(); i++) {
			String postDate = TimeHandleUtil.getDate(newsBeans.get(i).getNewsDate());
			newsBeans.get(i).setNewsDate(postDate);
		}
		return newsBeans;
	}
}
