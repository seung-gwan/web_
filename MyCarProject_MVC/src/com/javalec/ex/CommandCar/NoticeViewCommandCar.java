package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;
import com.javalec.ex.Dto.BDto2;

public class NoticeViewCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		
		String bNum = request.getParameter("bNum");
		
		BDao dao = new BDao();
		BDto2 dto = dao.Notice_view(bNum);
		
		request.setAttribute("Notice_view", dto);
	}

}
