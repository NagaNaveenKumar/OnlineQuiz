package com.example.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Expert {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int expert_id;
	private String expert_name;
	private String expert_password;
	public int getExpert_id() {
		return expert_id;
	}
	public void setExpert_id(int expert_id) {
		this.expert_id = expert_id;
	}
	public String getExpert_name() {
		return expert_name;
	}
	public void setExpert_name(String expert_name) {
		this.expert_name = expert_name;
	}
	public String getExpert_password() {
		return expert_password;
	}
	public void setExpert_password(String expert_password) {
		this.expert_password = expert_password;
	}
	
	
}
