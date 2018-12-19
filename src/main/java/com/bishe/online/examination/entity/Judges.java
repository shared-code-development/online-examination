package com.bishe.online.examination.entity;

import java.util.HashSet;
import java.util.Set;

public class Judges {

	private Integer id;
	private Topics topics;
	private String jname;
	private String janswer;
	private Integer jscore;
	private Courses courses;
	private Set<Examinfo> examinfo=new HashSet<Examinfo>();
	public Judges() {
	}

	public Set<Examinfo> getExaminfo() {
		return examinfo;
	}

	public void setExaminfo(Set<Examinfo> examinfo) {
		this.examinfo = examinfo;
	}

	public Courses getCourses() {
		return courses;
	}

	public void setCourses(Courses courses) {
		this.courses = courses;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Topics getTopics() {
		return this.topics;
	}

	public void setTopics(Topics topics) {
		this.topics = topics;
	}

	public String getJname() {
		return this.jname;
	}

	public void setJname(String jname) {
		this.jname = jname;
	}

	public String getJanswer() {
		return this.janswer;
	}

	public void setJanswer(String janswer) {
		this.janswer = janswer;
	}

	public Integer getJscore() {
		return this.jscore;
	}

	public void setJscore(Integer jscore) {
		this.jscore = jscore;
	}

}
