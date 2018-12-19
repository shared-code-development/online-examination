package com.bishe.online.examination.entity;

import java.util.HashSet;
import java.util.Set;

public class Topics {

	private Integer id;
	private String tname;
	private Set<Fills> fillses = new HashSet<Fills>();
	private Set<Choices> choiceses = new HashSet<Choices>();
	private Set<Judges> judgeses = new HashSet<Judges>();
	private Set<Problems> problems = new HashSet<Problems>();
	
	public Topics() {
	}

	public Topics(String tname) {
		this.tname = tname;
	}

	 

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTname() {
		return this.tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public Set<Fills> getFillses() {
		return fillses;
	}

	public void setFillses(Set<Fills> fillses) {
		this.fillses = fillses;
	}

	public Set<Choices> getChoiceses() {
		return choiceses;
	}

	public void setChoiceses(Set<Choices> choiceses) {
		this.choiceses = choiceses;
	}

	public Set<Judges> getJudgeses() {
		return judgeses;
	}

	public void setJudgeses(Set<Judges> judgeses) {
		this.judgeses = judgeses;
	}

	public Set<Problems> getProblems() {
		return problems;
	}

	public void setProblems(Set<Problems> problems) {
		this.problems = problems;
	}

}
