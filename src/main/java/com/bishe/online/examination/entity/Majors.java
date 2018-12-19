package com.bishe.online.examination.entity;

import java.util.HashSet;
import java.util.Set;

public class Majors {

	private Integer id;
	private Academies academies;
	private String mname;
	private Set<Teachers> teacherses = new HashSet<Teachers>();
	private Set<Students> studentses = new HashSet<Students>();
	private Set<Courses> courseses = new HashSet<Courses>();

	public Majors() {
	}

	public Majors(Academies academies, String mname) {
		this.academies = academies;
		this.mname = mname;
	}

	public Majors(Academies academies, String mname, Set<Teachers> teacherses,
			Set<Students> studentses, Set<Courses> courseses) {
		super();
		this.academies = academies;
		this.mname = mname;
		this.teacherses = teacherses;
		this.studentses = studentses;
		this.courseses = courseses;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Academies getAcademies() {
		return this.academies;
	}

	public void setAcademies(Academies academies) {
		this.academies = academies;
	}

	public String getMname() {
		return this.mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public Set<Teachers> getTeacherses() {
		return teacherses;
	}

	public void setTeacherses(Set<Teachers> teacherses) {
		this.teacherses = teacherses;
	}

	public Set<Students> getStudentses() {
		return studentses;
	}

	public void setStudentses(Set<Students> studentses) {
		this.studentses = studentses;
	}

	public Set<Courses> getCourseses() {
		return courseses;
	}

	public void setCourseses(Set<Courses> courseses) {
		this.courseses = courseses;
	}

}
