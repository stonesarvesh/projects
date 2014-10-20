package com.leapin.model;

public class QueryBuilder {

	public static String searchProgram(String query) {
		StringBuilder queryBuilder = new StringBuilder();
		queryBuilder.append("select course_name, major_category, institute_name, city,")
			.append(" state, program_link, institute_link, program_level, degree_offered, seats_available,  program_type,")
			.append(" duration, qualification, commencement, notification, addmission_procedure, admission_syllabus, reservation, fee,")
			.append(" accomodation from program ")
			.append(" where Match(course_name,major_category,institute_name,program_level,degree_offered,program_type,city,state) ")
			.append(" AGAINST('").append(query).append("')");
    
		return queryBuilder.toString();
	}
}
