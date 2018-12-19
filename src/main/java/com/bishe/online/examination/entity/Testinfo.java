package com.bishe.online.examination.entity;
public class Testinfo   {

	private Integer id;
	private Testproper testproper;
	private Problems problems;

	public Testinfo() {
	}

	public Testinfo(Testproper testproper, Problems problems) {
		this.testproper = testproper;
		this.problems = problems;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Testproper getTestproper() {
		return this.testproper;
	}

	public void setTestproper(Testproper testproper) {
		this.testproper = testproper;
	}

	public Problems getProblems() {
		return this.problems;
	}

	public void setProblems(Problems problems) {
		this.problems = problems;
	}

}
