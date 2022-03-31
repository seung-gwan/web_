package com.javalec.ex.Dto;

import java.sql.Timestamp;

public class BDto4 {
	String bRId;
	String bRTitle;
	String bRContent;
	String bRCar;
    int bRNum;
    int bRHit;
    Timestamp bRDate;
	public BDto4(String bRId, String bRTitle, String bRContent, String bRCar, int bRNum, int bRHit, Timestamp bRDate) {
		super();
		this.bRId = bRId;
		this.bRTitle = bRTitle;
		this.bRContent = bRContent;
		this.bRCar = bRCar;
		this.bRNum = bRNum;
		this.bRHit = bRHit;
		this.bRDate = bRDate;
	}
	
	public String getbRId() {
		return bRId;
	}
	public void setbRId(String bRId) {
		this.bRId = bRId;
	}
	public String getbRTitle() {
		return bRTitle;
	}
	public void setbRTitle(String bRTitle) {
		this.bRTitle = bRTitle;
	}
	public String getbRContent() {
		return bRContent;
	}
	public void setbRContent(String bRContent) {
		this.bRContent = bRContent;
	}
	public String getbRCar() {
		return bRCar;
	}
	public void setbRCar(String bRCar) {
		this.bRCar = bRCar;
	}
	public int getbRNum() {
		return bRNum;
	}
	public void setbRNum(int bRNum) {
		this.bRNum = bRNum;
	}
	public int getbRHit() {
		return bRHit;
	}
	public void setbRHit(int bRHit) {
		this.bRHit = bRHit;
	}
	public Timestamp getbRDate() {
		return bRDate;
	}
	public void setbRDate(Timestamp bRDate) {
		this.bRDate = bRDate;
	}
    
    

}
