package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.NewsCategoryBean;

@Service
public interface NewsCategoryService {
	public List<NewsCategoryBean> getMostViewCategory();
}
