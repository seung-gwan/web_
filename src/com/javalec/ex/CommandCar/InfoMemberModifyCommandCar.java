package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;

public class InfoMemberModifyCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String member_pw = request.getParameter("member_pw");
		String member_name = request.getParameter("member_name");
		String member_address = request.getParameter("member_address");
		String member_address_detail1 = request.getParameter("member_address_detail1");
		String member_address_detail2 = request.getParameter("member_address_detail2");
		String member_address_num= request.getParameter("member_address_num");
		String member_email = request.getParameter("member_email");
		String member_gender = request.getParameter("member_gender");
		String member_car = request.getParameter("member_car");
		String member_id = request.getParameter("member_id");
		BDao dao = new BDao();
		
		dao.info_modify(member_pw,member_name,member_address,member_address_detail1,member_address_detail2,member_address_num,member_email,member_gender,member_car,member_id);
		
	}

}
