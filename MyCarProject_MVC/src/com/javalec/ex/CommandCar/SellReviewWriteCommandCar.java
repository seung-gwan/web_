package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;

public class SellReviewWriteCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String sRId = request.getParameter("sRId");
		String sRTitle = request.getParameter("sRTitle");
		String sRContent = request.getParameter("sRContent");
		String sRCar = request.getParameter("sRCar");
		
		BDao dao = new BDao();
		
		dao.SellReview_write(sRId, sRTitle, sRContent , sRCar);

	}

}
