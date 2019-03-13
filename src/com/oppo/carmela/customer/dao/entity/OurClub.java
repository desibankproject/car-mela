package com.oppo.carmela.customer.dao.entity;

import java.sql.Timestamp;

public class OurClub {
	private int ocid;
	private String name;
	private String image;
	private String description;
	private Timestamp doe;
	
	public OurClub(){
		
	}

	public OurClub(int ocid, String name, String image, String description, Timestamp doe) {
		this.ocid = ocid;
		this.name = name;
		this.image = image;
		this.description = description;
		this.doe = doe;
	}

	public int getOcid() {
		return ocid;
	}

	public void setOcid(int ocid) {
		this.ocid = ocid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public Timestamp getDoe() {
		return doe;
	}

	public void setDoe(Timestamp doe) {
		this.doe = doe;
	}

	@Override
	public String toString() {
		return "OurClub [ocid=" + ocid + ", name=" + name + ", image=" + image + ", description=" + description
				+ ", doe=" + doe + "]";
	}

}
