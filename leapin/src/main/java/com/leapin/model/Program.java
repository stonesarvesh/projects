package com.leapin.model;

import java.util.Arrays;

public class Program {
	private String name;//
	//private Course[] courses;//
	private String level;//
	private String degree;//
	private String seats;//
	private String type;//
	private String duration;//
	private String qualification;//
	private String sessionCommencement;//
	private String formNotification;//
	private String quota;//
	private String admissionProcedure;//
	private String admissionSyllabus;//
	private String fee;//
	private String accomodationInfo;//
	private String link;//
	private String instituteName;
	//private City city;
	private String state;
	private String instituteLink;
//	private Date createdOn;
//	private Date updatedOn;
//	private String createdBy;
//	private String updatedBy;
	
	/**
	 * @return the instituteName
	 */
	public String getInstituteName() {
		return instituteName;
	}
	/**
	 * @param instituteName the instituteName to set
	 */
	public void setInstituteName(String instituteName) {
		this.instituteName = instituteName;
	}
//	/**
//	 * @return the city
//	 */
//	public City getCity() {
//		return city;
//	}
//	/**
//	 * @param city the city to set
//	 */
//	public void setCity(City city) {
//		this.city = city;
//	}
	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}
	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}
	/**
	 * @return the instituteLink
	 */
	public String getInstituteLink() {
		return instituteLink;
	}
	/**
	 * @param instituteLink the instituteLink to set
	 */
	public void setInstituteLink(String instituteLink) {
		this.instituteLink = instituteLink;
	}
//	/**
//	 * @return the createdOn
//	 */
//	public Date getCreatedOn() {
//		return createdOn;
//	}
//	/**
//	 * @param createdOn the createdOn to set
//	 */
//	public void setCreatedOn(Date createdOn) {
//		this.createdOn = createdOn;
//	}
//	/**
//	 * @return the updatedOn
//	 */
//	public Date getUpdatedOn() {
//		return updatedOn;
//	}
//	/**
//	 * @param updatedOn the updatedOn to set
//	 */
//	public void setUpdatedOn(Date updatedOn) {
//		this.updatedOn = updatedOn;
//	}
//	/**
//	 * @return the createdBy
//	 */
//	public String getCreatedBy() {
//		return createdBy;
//	}
//	/**
//	 * @param createdBy the createdBy to set
//	 */
//	public void setCreatedBy(String createdBy) {
//		this.createdBy = createdBy;
//	}
//	/**
//	 * @return the updatedBy
//	 */
//	public String getUpdatedBy() {
//		return updatedBy;
//	}
//	/**
//	 * @param updatedBy the updatedBy to set
//	 */
//	public void setUpdatedBy(String updatedBy) {
//		this.updatedBy = updatedBy;
//	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
//	/**
//	 * @return the courses
//	 */
//	public Course[] getCourses() {
//		return courses;
//	}
//	/**
//	 * @param courses the courses to set
//	 */
//	public void setCourses(Course[] courses) {
//		this.courses = courses;
//	}
	/**
	 * @return the level
	 */
	public String getLevel() {
		return level;
	}
	/**
	 * @param level the level to set
	 */
	public void setLevel(String level) {
		this.level = level;
	}
	/**
	 * @return the degree
	 */
	public String getDegree() {
		return degree;
	}
	/**
	 * @param degree the degree to set
	 */
	public void setDegree(String degree) {
		this.degree = degree;
	}
	/**
	 * @return the seats
	 */
	public String getSeats() {
		return seats;
	}
	/**
	 * @param seats the seats to set
	 */
	public void setSeats(String seats) {
		this.seats = seats;
	}
	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * @return the duration
	 */
	public String getDuration() {
		return duration;
	}
	/**
	 * @param duration the duration to set
	 */
	public void setDuration(String duration) {
		this.duration = duration;
	}
	/**
	 * @return the qualification
	 */
	public String getQualification() {
		return qualification;
	}
	/**
	 * @param qualification the qualification to set
	 */
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	/**
	 * @return the sessionCommencement
	 */
	public String getSessionCommencement() {
		return sessionCommencement;
	}
	/**
	 * @param sessionCommencement the sessionCommencement to set
	 */
	public void setSessionCommencement(String sessionCommencement) {
		this.sessionCommencement = sessionCommencement;
	}
	/**
	 * @return the formNotification
	 */
	public String getFormNotification() {
		return formNotification;
	}
	/**
	 * @param formNotification the formNotification to set
	 */
	public void setFormNotification(String formNotification) {
		this.formNotification = formNotification;
	}
	/**
	 * @return the quota
	 */
	public String getQuota() {
		return quota;
	}
	/**
	 * @param quota the quota to set
	 */
	public void setQuota(String quota) {
		this.quota = quota;
	}
	/**
	 * @return the admissionProcedure
	 */
	public String getAdmissionProcedure() {
		return admissionProcedure;
	}
	/**
	 * @param admissionProcedure the admissionProcedure to set
	 */
	public void setAdmissionProcedure(String admissionProcedure) {
		this.admissionProcedure = admissionProcedure;
	}
	/**
	 * @return the admissionSyllabus
	 */
	public String getAdmissionSyllabus() {
		return admissionSyllabus;
	}
	/**
	 * @param admissionSyllabus the admissionSyllabus to set
	 */
	public void setAdmissionSyllabus(String admissionSyllabus) {
		this.admissionSyllabus = admissionSyllabus;
	}
	/**
	 * @return the fee
	 */
	public String getFee() {
		return fee;
	}
	/**
	 * @param fee the fee to set
	 */
	public void setFee(String fee) {
		this.fee = fee;
	}
	/**
	 * @return the accomodationInfo
	 */
	public String getAccomodationInfo() {
		return accomodationInfo;
	}
	/**
	 * @param accomodationInfo the accomodationInfo to set
	 */
	public void setAccomodationInfo(String accomodationInfo) {
		this.accomodationInfo = accomodationInfo;
	}
	/**
	 * @return the link
	 */
	public String getLink() {
		return link;
	}
	/**
	 * @param link the link to set
	 */
	public void setLink(String link) {
		this.link = link;
	}
	
//	/* (non-Javadoc)
//	 * @see java.lang.Object#toString()
//	 */
//	@Override
//	public String toString() {
//		return "Program [name=" + name + ", courses="
//				+ Arrays.toString(courses) + ", level=" + level + ", degree="
//				+ degree + ", seats=" + seats + ", type=" + type
//				+ ", duration=" + duration + ", qualification=" + qualification
//				+ ", sessionCommencement=" + sessionCommencement
//				+ ", formNotification=" + formNotification + ", quota=" + quota
//				+ ", admissionProcedure=" + admissionProcedure
//				+ ", admissionSyllabus=" + admissionSyllabus + ", fee=" + fee
//				+ ", accomodationInfo=" + accomodationInfo + ", link=" + link
//				+ "]";
//	}
	
}
