package com.bishe.online.examination.entity;

import java.util.HashSet;
import java.util.Set;

public class Testproper {

	private Integer id;
	private String tname;
	private Courses courses;
	private Integer tdate;
	private String startTime;
	private String endTime;
	private String state;
	private String autor;
	private Set<Testinfo> testinfos = new HashSet<Testinfo>();


	public Testproper() {
	}

	public Testproper(String tname, Courses courses, Integer tdate,
			String autor, Set<Testinfo> testinfos, Set<Scores> scores) {
		super();
		this.tname = tname;
		this.courses = courses;
		this.tdate = tdate;
		this.autor = autor;
		this.testinfos = testinfos;
	 
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTname() {
		return this.tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public Courses getCourses() {
		return courses;
	}

	public void setCourses(Courses courses) {
		this.courses = courses;
	}

	public Integer getTdate() {
		return this.tdate;
	}

	public void setTdate(Integer tdate) {
		this.tdate = tdate;
	}

	public String getAutor() {
		return this.autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public Set<Testinfo> getTestinfos() {
		return testinfos;
	}

	public void setTestinfos(Set<Testinfo> testinfos) {
		this.testinfos = testinfos;
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

	 

}
