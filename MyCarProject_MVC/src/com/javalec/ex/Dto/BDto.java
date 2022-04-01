package com.javalec.ex.Dto;



public class BDto {
	
	String member_id;
	String member_pw;
	String member_name;
	String member_address;
	String member_address_detail1;
	String member_address_detail2;
	int member_address_num;
	String member_email;
	
	String member_gender;
	String member_car;
	
	
	
	

	public BDto() {
		
	}
	
	
	
	
	public BDto(String member_id, String member_pw, String member_name, String member_address,
			String member_address_detail1, String member_address_detail2, int member_address_num, String member_email,
			String member_gender, String member_car) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_address = member_address;
		this.member_address_detail1 = member_address_detail1;
		this.member_address_detail2 = member_address_detail2;
		this.member_address_num = member_address_num;
		this.member_email = member_email;
		this.member_gender = member_gender;
		this.member_car = member_car;
		
		
	}
	
	

	public String getMember_id() {
		return member_id;
	}









	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}









	public String getMember_pw() {
		return member_pw;
	}









	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}









	public String getMember_name() {
		return member_name;
	}









	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}









	public String getMember_address() {
		return member_address;
	}









	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}









	public String getMember_address_detail1() {
		return member_address_detail1;
	}









	public void setMember_address_detail1(String member_address_detail1) {
		this.member_address_detail1 = member_address_detail1;
	}









	public String getMember_address_detail2() {
		return member_address_detail2;
	}









	public void setMember_address_detail2(String member_address_detail2) {
		this.member_address_detail2 = member_address_detail2;
	}









	public int getMember_address_num() {
		return member_address_num;
	}









	public void setMember_address_num(int member_address_num) {
		this.member_address_num = member_address_num;
	}









	public String getMember_email() {
		return member_email;
	}









	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}









	public String getMember_gender() {
		return member_gender;
	}









	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}









	public String getMember_car() {
		return member_car;
	}









	public void setMember_car(String member_car) {
		this.member_car = member_car;
	}



    





	
	
    

}
