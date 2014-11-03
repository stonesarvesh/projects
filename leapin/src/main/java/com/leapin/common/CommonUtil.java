package com.leapin.common;

public class CommonUtil {
	
	public static String parseInputForSQL(String input) {
		StringBuilder query = new StringBuilder();
		for (int i = 0; i < input.length(); i++) {
			int c = input.charAt(i);
			if ((c <= 'z' && c >= 'a') || (c <= 'Z' && c >='A') || ( c <= '9' && c >= '0') || (c == ' ')) {
				query.append((char)c);
			}
		}
		return query.toString();
	}

}
