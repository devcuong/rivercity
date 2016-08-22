package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.InformationInvestorBean;
import com.server.career.bean.InformationNormalBean;

@Service
public interface InvestorService {
	public List<InformationInvestorBean> getInvestorByInformationNormalId(Integer informationSpecialId);

	public List<InformationInvestorBean> AddAllInvester(List<InformationNormalBean> informationNormalBeans);
}
