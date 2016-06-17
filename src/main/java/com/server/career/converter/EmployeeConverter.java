package com.server.career.converter;

import com.server.career.bean.EmployeeBean;
import com.server.career.util.TimeHandleUtil;


/**
 * EmployeeConverter
 * 
 * @author cuong
 *
 */
public class EmployeeConverter {
	
	public static EmployeeBean convertEmployee(EmployeeBean employeeBean){
		String birthday = employeeBean.getBirthday();
		
		if(birthday != null){
			employeeBean.setBirthday(TimeHandleUtil.getDate(birthday));
		}
				
		return employeeBean;
	}
	
	public static EmployeeBean convertEmployeeSql(EmployeeBean employeeBean){
		String birthday = employeeBean.getBirthday();
		
		if(birthday != null){
			employeeBean.setBirthday(TimeHandleUtil.getDateSQL(birthday));
		}
				
		return employeeBean;
	}
}
