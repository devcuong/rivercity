package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.SellPostBean;

@Service
public interface SellPostService {
	public List<SellPostBean> getTopSellPost();

	public List<SellPostBean> getVipSellPostTypeSell();

	public List<SellPostBean> getVipSellPostTypeRent();
}
