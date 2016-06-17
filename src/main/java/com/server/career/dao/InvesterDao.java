package com.server.career.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.server.career.bean.InformationInvesterBean;

@Repository
public interface InvesterDao {
	public List<InformationInvesterBean> getInvesterByInformationSpecialId(Integer informationSpecialId);
}
