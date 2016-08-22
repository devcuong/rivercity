package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.AgentBean;

@Service
public interface AgencyService {
	public List<AgentBean> getAllAgent();

	public List<AgentBean> getRepresentativeAgent();
}
