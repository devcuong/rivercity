package com.server.career.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.career.bean.InformationSpecialBean;

@Service
public interface InformationSpecialService {
	public List<InformationSpecialBean> getAllInformationSpecial();
}
