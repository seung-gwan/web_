package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;

public class BuyReviewDeleteCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
        String bRNum = request.getParameter("bRNum");
		
		BDao dao = new BDao();
		
		dao.BuyReview_delete(bRNum);
	}

}
