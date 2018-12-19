package com.bishe.online.examination.entity;

import java.util.HashSet;
import java.util.Set;

public class Choices {

	private Integer id;
	private Topics topics;
	private String cname;
	private String coptionA;
	private String coptionB;
	private String coptionC;
	private String coptionD;
	private String canswer;
	private Integer cscore;
	private Courses courses;
	private Set<Examinfo> examinfo=new HashSet<Examinfo>();

	public Choices() {
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

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCoptionA() {
		return this.coptionA;
	}

	public void setCoptionA(String coptionA) {
		this.coptionA = coptionA;
	}

	public String getCoptionB() {
		return this.coptionB;
	}

	public void setCoptionB(String coptionB) {
		this.coptionB = coptionB;
	}

	public String getCoptionC() {
		return this.coptionC;
	}

	public void setCoptionC(String coptionC) {
		this.coptionC = coptionC;
	}

	public String getCoptionD() {
		return this.coptionD;
	}

	public void setCoptionD(String coptionD) {
		this.coptionD = coptionD;
	}

	public String getCanswer() {
		return this.canswer;
	}

	public void setCanswer(String canswer) {
		this.canswer = canswer;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCscore() {
		return cscore;
	}

	public void setCscore(Integer cscore) {
		this.cscore = cscore;
	}

	public Set<Examinfo> getExaminfo() {
		return examinfo;
	}

	public void setExaminfo(Set<Examinfo> examinfo) {
		this.examinfo = examinfo;
	}

}
