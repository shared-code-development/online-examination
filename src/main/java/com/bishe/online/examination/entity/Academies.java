package com.bishe.online.examination.entity;

import java.util.HashSet;
import java.util.Set;

public class Academies {

	private Integer id;
	private String aname;
	private Set<Majors> majorses = new HashSet<Majors>();

	public Academies() {
	}

	public Academies(String aname, Set<Majors> majorses) {
		super();
		this.aname = aname;
		this.majorses = majorses;
	}

	public Academies(String aname) {
		this.aname = aname;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAname() {
		return this.aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public Set<Majors> getMajorses() {
		return majorses;
	}

	public void setMajorses(Set<Majors> majorses) {
		this.majorses = majorses;
	}

}
