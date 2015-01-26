package com.leapin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;

@Controller
@ControllerAdvice
public class AdminController {

	
	public String handleResourceNotFoundException(Exception ex) {
		System.out.println("hello");
		return "notfound";
	}
}
