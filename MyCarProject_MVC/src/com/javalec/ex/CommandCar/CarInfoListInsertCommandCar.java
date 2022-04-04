package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;

public class CarInfoListInsertCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	    String member_car = request.getParameter("member_car");
	    String car_Num = request.getParameter("car_Num");
	    String car_kM = request.getParameter("car_kM");
	    String car_ProductY = request.getParameter("car_ProductY");
	    String car_color = request.getParameter("car_color");
	    String car_brand = request.getParameter("car_brand");
	    String car_type = request.getParameter("car_type");
	    String car_Accident = request.getParameter("car_Accident");
	    String member_id = request.getParameter("member_id");
	    
	    BDao dao = new BDao();
	    
	    dao.Carinfo_insert(member_car, car_kM, car_Num, car_ProductY, car_color, car_brand, car_type, car_Accident, member_id);

	}

}
