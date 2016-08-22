package com.server.career.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.server.career.bean.InformationNormalBean;
import com.server.career.dao.InformationNormalDao;
import com.server.career.service.InformationNormalService;

@Service
public class InformationNormalServiceImpl implements InformationNormalService {

	@Autowired
	private InformationNormalDao informationNormalDao;

	public List<InformationNormalBean> getAllInformationNormal() {
		return informationNormalDao.getAllInformationNormal();
	}

	@Override
	public InformationNormalBean getNormalBeanMaxDataHash() {
		return informationNormalDao.getNormalBeanMaxDataHash();
	}

	@Override
	public int updateNormalBean(InformationNormalBean informationNormalBean, HttpServletRequest request) {
		InformationNormalBean inforNormalBeanMaxDataHash = getNormalBeanMaxDataHash();
		informationNormalBean.setInforDataHash(inforNormalBeanMaxDataHash.getInforDataHash() + 1);
		informationNormalBean.setInforDataName(inforNormalBeanMaxDataHash.getInforDataName() + 1);

		// Create infor url from infor alias
		String inforUrl = request.getContextPath() + "/gioi-thieu/" + informationNormalBean.getInforAlias();
		informationNormalBean.setInforUrl(inforUrl);

		return informationNormalDao.updateNormalBean(informationNormalBean);
	}
}
