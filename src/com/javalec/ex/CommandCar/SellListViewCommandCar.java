package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;
import com.javalec.ex.Dto.BDto6;

public class SellListViewCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		 String sNum = request.getParameter("sNum");
			System.out.println("sNum="+sNum);
			
			BDao dao = new BDao();
			BDto6 dto = dao.SellList_detail(sNum);
			
			request.setAttribute("SellList_detail", dto);
	}

}
