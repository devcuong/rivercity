package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.InformationInvesterBean;

@Service
public interface InvesterService {
	public List<InformationInvesterBean> getInvesterByInformationSpecialId(Integer informationSpecialId);
}
