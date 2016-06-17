package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.InformationNormalBean;

@Repository
public interface InformationNormalDao {
	public List<InformationNormalBean> getAllInformationNormal();
}
