package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.InformationInvestorBean;

@Repository
public interface InvestorDao {
	public List<InformationInvestorBean> getInvestorByInformationSpecialId(Integer informationSpecialId);
}
