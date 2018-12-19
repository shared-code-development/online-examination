package com.bishe.online.examination.entity;

public class Teachers {

	private Integer id;
	private Courses courses;
	private Majors majors;
	private Integer tnum;
	private String tpwd;
	private String tname;
	private String tsex;
	private Vokes vokes;

	public Teachers() {
	}

	public Teachers(Courses courses, Majors majors, Integer tnum, String tpwd,
			String tname, String tsex, Vokes vokes) {
		super();
		this.courses = courses;
		this.majors = majors;
		this.tnum = tnum;
		this.tpwd = tpwd;
		this.tname = tname;
		this.tsex = tsex;
		this.vokes = vokes;
	}

	public Vokes getVokes() {
		return vokes;
	}

	public void setVokes(Vokes vokes) {
		this.vokes = vokes;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Courses getCourses() {
		return this.courses;
	}

	public void setCourses(Courses courses) {
		this.courses = courses;
	}

	public Majors getMajors() {
		return this.majors;
	}

	public void setMajors(Majors majors) {
		this.majors = majors;
	}

	public Integer getTnum() {
		return this.tnum;
	}

	public void setTnum(Integer tnum) {
		this.tnum = tnum;
	}

	public String getTpwd() {
		return this.tpwd;
	}

	public void setTpwd(String tpwd) {
		this.tpwd = tpwd;
	}

	public String getTname() {
		return this.tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTsex() {
		return this.tsex;
	}

	public void setTsex(String tsex) {
		this.tsex = tsex;
	}

}
