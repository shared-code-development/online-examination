package com.bishe.online.examination.entity;


public class Admin {

	private Integer id;
	private String name;
	private String pwd;
	private Vokes vokes;

	public Admin() {
	}

	public Admin(String name, String pwd) {
		this.name = name;
		this.pwd = pwd;
	}

	public Admin(String name, String pwd, Vokes vokes) {
		super();
		this.name = name;
		this.pwd = pwd;
		this.vokes = vokes;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Vokes getVokes() {
		return vokes;
	}

	public void setVokes(Vokes vokes) {
		this.vokes = vokes;
	}


}
