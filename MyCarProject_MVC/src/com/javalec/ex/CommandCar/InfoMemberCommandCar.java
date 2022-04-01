package com.javalec.ex.CommandCar;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;
import com.javalec.ex.Dto.BDto;

public class InfoMemberCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		BDao dao = new BDao();
		
		ArrayList<BDto> infoList = dao.info();
		
		request.setAttribute("infoList", infoList);
	}

}
