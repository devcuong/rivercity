package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.NewsBean;

@Repository
public interface NewsDao {
	public List<NewsBean> getAllNews();
}
