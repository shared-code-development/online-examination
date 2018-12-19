package com.bishe.online.examination.entity;

public class Examinfo {

	private Integer id;
	private Exams exams;
	private Choices choices;
	private Judges judges;
	private Fills fills;

	public Examinfo() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Exams getExams() {
		return exams;
	}

	public void setExams(Exams exams) {
		this.exams = exams;
	}

	public Choices getChoices() {
		return choices;
	}

	public void setChoices(Choices choices) {
		this.choices = choices;
	}

	public Judges getJudges() {
		return judges;
	}

	public void setJudges(Judges judges) {
		this.judges = judges;
	}

	public Fills getFills() {
		return fills;
	}

	public void setFills(Fills fills) {
		this.fills = fills;
	}

}
