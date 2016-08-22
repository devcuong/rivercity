package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.NewsCategoryBean;
import com.server.career.dao.NewsCategoryDao;
import com.server.career.service.NewsCategoryService;

@Service
public class NewsCategoryServiceImpl implements NewsCategoryService {

	@Autowired
	private NewsCategoryDao newsCategoryDao;

	@Override
	public List<NewsCategoryBean> getMostViewCategory() {
		return newsCategoryDao.getMostViewCategory();
	}
}
