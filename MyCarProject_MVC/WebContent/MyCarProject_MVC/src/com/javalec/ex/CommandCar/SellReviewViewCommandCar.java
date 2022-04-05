package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;
import com.javalec.ex.Dto.BDto3;

public class SellReviewViewCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
        String sRNum = request.getParameter("sRNum");
		
		BDao dao = new BDao();
		BDto3 dto = dao.SellReview_view(sRNum);
		
		request.setAttribute("SellReview_view", dto);
	}

}
