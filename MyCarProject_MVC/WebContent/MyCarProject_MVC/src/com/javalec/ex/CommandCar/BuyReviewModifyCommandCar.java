package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;

public class BuyReviewModifyCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bRId = request.getParameter("bRId");
		String bRTitle = request.getParameter("bRTitle");
		String bRContent = request.getParameter("bRContent");
		String bRNum = request.getParameter("bRNum");
		System.out.println("bRId="+bRId);
		System.out.println("bRTitle="+bRTitle);
		System.out.println("bRContent="+bRContent);
		System.out.println("bRNum="+bRNum);
		BDao dao = new BDao();
		
		dao.BuyReview_modify(bRId,bRTitle,bRContent,bRNum);

	}

}
