package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;

public class SellListInsertCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		;
	    String sCar = request.getParameter("sCar");
	    String sCar_Num = request.getParameter("sCar_Num");
	    String sCar_kM = request.getParameter("sCar_kM");
	    String sCar_ProductY = request.getParameter("sCar_ProductY");
	    String sCar_color = request.getParameter("sCar_color");
	    String sCar_brand = request.getParameter("sCar_brand");
	    String sCar_type = request.getParameter("sCar_type");
	    String sCar_Accident = request.getParameter("sCar_Accident");
	    
	    BDao dao = new BDao();
	    
	    dao.SellList_insert(sCar, sCar_Num, sCar_kM, sCar_ProductY, sCar_color, sCar_brand, sCar_type, sCar_Accident);

	}

}
