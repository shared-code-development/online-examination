package com.bishe.online.examination.entity;

import java.util.HashSet;
import java.util.Set;

public class Problems {

	private Integer id;
	private Topics topics;
	private String pname;
	private String canswer;
	private String panswer;
	private Integer pscore;
	private Courses courses;
	private Set<Testinfo> testinfos = new HashSet<Testinfo>();

	public Problems() {
	}

	public Problems(Topics topics, String pname, String panswer,
			Integer pscore, Courses courses, Set<Testinfo> testinfos) {
		super();
		this.topics = topics;
		this.pname = pname;
		this.panswer = panswer;
		this.pscore = pscore;
		this.courses = courses;
		this.testinfos = testinfos;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPanswer() {
		return this.panswer;
	}

	public void setPanswer(String panswer) {
		this.panswer = panswer;
	}

	public Integer getPscore() {
		return this.pscore;
	}

	public void setPscore(Integer pscore) {
		this.pscore = pscore;
	}

	public Set<Testinfo> getTestinfos() {
		return testinfos;
	}

	public void setTestinfos(Set<Testinfo> testinfos) {
		this.testinfos = testinfos;
	}

	public Topics getTopics() {
		return topics;
	}

	public void setTopics(Topics topics) {
		this.topics = topics;
	}

	public Courses getCourses() {
		return courses;
	}

	public void setCourses(Courses courses) {
		this.courses = courses;
	}

	public String getCanswer() {
		return canswer;
	}

	public void setCanswer(String canswer) {
		this.canswer = canswer;
	}

}
