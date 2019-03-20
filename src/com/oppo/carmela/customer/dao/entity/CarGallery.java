package com.oppo.carmela.customer.dao.entity;

public class CarGallery {
	
	private int galId;
	private String title;
	private String subtitle;
	private int year;
	private String description;
	private String image;
	
	public CarGallery() {
		
	}
	
	public CarGallery(int galId, String title, String subtitle, int year, String description, String image) {
		super();
		this.galId = galId;
		this.title = title;
		this.subtitle = subtitle;
		this.year = year;
		this.description = description;
		this.image = image;
	}
	
	public int getGalId() {
		return galId;
	}

	public void setGalId(int galId) {
		this.galId = galId;
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
	@Override
	public String toString() {
		return "CarGallery [title=" + title + ", subtitle=" + subtitle + ", year=" + year + ", description="
				+ description + ", image=" + image + "]";
	}
	
	
}
