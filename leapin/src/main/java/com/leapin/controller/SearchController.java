package com.leapin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.leapin.common.CommonUtil;
import com.leapin.service.ProgramService;

@Controller
@RequestMapping("/")
public class SearchController {
	
	Logger LOGGER = LogManager.getLogger(SearchController.class.getName());
	@Autowired
	private ProgramService programService;
	
	@RequestMapping("/home")
	public String home(){
		return "search";
	}
	
	@RequestMapping("/search")
	public ModelAndView resultView(HttpServletRequest request, ModelMap modelMap ){
		String query = request.getParameter("query");
		ModelAndView mv = new ModelAndView("searchResult");
		mv.addObject("query", query);
		return mv;
	}

	@RequestMapping("/getPrograms")
	public @ResponseBody Map<String,Object> getPrograms(HttpServletRequest request) {
		//is client behind something?
		String ipAddress = request.getHeader("X-FORWARDED-FOR");  
		if (ipAddress == null) {  
			ipAddress = request.getRemoteAddr();  
		}
		System.out.println(ipAddress);
		String query = request.getParameter("query");
		LOGGER.info("Query : " + query);
		LOGGER.info("IP : " + ipAddress);
		query = CommonUtil.parseInputForSQL(query);
		Map<String,Object> result = new HashMap<String, Object>(1);
		if (query.isEmpty()) {
			result.put("emptyQuery", true);
		} else {
			result = programService.getPrograms(query);
		}
		return result;
	}
}
