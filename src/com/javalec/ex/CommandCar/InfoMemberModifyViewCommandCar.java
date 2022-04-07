package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;
import com.javalec.ex.Dto.BDto;

public class InfoMemberModifyViewCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String member_id = request.getParameter("member_id");
		System.out.println("member_id="+member_id);
		
		BDao dao = new BDao();
		BDto dto = dao.info_view(member_id);
		
		request.setAttribute("infoList_view", dto);

	}

}
