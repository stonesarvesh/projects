package com.leapin.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leapin.repository.AdminRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminRepository adminRepository;
	
	public Map<Integer, String> getNotificationCategories() {
		return adminRepository.getNotificationCategories();
	}

}
