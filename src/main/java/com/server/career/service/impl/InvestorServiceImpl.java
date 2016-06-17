package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.InformationInvestorBean;
import com.server.career.dao.InvestorDao;
import com.server.career.service.InvestorService;

@Service
public class InvestorServiceImpl implements InvestorService {

	@Autowired
	private InvestorDao investerDao;
	
	public List<InformationInvestorBean> getInvestorByInformationSpecialId(
			Integer informationSpecialId) {
		return investerDao.getInvestorByInformationSpecialId(informationSpecialId);
	}

}
