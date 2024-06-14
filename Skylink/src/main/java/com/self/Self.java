package com.self;

public class Self {

	private int sID;
	private String topic;
	private String description1;
	private String description2;
	private String description3;
	private String imagePath;
	
	
	public Self(int sID, String topic, String description1, String description2, String description3,
			String imagePath) {
		
		this.sID = sID;
		this.topic = topic;
		this.description1 = description1;
		this.description2 = description2;
		this.description3 = description3;
		this.imagePath = imagePath;
	}


	public int getsID() {
		return sID;
	}


	public String getTopic() {
		return topic;
	}


	public String getDescription1() {
		return description1;
	}


	public String getDescription2() {
		return description2;
	}


	public String getDescription3() {
		return description3;
	}


	public String getImagePath() {
		return imagePath;
	}


	
	
	


	
	

	
	
}
