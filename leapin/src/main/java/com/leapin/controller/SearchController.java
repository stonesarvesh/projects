package com.leapin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class SearchController {
	
	@RequestMapping("/home")
	public String home(){
		return "search";
	}
	
	@RequestMapping("/search")
	public String searchResult(HttpServletRequest request, ModelMap modelMap ){
		modelMap.put("query", request.getParameter("query"));
		return "searchResult";
	}

}
