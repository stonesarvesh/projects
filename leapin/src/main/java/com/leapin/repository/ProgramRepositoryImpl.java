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
		final Set<String> states = new HashSet<String>();
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
					String state = rs.getString("state");
					String level = rs.getString("program_level");
					String type = rs.getString("program_type");
					String seats = rs.getString("seats_available");
					String degree = rs.getString("degree_offered");
					String duration = rs.getString("duration");
					String qualification = rs.getString("qualification");
					String commencement = rs.getString("commencement");
					String notification = rs.getString("notification");
					String addmissionProcedure = rs.getString("addmission_procedure");
					String instituteLink = rs.getString("institute_link");
					String programLink = rs.getString("program_link");
					
					String admissionSyllabus = rs.getString("admission_syllabus");
					String fee = rs.getString("fee");
					String accomodation = rs.getString("accomodation");
					
					
					Program program = new Program();
					program.setCourseName(courseName);
					program.setCity(city);
					program.setType(type);
					program.setLevel(level);
					program.setInstituteName(instituteName);
					program.setMajorCategory(majorCategory);
					
					program.setAccomodationInfo(accomodation);
					program.setAdmissionProcedure(addmissionProcedure);
					program.setAdmissionSyllabus(admissionSyllabus);
					program.setDegree(degree);
					program.setDuration(duration);
					program.setFee(fee);
					program.setFormNotification(notification);
					program.setInstituteLink(instituteLink);
					program.setQualification(qualification);
					program.setLink(programLink);
					program.setSeats(seats);
					program.setSessionCommencement(commencement);
					program.setState(state);
					System.out.println(state);
					if (state != null && !"NFF".equalsIgnoreCase(state) && "".equalsIgnoreCase(state.trim()))
						states.add(state);
					if (level != null && !"NFF".equalsIgnoreCase(level) && "".equalsIgnoreCase(level.trim()))
						levels.add(level);
					if (type != null && !"NFF".equalsIgnoreCase(type) && "".equalsIgnoreCase(type.trim()))
						types.add(type);
					programs.add(program);
				}
				result.put("states", states);
				result.put("levels", levels);
				result.put("types", types);
				result.put("programs", programs);
				result.put("query", query);
				return result;
			}
			
		});
	}

}
