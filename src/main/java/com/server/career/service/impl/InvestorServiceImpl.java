package com.server.career.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.InformationInvestorBean;
import com.server.career.bean.InformationNormalBean;
import com.server.career.dao.InvestorDao;
import com.server.career.service.InvestorService;

@Service
public class InvestorServiceImpl implements InvestorService {

	private static final Logger logger = Logger.getLogger(InvestorService.class);

	@Autowired
	private InvestorDao investerDao;

	public List<InformationInvestorBean> getInvestorByInformationNormalId(Integer informationSpecialId) {
		return investerDao.getInvestorByInformationSpecialId(informationSpecialId);
	}

	@Override
	public List<InformationInvestorBean> AddAllInvester(List<InformationNormalBean> informationNormalBeans) {
		List<InformationInvestorBean> allInformationInvestorBean = new ArrayList<InformationInvestorBean>();
		try {

			for (int i = 0; i < informationNormalBeans.size(); i++) {
				List<InformationInvestorBean> informationInvestorBean = getInvestorByInformationNormalId(
						informationNormalBeans.get(i).getInforId());
				allInformationInvestorBean.addAll(informationInvestorBean);
				allInformationInvestorBean.removeAll(Collections.singleton(null));
			}
			return allInformationInvestorBean;
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}

	}
}
