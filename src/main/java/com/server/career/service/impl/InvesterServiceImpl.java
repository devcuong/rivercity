package com.server.career.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.InformationInvesterBean;
import com.server.career.dao.InvesterDao;
import com.server.career.service.InvesterService;

@Service
public class InvesterServiceImpl implements InvesterService {

	@Autowired
	private InvesterDao investerDao;
	
	public List<InformationInvesterBean> getInvesterByInformationSpecialId(
			Integer informationSpecialId) {
		return investerDao.getInvesterByInformationSpecialId(informationSpecialId);
	}

}
