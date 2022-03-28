package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;

public class joinCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String member_id = request.getParameter("Id");
		String member_pw = request.getParameter("Pw");
		String member_name = request.getParameter("Name");
		String member_address = request.getParameter("roadAddrPart1");
		String member_address_detail1 = request.getParameter("addrDetail");
		String member_address_detail2 = request.getParameter("roadAddrPart2");
		String member_address_num = request.getParameter("zipNo");
		String member_email = request.getParameter("Email");
		String member_gender = request.getParameter("gender");
		String member_car = request.getParameter("Car");
		
		BDao dao = new BDao();
		
		dao.join(member_id,member_pw,member_name,member_address,member_address_detail1,member_address_detail2,member_address_num,member_email,member_gender,member_car);
		

	}

}
