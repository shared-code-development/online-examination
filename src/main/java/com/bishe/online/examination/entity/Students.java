package com.bishe.online.examination.entity;

public class Students {

	private Integer id;
	private Majors majors;
	private Integer snum;
	private String spwd;
	private String sname;
	private String ssex;
	private Integer sgrade;
	private Vokes vokes;

	public Students() {
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

	public Integer getSnum() {
		return this.snum;
	}

	public void setSnum(Integer snum) {
		this.snum = snum;
	}

	public String getSpwd() {
		return this.spwd;
	}

	public void setSpwd(String spwd) {
		this.spwd = spwd;
	}

	public String getSname() {
		return this.sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSsex() {
		return this.ssex;
	}

	public void setSsex(String ssex) {
		this.ssex = ssex;
	}

	public Integer getSgrade() {
		return this.sgrade;
	}

	public void setSgrade(Integer sgrade) {
		this.sgrade = sgrade;
	}

	public Vokes getVokes() {
		return vokes;
	}

	public void setVokes(Vokes vokes) {
		this.vokes = vokes;
	}

}
