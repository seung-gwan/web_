package com.javalec.ex.Dto;

public class BDto5 {
	
	String member_id;
	String member_car;
	String Car_kM;
	String Car_Num;
	int Car_ProductY;
	String Car_color;
	String Car_brand;
	String Car_type;
	String Car_Accident;
	
	public BDto5() {
		
	}
	
	
	
	
	public BDto5(String member_car, String car_kM, String car_Num, int car_ProductY, String car_color,
			String car_brand, String car_type, String car_Accident, String member_id) {
		super();
		
		this.member_car = member_car;
		Car_kM = car_kM;
		Car_Num = car_Num;
		Car_ProductY = car_ProductY;
		Car_color = car_color;
		Car_brand = car_brand;
		Car_type = car_type;
		Car_Accident = car_Accident;
		this.member_id = member_id;
	}
	public String getMember_car() {
		return member_car;
	}
	public void setMember_car(String member_car) {
		this.member_car = member_car;
	}
	public String getCar_kM() {
		return Car_kM;
	}
	public void setCar_kM(String car_kM) {
		Car_kM = car_kM;
	}
	public String getCar_Num() {
		return Car_Num;
	}
	public void setCar_Num(String car_Num) {
		Car_Num = car_Num;
	}
	public int getCar_ProductY() {
		return Car_ProductY;
	}
	public void setCar_ProductY(int car_ProductY) {
		Car_ProductY = car_ProductY;
	}
	public String getCar_color() {
		return Car_color;
	}
	public void setCar_color(String car_color) {
		Car_color = car_color;
	}
	public String getCar_brand() {
		return Car_brand;
	}
	public void setCar_brand(String car_brand) {
		Car_brand = car_brand;
	}
	public String getCar_type() {
		return Car_type;
	}
	public void setCar_type(String car_type) {
		Car_type = car_type;
	}
	public String getCar_Accident() {
		return Car_Accident;
	}
	public void setCar_Accident(String car_Accident) {
		Car_Accident = car_Accident;
	}
	public String setMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	

}
