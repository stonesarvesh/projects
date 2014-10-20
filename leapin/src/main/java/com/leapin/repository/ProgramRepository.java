package com.leapin.repository;

import java.util.Map;

public interface ProgramRepository {

	Map<String,Object> getPrograms(String query);
}
