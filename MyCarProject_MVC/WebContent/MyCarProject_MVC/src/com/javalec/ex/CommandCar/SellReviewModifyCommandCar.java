package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;

public class SellReviewModifyCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String sRId = request.getParameter("sRId");
		System.out.println("sRId="+sRId);
		String sRTitle = request.getParameter("sRTitle");
		System.out.println("sRTitle="+sRTitle);
		String sRContent = request.getParameter("sRContent");
		System.out.println("sRContent="+sRContent);
		String sRNum = request.getParameter("sRNum");
		System.out.println("sRNum=s"+sRNum);
		
		BDao dao = new BDao();
		
		dao.SellReview_modify(sRNum,sRId,sRTitle,sRContent);

	}

}
