package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.InformationSpecialBean;

@Repository
public interface InformationSpecialDao {
	public List<InformationSpecialBean> getAllInformationSpecial();
}
