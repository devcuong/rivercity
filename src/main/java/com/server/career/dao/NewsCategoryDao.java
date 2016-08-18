package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.NewsCategoryBean;

@Repository
public interface NewsCategoryDao {
	public List<NewsCategoryBean> getMostViewCategory();
	public int updateCountViewCategory(Integer categoryId, Integer countView);
}
