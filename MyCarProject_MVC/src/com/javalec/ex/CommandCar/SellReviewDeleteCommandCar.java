package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;

public class SellReviewDeleteCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
        String sRNum = request.getParameter("sRNum");
		
		BDao dao = new BDao();
		
		dao.SellReview_delete(sRNum);

	}

}
