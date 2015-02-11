/**
 * 
 */
package com.leapin.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.leapin.service.AdminService;

/**
 * @author sarvesh
 *
 */
@Controller
@RequestMapping("/")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/saveNotification")
	public @ResponseBody Boolean resultView(@RequestBody final Map<String,Object> notification){
		return adminService.saveNotifiation(notification);
	}

}
