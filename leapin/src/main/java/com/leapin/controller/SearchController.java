package com.leapin.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.leapin.service.ProgramService;

@Controller
@RequestMapping("/")
public class SearchController {
	
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
		String query = request.getParameter("query");
		System.out.println(query);
		return programService.getPrograms(query);
	}
}