package com.leapin.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

import com.leapin.model.QueryBuilder;

@Repository
public class AdminRepositoryImpl implements AdminRepository{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public Map<Integer, String> getNotificationCategories() {
		final Map<Integer,String> result = new TreeMap<Integer, String>();
		jdbcTemplate.query(QueryBuilder.queryForNotificationCategories(), new ResultSetExtractor<Object>() {

			public Object extractData(ResultSet rs) throws SQLException,
					DataAccessException {
				while(rs.next()) {
					result.put(rs.getInt(1), rs.getString(2));
				}
				return null;
			}
		});
		return result;
	}

	public Boolean saveNotification(Map<String, Object> notification) {
		String query = QueryBuilder.insertNotification(notification);
		jdbcTemplate.update(query);
		return true;
	}

}
