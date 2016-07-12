package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.AgentBean;

@Repository
public interface AgencyDao {
	public List<AgentBean> getAllAgent();
}
