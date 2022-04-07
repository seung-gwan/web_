package com.javalec.ex.Dto;

import java.sql.Timestamp;

public class BDto3 {
	
	int sRNum;
	String sRTitle;
	String sRContent;
	Timestamp sRDate;
	int sRHit;
	String sRId;
	String sRCar;
	
	public BDto3(){
		
	}
	
	

	public BDto3(int sRNum, String sRTitle, String sRContent, Timestamp sRDate, int sRHit, String sRId, String sRCar) {
		super();
		this.sRNum = sRNum;
		this.sRTitle = sRTitle;
		this.sRContent = sRContent;
		this.sRDate = sRDate;
		this.sRHit = sRHit;
		this.sRId = sRId;
		this.sRCar = sRCar;
	}



	public int getsRNum() {
		return sRNum;
	}

	public void setsRNum(int sRNum) {
		this.sRNum = sRNum;
	}

	public String getsRTitle() {
		return sRTitle;
	}

	public void setsRTitle(String sRTitle) {
		this.sRTitle = sRTitle;
	}

	public String getsRContent() {
		return sRContent;
	}

	public void setsRContent(String sRContent) {
		this.sRContent = sRContent;
	}

	public Timestamp getsRDate() {
		return sRDate;
	}

	public void setsRDate(Timestamp sRDate) {
		this.sRDate = sRDate;
	}

	public int getsRHit() {
		return sRHit;
	}

	public void setsRHit(int sRHit) {
		this.sRHit = sRHit;
	}

	public String getsRId() {
		return sRId;
	}

	public void setsRId(String sRId) {
		this.sRId = sRId;
	}

	public String getsRCar() {
		return sRCar;
	}

	public void setsRCar(String sRCar) {
		this.sRCar = sRCar;
	}
	
	

}
