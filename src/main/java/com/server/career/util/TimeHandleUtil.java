package com.server.career.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import com.server.career.constant.WebConstant;

public class TimeHandleUtil {
	public static String getDate(String dateTime) {
		SimpleDateFormat formatOriginal = new SimpleDateFormat(WebConstant.COMMON_TIME_FORMAT_SQL);
		SimpleDateFormat formatter = new SimpleDateFormat(WebConstant.COMMON_TIME_FORMAT,
				Locale.ENGLISH);
		Date date;
		String sdate = null;
		try {
			date = formatOriginal.parse(dateTime);
			sdate = formatter.format(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return sdate;
	}
	
	public static String getDateSQL(String dateTime) {
		SimpleDateFormat formatOriginal = new SimpleDateFormat(WebConstant.COMMON_TIME_FORMAT);
		SimpleDateFormat formatter = new SimpleDateFormat(WebConstant.COMMON_TIME_FORMAT_SQL,
				Locale.ENGLISH);
		Date date;
		String sdate = null;
		try {
			date = formatOriginal.parse(dateTime);
			sdate = formatter.format(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return sdate;
	}
	
	public static String getTimeForTimePicker(String dateTime) {
		SimpleDateFormat formatOriginal = new SimpleDateFormat(WebConstant.COMMON_TIME_FORMAT_SQL);
		SimpleDateFormat formatter = new SimpleDateFormat(WebConstant.COMMON_TIME_PICKER_FORMAT,
				Locale.ENGLISH);
		Date date;
		String sdate = null;
		try {
			date = formatOriginal.parse(dateTime);
			sdate = formatter.format(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return sdate;
	}
	
	public static String getTimeFromTimePickerToSql(String dateTime) {
		SimpleDateFormat formatOriginal = new SimpleDateFormat(WebConstant.COMMON_TIME_PICKER_FORMAT);
		SimpleDateFormat formatter = new SimpleDateFormat(WebConstant.COMMON_TIME_FORMAT_SQL,
				Locale.ENGLISH);
		Date date;
		String sdate = null;
		try {
			date = formatOriginal.parse(dateTime);
			sdate = formatter.format(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return sdate;
	}
	
}
