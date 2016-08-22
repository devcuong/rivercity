package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.SellPostBean;
import com.server.career.dao.SellPostDao;
import com.server.career.service.SellPostService;
import com.server.career.util.TimeHandleUtil;

@Service
public class SellPostServiceImpl implements SellPostService {

	@Autowired
	private SellPostDao sellPostDao;

	@Override
	public List<SellPostBean> getTopSellPost() {
		List<SellPostBean> sellPostBeans = sellPostDao.getTopSellPost();
		if (sellPostBeans != null) {
			for (int i = 0; i < sellPostBeans.size(); i++) {
				;
				String postDate = TimeHandleUtil.getDate(sellPostBeans.get(i).getPostDate());
				sellPostBeans.get(i).setPostDate(postDate);
			}
		}
		return sellPostBeans;
	}

	@Override
	public List<SellPostBean> getVipSellPostTypeSell() {
		return sellPostDao.getVipSellPostTypeSell();
	}

	@Override
	public List<SellPostBean> getVipSellPostTypeRent() {
		return sellPostDao.getVipSellPostTypeRent();
	}

}
