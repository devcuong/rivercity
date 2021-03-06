package com.server.career.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.server.career.bean.InformationNormalBean;

@Service
public interface InformationNormalService {
	public List<InformationNormalBean> getAllInformationNormal();

	public InformationNormalBean getNormalBeanMaxDataHash();

	public int updateNormalBean(InformationNormalBean informationNormalBean, HttpServletRequest request);
}
