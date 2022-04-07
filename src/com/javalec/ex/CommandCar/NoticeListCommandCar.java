package com.javalec.ex.CommandCar;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;
import com.javalec.ex.Dto.BDto2;

public class NoticeListCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		BDao dao = new BDao();
		ArrayList<BDto2> noticelist = dao.Notice();
		
		request.setAttribute("Notice", noticelist);
		
	}

}
