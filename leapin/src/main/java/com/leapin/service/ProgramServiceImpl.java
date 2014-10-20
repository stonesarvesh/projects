package com.leapin.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leapin.repository.ProgramRepository;

@Service
public class ProgramServiceImpl implements ProgramService {

	@Autowired
	private ProgramRepository programRepository;
	
	public Map<String,Object> getPrograms(String query) {
		return programRepository.getPrograms(query);
	}

}
