package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.AgentBean;
import com.server.career.dao.AgencyDao;
import com.server.career.service.AgencyService;

@Service
public class AgencyServiceImpl implements AgencyService {

	@Autowired
	private AgencyDao agencyDao;
	
	@Override
	public List<AgentBean> getAllAgent() {
		return agencyDao.getAllAgent();
	}
	
	@Override
	public List<AgentBean> getRepresentativeAgent() {
		return agencyDao.getRepresentativeAgent();
	}
}
