package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.ImageSlideBean;

@Repository
public interface ImageSlideDao {
	public List<ImageSlideBean> getAllImageSlide();
}
