package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.InformationNormalBean;
import com.server.career.dao.InformationNormalDao;
import com.server.career.service.InformationNormalService;

@Service
public class InformationNormalServiceImpl implements InformationNormalService {

	@Autowired
	private InformationNormalDao informationNormalDao;
	
	public List<InformationNormalBean> getAllInformationNormal() {
		return informationNormalDao.getAllInformationNormal();
	}

}