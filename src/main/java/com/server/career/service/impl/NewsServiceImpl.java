package com.server.career.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.NewsBean;
import com.server.career.dao.NewsCategoryDao;
import com.server.career.dao.NewsDao;
import com.server.career.service.NewsService;
import com.server.career.util.TimeHandleUtil;

@Service
public class NewsServiceImpl implements NewsService {

	private static final Logger logger = Logger.getLogger(NewsService.class);
	
	@Autowired
	private NewsDao newsDao;

	@Autowired
	private NewsCategoryDao newsCategoryDao;

	public List<NewsBean> getAllNews() {
		return newsDao.getAllNews();
	}

	public NewsBean getNewsById(Integer newsId) {
		
		NewsBean newsBean = null ;
		try {
			newsBean = newsDao.getNewsById(newsId);
			if (newsBean != null) {

				// Cap nhat luong view cho the loai tin tuc
				Integer categoryId = newsBean.getNewsCategory();
				Integer categoryCountView = newsCategoryDao.getCategoryById(categoryId).getCategoryViewCount();
				categoryCountView++;
				newsCategoryDao.updateCountViewCategory(categoryId, categoryCountView);

				// Cap nhat luong view cho tin tuc
				Integer viewsCount = newsBean.getNewsViewCount() + 1;
				newsDao.updateCountViews(newsId, viewsCount);
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}

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
	
	@Override
	public List<NewsBean> getLastestNews() {
		return newsDao.getLastestNews();
	}
}
