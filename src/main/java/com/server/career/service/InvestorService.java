package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.InformationInvestorBean;

@Service
public interface InvestorService {
	public List<InformationInvestorBean> getInvestorByInformationSpecialId(Integer informationSpecialId);
}
