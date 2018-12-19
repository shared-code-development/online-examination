package com.bishe.online.examination.entity;

import java.util.HashSet;
import java.util.Set;

public class Vokes {

	private Integer id;
	private String voke;
	private Set<Students> studentses = new HashSet<Students>();
	private Set<Admin> admins = new HashSet<Admin>();
	private Set<Teachers> teacherses = new HashSet<Teachers>();

	public Vokes() {
	}

	public Vokes(String voke) {
		this.voke = voke;
	}

	public Vokes(String voke, Set<Students> studentses, Set<Admin> admins,
			Set<Teachers> teacherses) {
		super();
		this.voke = voke;
		this.studentses = studentses;
		this.admins = admins;
		this.teacherses = teacherses;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getVoke() {
		return this.voke;
	}

	public void setVoke(String voke) {
		this.voke = voke;
	}

	public Set<Students> getStudentses() {
		return studentses;
	}

	public void setStudentses(Set<Students> studentses) {
		this.studentses = studentses;
	}

	public Set<Admin> getAdmins() {
		return admins;
	}

	public void setAdmins(Set<Admin> admins) {
		this.admins = admins;
	}

	public Set<Teachers> getTeacherses() {
		return teacherses;
	}

	public void setTeacherses(Set<Teachers> teacherses) {
		this.teacherses = teacherses;
	}

}
