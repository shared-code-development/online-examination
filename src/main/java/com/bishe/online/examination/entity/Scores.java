package com.bishe.online.examination.entity;

public class Scores {

	private Integer id;
	private Integer stunum;
	private String stuname;
	private String course;
	private String major;
	private Integer sum;

	public Scores() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getStunum() {
		return stunum;
	}

	public void setStunum(Integer stunum) {
		this.stunum = stunum;
	}

	public String getStuname() {
		return stuname;
	}

	public void setStuname(String stuname) {
		this.stuname = stuname;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public Integer getSum() {
		return sum;
	}

	public void setSum(Integer sum) {
		this.sum = sum;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

}
