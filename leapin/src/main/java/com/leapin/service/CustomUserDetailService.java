/**
 * 
 */
package com.leapin.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 * @author Deepak
 *
 */
public class CustomUserDetailService implements UserDetailsService {

	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

//	@Autowired
//	private MongoTemplate mongoTemplate;
//
//	public UserDetails loadUserByUsername(String username)
//			throws UsernameNotFoundException {
//		User user = getUserDetail(username);
//		System.out.println(username);
//		org.springframework.security.core.userdetails.User userDetail = new org.springframework.security.core.userdetails.User(
//				user.getUsername(), user.getPassword(), true, true, true, true,
//				getAuthorities(user.getRole()));
//		return userDetail;
//	}
//
//	public List<GrantedAuthority> getAuthorities(String role) {
//		List<GrantedAuthority> authList = new ArrayList<GrantedAuthority>();
//		authList.add(new SimpleGrantedAuthority(role));
//		return authList;
//	}
//
//	public User getUserDetail(String username) {
//		MongoOperations mongoOperation = (MongoOperations) mongoTemplate;
//		User user = mongoOperation.findOne(new Query(Criteria.where("username")
//				.is(username)), User.class);
//		System.out.println(user.toString());
//		return user;
//	}

}
