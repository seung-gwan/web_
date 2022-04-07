package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;
import com.javalec.ex.Dto.BDto4;

public class BuyReviewViewCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bRNum = request.getParameter("bRNum");
		System.out.println("bRNum="+bRNum);
		
		BDao dao = new BDao();
		BDto4 dto = dao.BuyReview_view(bRNum);
		
		request.setAttribute("BuyReview_view", dto);

	}

}
