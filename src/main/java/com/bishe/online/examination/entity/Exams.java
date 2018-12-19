package com.bishe.online.examination.entity;

import java.util.HashSet;
import java.util.Set;

public class Exams {

	private Integer id;
	private String ename;
	private Courses courses;
	private Integer tdate;
	private String startTime;
	private String endTime;
	private String state;
	private String autor;
    private Set<Examinfo> examinfo=new HashSet<Examinfo>();
	public Exams() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public Courses getCourses() {
		return courses;
	}

	public void setCourses(Courses courses) {
		this.courses = courses;
	}

	public Integer getTdate() {
		return tdate;
	}

	public void setTdate(Integer tdate) {
		this.tdate = tdate;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public Set<Examinfo> getExaminfo() {
		return examinfo;
	}

	public void setExaminfo(Set<Examinfo> examinfo) {
		this.examinfo = examinfo;
	}

}
