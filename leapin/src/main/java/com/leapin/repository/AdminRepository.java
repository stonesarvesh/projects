package com.leapin.repository;

import java.util.Map;

public interface AdminRepository {
	Map<Integer,String> getNotificationCategories();

	Boolean saveNotification(Map<String,Object> notification);
}
