package com.server.career.util;

import java.util.Arrays;
import java.util.List;

import com.server.career.constant.StringConstant;

/**
 * StringHandleUtil
 * 
 * @author cuong
 *
 */
public class StringHandleUtil {

	// Function to convert string to a list string
	public static List<String> stringToList(String stringOriginal) {

		// Init string list
		List<String> stringList = null;

		// Convert from list to string
		if (stringOriginal != null) {
			String[] stringArray = stringOriginal.split(StringConstant.STRING_PARAMETER_COMMA);
			stringList = Arrays.asList(stringArray);
		}

		// Return strong list
		return stringList;
	}

	// Function to convert a list to string
	public static String listToString(List<String> listOriginal) {

		// Init string list
		String stringConvertTo = null;

		// Convert from list to string
		if (listOriginal != null) {

			stringConvertTo = "";

			for (String s : listOriginal) {
				stringConvertTo += s + StringConstant.STRING_PARAMETER_COMMA;
			}
		}

		// Return strong list
		return stringConvertTo;
	}
}
