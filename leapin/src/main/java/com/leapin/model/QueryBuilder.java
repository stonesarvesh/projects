package com.leapin.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

public class QueryBuilder {

	public static String searchProgram(String query) {
		StringBuilder queryBuilder = new StringBuilder();
		queryBuilder.append("select course_name, major_category, institute_name, city,")
			.append(" state, program_link, institute_link, program_level, degree_offered, seats_available,  program_type,")
			.append(" duration, qualification, commencement, notification, addmission_procedure, admission_syllabus, reservation, fee,")
			.append(" accomodation from program ");
		if (!query.isEmpty()) {
			queryBuilder.append(" where Match(course_name,major_category,institute_name,program_level,degree_offered,program_type,city,state) ")
				.append(" AGAINST('").append(query).append("')");
		}
    
		return queryBuilder.toString();
	}
	
	public static String queryForNotificationCategories() {
		StringBuilder query = new StringBuilder();
		query.append("select id, name from notification_category order by name ");
		return query.toString();
	}
	
	public static String insertNotification(Map<String,Object> notification) {
		StringBuilder query = new StringBuilder();
		query.append("insert into notification (title,eligibility,description,links,issue_date, ")
			.append(" end_date,created_on,created_by,updated_on,updated_by)")
			.append(" values ('").append(notification.get("title")).append("','")
			.append(notification.get("eligibility")).append("','")
			.append(notification.get("description")).append("','")
			.append(notification.get("links")).append("','")
			.append(notification.get("startdate")).append("','")
			.append(notification.get("enddate")).append("','")
			.append(new SimpleDateFormat("yyyy-dd-MM").format(new Date())).append("',")
			.append(1).append(",'")
			.append(new SimpleDateFormat("yyyy-dd-MM").format(new Date())).append("',")
			.append(1).append(")");
		return query.toString();
	}
}
