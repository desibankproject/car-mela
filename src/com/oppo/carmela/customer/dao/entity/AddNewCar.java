package com.oppo.carmela.customer.dao.entity;

public class AddNewCar {
	
	private int galid;
	private String title;
	private String subtitle;
	private int  year;
	private String description;
	private String image;
	
	public AddNewCar() {
		
	}
	public AddNewCar(String title, String subtitle, int year, String description, String image) {
		super();
		this.title = title;
		this.subtitle = subtitle;
		this.year = year;
		this.description = description;
		this.image = image;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
}
