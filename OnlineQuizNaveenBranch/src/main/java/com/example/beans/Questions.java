package com.example.beans;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Questions {
	
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int ques_id;
	private int sub_id;
	private String ques_description;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String correct_option;
	public int getQues_id() {
		return ques_id;
	}
	public void setQues_id(int ques_id) {
		this.ques_id = ques_id;
	}
	public int getSub_id() {
		return sub_id;
	}
	public void setSub_id(int sub_id) {
		this.sub_id = sub_id;
	}
	public String getQues_description() {
		return ques_description;
	}
	public void setQues_description(String ques_description) {
		this.ques_description = ques_description;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getOption3() {
		return option3;
	}
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	public String getOption4() {
		return option4;
	}
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	public String getCorrect_option() {
		return correct_option;
	}
	public void setCorrect_option(String correct_option) {
		this.correct_option = correct_option;
	}
	@Override
	public String toString() {
		return "Questions [ques_id=" + ques_id + ", sub_id=" + sub_id + ", ques_description=" + ques_description
				+ ", option1=" + option1 + ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4
				+ ", correct_option=" + correct_option + "]";
	}
	
	
	
	
	
}
