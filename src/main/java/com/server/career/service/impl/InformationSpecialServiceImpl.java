package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.InformationSpecialBean;
import com.server.career.dao.InformationSpecialDao;
import com.server.career.service.InformationSpecialService;

@Service
public class InformationSpecialServiceImpl implements InformationSpecialService {

	@Autowired
	private InformationSpecialDao informationSpecialDao;

	public List<InformationSpecialBean> getAllInformationSpecial() {
		return informationSpecialDao.getAllInformationSpecial();
	}

}
