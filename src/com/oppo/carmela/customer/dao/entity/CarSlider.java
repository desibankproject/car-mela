package com.oppo.carmela.customer.dao.entity;

import java.sql.Timestamp;

public class CarSlider {
	
	private int scid;
	private String title;
	private String subtitle;
	private String image;
	private String description;
	private Timestamp doe;
	
	public Timestamp getDoe() {
		return doe;
	}
	public void setDoe(Timestamp doe) {
		this.doe = doe;
	}
	public CarSlider() {
		
	}
	public CarSlider(int scid, String title, String subtitle, String image, String description, Timestamp doe) {
		super();
		this.scid = scid;
		this.title = title;
		this.subtitle = subtitle;
		this.image = image;
		this.description = description;
		this.doe = doe;
	}
	public int getScid() {
		return scid;
	}
	public void setScid(int scId) {
		this.scid = scId;
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "CarSlider [scId=" + scid + ", title=" + title + ", subtitle=" + subtitle + ", image=" + image
				+ ", description=" + description + "]";
	}
	
	
}
