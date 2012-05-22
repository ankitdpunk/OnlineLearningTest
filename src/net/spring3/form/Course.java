package net.spring3.form;

public class Course {
	private String CourseTitle;
	private String courseCategoryId;
	private String Headline;
	private String Keywords;
	private String languageId;
	public String getCourseTitle() {
		return CourseTitle;
	}
	public void setCourseTitle(String courseTitle) {
		CourseTitle = courseTitle;
	}
	public String getCourseCategoryId() {
		return courseCategoryId;
	}
	public void setCourseCategoryId(String courseCategoryId) {
		this.courseCategoryId = courseCategoryId;
	}
	public String getHeadline() {
		return Headline;
	}
	public void setHeadline(String headline) {
		Headline = headline;
	}
	public String getKeywords() {
		return Keywords;
	}
	public void setKeywords(String keywords) {
		Keywords = keywords;
	}
	public String getLanguageId() {
		return languageId;
	}
	public void setLanguageId(String languageId) {
		this.languageId = languageId;
	}
	
	

}
