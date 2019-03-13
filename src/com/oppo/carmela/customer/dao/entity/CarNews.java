package com.oppo.carmela.customer.dao.entity;

import java.sql.Timestamp;

public class CarNews {
	private int cnid;
	private String title;
	private String subtitle;
	private String image;
	private String details;
	private Timestamp doe;

	public CarNews() {

	}

	public CarNews(int cnid, String title, String subtitle, String image, String details, Timestamp doe) {
		this.cnid = cnid;
		this.title = title;
		this.subtitle = subtitle;
		this.image = image;
		this.details = details;
		this.doe = doe;
	}

	public int getCnid() {
		return cnid;
	}

	public void setCnid(int cnid) {
		this.cnid = cnid;
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

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public Timestamp getDoe() {
		return doe;
	}

	public void setDoe(Timestamp doe) {
		this.doe = doe;
	}

	@Override
	public String toString() {
		return "CarNews [cnid=" + cnid + ", title=" + title + ", subtitle=" + subtitle + ", image=" + image
				+ ", details=" + details + ", doe=" + doe + "]";
	}

}
