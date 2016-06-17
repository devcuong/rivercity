package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.ImageSlideBean;
@Service
public interface ImageSlideService {
	public List<ImageSlideBean> getAllImageSlide();
}
