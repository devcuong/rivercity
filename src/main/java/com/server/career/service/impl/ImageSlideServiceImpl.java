package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.ImageSlideBean;
import com.server.career.dao.ImageSlideDao;
import com.server.career.service.ImageSlideService;

@Service
public class ImageSlideServiceImpl implements ImageSlideService {

	@Autowired
	private ImageSlideDao imageSlideDao;
	
	public List<ImageSlideBean> getAllImageSlide() {
		return imageSlideDao.getAllImageSlide();
	}

}
