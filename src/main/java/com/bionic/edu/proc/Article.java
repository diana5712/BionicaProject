package com.bionic.edu.proc;

import javax.persistence.*;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Article {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String userLogin;
	private String nameOfArticle;
	private String textOfArticle;
	private String alreadyRead;
	private String category;
	private String section;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserLogin() {
		return userLogin;
	}
	public void setUserLogin(String userLogin) {
		this.userLogin = userLogin;
	}
	public String getNameOfArticle() {
		return nameOfArticle;
	}
	public void setNameOfArticle(String nameOfArticle) {
		this.nameOfArticle = nameOfArticle;
	}
	public String getTextOfArticle() {
		return textOfArticle;
	}
	public void setTextOfArticle(String textOfArticle) {
		this.textOfArticle = textOfArticle;
	}
	public String getAlreadyRead() {
		return alreadyRead;
	}
	public void setAlreadyRead(String alreadyRead) {
		this.alreadyRead = alreadyRead;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	
	
}
