package com.bishe.online.examination.entity;

import java.util.HashSet;
import java.util.Set;

public class Fills {

	private Integer id;
	private Topics topics;
	private String fname;
	private String fanswer;
	private Integer fscore;
	private Courses courses;
	private Set<Examinfo> examinfo=new HashSet<Examinfo>();
	public Fills() {
	}

	public Courses getCourses() {
		return courses;
	}

	public void setCourses(Courses courses) {
		this.courses = courses;
	}

	public Topics getTopics() {
		return this.topics;
	}

	public void setTopics(Topics topics) {
		this.topics = topics;
	}

	public String getFname() {
		return this.fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getFanswer() {
		return this.fanswer;
	}

	public void setFanswer(String fanswer) {
		this.fanswer = fanswer;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getFscore() {
		return fscore;
	}

	public void setFscore(Integer fscore) {
		this.fscore = fscore;
	}

	public Set<Examinfo> getExaminfo() {
		return examinfo;
	}

	public void setExaminfo(Set<Examinfo> examinfo) {
		this.examinfo = examinfo;
	}

}
