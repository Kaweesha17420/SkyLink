package com.pkg;

public class Pack {

	private int pID;
	private String pkgName;
	private String price;
	private String description1;
	private String description2;
	private String description3;
	
	
	public Pack(int pID, String pkgName, String price, String description1, String description2, String description3) {

		this.pID = pID;
		this.pkgName = pkgName;
		this.price = price;
		this.description1 = description1;
		this.description2 = description2;
		this.description3 = description3;
	}


	public int getpID() {
		return pID;
	}


	public String getPkgName() {
		return pkgName;
	}


	public String getPrice() {
		return price;
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


}
