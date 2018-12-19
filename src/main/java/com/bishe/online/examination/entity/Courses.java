package com.bishe.online.examination.entity;

import java.util.HashSet;
import java.util.Set;

public class Courses {

	private Integer id;
	private Majors majors;
	private String cname;
	private Set<Exams> examses = new HashSet<Exams>();
	private Set<Teachers> teacherses = new HashSet<Teachers>();
	private Set<Testproper> testproper = new HashSet<Testproper>();
	private Set<Problems> problems = new HashSet<Problems>();
	private Set<Choices> choices = new HashSet<Choices>();
	private Set<Judges> judges = new HashSet<Judges>();
	private Set<Fills> fills = new HashSet<Fills>();

	public Courses() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Majors getMajors() {
		return this.majors;
	}

	public void setMajors(Majors majors) {
		this.majors = majors;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Set<Exams> getExamses() {
		return examses;
	}

	public void setExamses(Set<Exams> examses) {
		this.examses = examses;
	}

	public Set<Teachers> getTeacherses() {
		return teacherses;
	}

	public void setTeacherses(Set<Teachers> teacherses) {
		this.teacherses = teacherses;
	}

	public Set<Testproper> getTestproper() {
		return testproper;
	}

	public void setTestproper(Set<Testproper> testproper) {
		this.testproper = testproper;
	}

	public Set<Problems> getProblems() {
		return problems;
	}

	public void setProblems(Set<Problems> problems) {
		this.problems = problems;
	}

	public Set<Choices> getChoices() {
		return choices;
	}

	public void setChoices(Set<Choices> choices) {
		this.choices = choices;
	}

	public Set<Fills> getFills() {
		return fills;
	}

	public void setFills(Set<Fills> fills) {
		this.fills = fills;
	}

	public Set<Judges> getJudges() {
		return judges;
	}

	public void setJudges(Set<Judges> judges) {
		this.judges = judges;
	}

}
