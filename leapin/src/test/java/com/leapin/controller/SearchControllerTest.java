package com.leapin.controller;


import static org.junit.Assert.assertEquals;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;
import org.springframework.test.util.ReflectionTestUtils;

import com.leapin.service.ProgramService;

public class SearchControllerTest {

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testGetPrograms() {
		SearchController sc = new SearchController();
		ProgramService ps = Mockito.mock(ProgramService.class);
		Map<String,Object> result = new HashMap<String, Object>();
		result.put("test", "test");
		Mockito.when(ps.getPrograms(Mockito.anyString())).thenReturn(result);
		
		ReflectionTestUtils.setField(sc,"programService", ps);
		
		HttpServletRequest hsr = Mockito.mock(HttpServletRequest.class);
		Mockito.when(hsr.getParameter(Mockito.anyString())).thenReturn("test");
		
		Map<String,Object> actual = sc.getPrograms(hsr);
		assertEquals("test", actual.get("test"));
	}

}
