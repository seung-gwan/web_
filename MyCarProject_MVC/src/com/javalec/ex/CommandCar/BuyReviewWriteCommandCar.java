package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;

public class BuyReviewWriteCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bRId = request.getParameter("bRId");
		String bRTitle = request.getParameter("bRTitle");
		String bRContent = request.getParameter("bRContent");
		String bRCar = request.getParameter("bRCar");
		
		BDao dao = new BDao();
		
		dao.BuyReview_write(bRId, bRTitle, bRContent , bRCar);

	}

}
