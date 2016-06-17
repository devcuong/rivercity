package com.server.career.converter;

import com.server.career.bean.EmployerBean;
import com.server.career.util.TimeHandleUtil;


/**
 * JobConverter
 * 
 * @author cuong
 *
 */
public class EmployerConverter {
	
	public static EmployerBean convertEmployer(EmployerBean employerBean){
		String updateDate = employerBean.getUpdateDate();
		
		if(updateDate != null){
			employerBean.setUpdateDate(TimeHandleUtil.getDate(updateDate));
		}
				
		return employerBean;
	}
}
