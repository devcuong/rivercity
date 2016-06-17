package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.InformationNormalBean;

@Service
public interface InformationNormalService {
	public List<InformationNormalBean> getAllInformationNormal();
}
