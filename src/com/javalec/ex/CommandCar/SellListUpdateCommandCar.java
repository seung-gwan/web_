package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;

public class SellListUpdateCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String sCar_Price = request.getParameter("sCar_Price");
		String sCar_salePrice = request.getParameter("sCar_salePrice");
		String sNum = request.getParameter("sNum");
		
		BDao dao = new BDao();
		System.out.println("sNum="+sNum);
		System.out.println("sCar_Price="+sCar_Price);
		System.out.println("sCar_salePrice="+sCar_salePrice);

		
		
		dao.SellList_Update(sCar_Price, sCar_salePrice, sNum);
	}

}
