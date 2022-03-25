package com.javalec.ex.CommandCar;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;
import com.javalec.ex.Dto.BDto;



public class LoginCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	   
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		BDao dao = new BDao();
		int dto = dao.login(member_id, member_pw);
		
		if(dto==1) {
			
			
		} else if (dto==0) {
			
		} else if(dto ==-1){
			
		}
		
		
		
		
		
		
		

	}

}
