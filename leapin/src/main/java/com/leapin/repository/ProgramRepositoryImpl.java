package com.leapin.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

import com.leapin.model.Program;
import com.leapin.model.QueryBuilder;

@Repository
public class ProgramRepositoryImpl implements ProgramRepository {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public Map<String,Object> getPrograms(final String query) {
		String sql = QueryBuilder.searchProgram(query);
		final Map<String,Object> result = new HashMap<String, Object>();
		final Set<String> cities = new HashSet<String>();
		final Set<String> levels = new HashSet<String>();
		final Set<String> types = new HashSet<String>();
		final List<Program> programs = new ArrayList<Program>();
		return jdbcTemplate.query(sql, new ResultSetExtractor<Map<String,Object>>() {

			public Map<String, Object> extractData(ResultSet rs) throws SQLException, DataAccessException {
				
				while(rs.next()) {
					String courseName = rs.getString("course_name");
					String majorCategory = rs.getString("major_category");
					String instituteName = rs.getString("institute_name");
					String city = rs.getString("city");
					String level = rs.getString("program_level");
					String type = rs.getString("program_type");
					Program program = new Program();
					program.setCourseName(courseName);
					program.setCity(city);
					program.setType(type);
					program.setLevel(level);
					program.setInstituteName(instituteName);
					program.setMajorCategory(majorCategory);
					cities.add(city);
					levels.add(level);
					types.add(type);
					programs.add(program);
				}
				result.put("cities", cities);
				result.put("levels", levels);
				result.put("types", types);
				result.put("programs", programs);
				result.put("query", query);
				return result;
			}
			
		});
	}

}
