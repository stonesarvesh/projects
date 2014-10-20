package com.leapin.controller;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.web.servlet.ModelAndView;

public class LoginControllerTest {

	
	@Test
	public void testLoginFailed() {
		LoginController controller = new LoginController();
		ModelAndView mv = controller.loginFailed();
		assertEquals("View name is not as expected", "login", mv.getViewName());
		assertEquals("View name is not as expected", "true", mv.getModelMap().get("error"));
	}

}
