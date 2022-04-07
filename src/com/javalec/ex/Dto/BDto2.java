package com.javalec.ex.Dto;

import java.sql.Timestamp;

public class BDto2 {
	int bNum;
	String bTitle;
	String bContent;
	String bName;
	Timestamp bDate;
    int bHit;
    
    public BDto2(){
    	
    }
    public BDto2(int bNum, String bTitle, String bContent, String bName,
			Timestamp bDate, int bHit) {
		super();
		this.bNum = bNum;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bName = bName;
		this.bDate = bDate;
		this.bHit = bHit;
		
	}
	public int getbNum() {
		return bNum;
	}
	public void setbNum(int bNum) {
		this.bNum = bNum;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public Timestamp getbDate() {
		return bDate;
	}
	public void setbDate(Timestamp bDate) {
		this.bDate = bDate;
	}
	public int getbHit() {
		return bHit;
	}
	public void setbHit(int bHit) {
		this.bHit = bHit;
	}
    
    

}
