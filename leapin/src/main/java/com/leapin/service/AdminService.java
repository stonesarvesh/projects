package com.leapin.service;

import java.util.Map;

public interface AdminService {
	
	Map<Integer,String> getNotificationCategories();

	Boolean saveNotifiation(Map<String,Object> notification);
}
