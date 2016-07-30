package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.SellPostBean;
import com.server.career.dao.SellPostDao;
import com.server.career.service.SellPostService;

@Service
public class SellPostServiceImpl implements SellPostService {

	@Autowired
	private SellPostDao sellPostDao;
	
	@Override
	public List<SellPostBean> getTopSellPost() {
		return sellPostDao.getTopSellPost() ;
	}

}
