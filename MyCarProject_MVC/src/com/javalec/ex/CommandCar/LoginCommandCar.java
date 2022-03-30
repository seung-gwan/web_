package com.javalec.ex.CommandCar;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ex.Dao.BDao;




public class LoginCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	   
		String member_id = request.getParameter("Id");
		String member_pw = request.getParameter("Pw");
		BDao dao = new BDao();
		
		int resultlogin = dao.login(member_id, member_pw);
		
		
		if(resultlogin == 1) {
			
			request.setAttribute("resultlogin", resultlogin);
			HttpSession session = request.getSession();
			session.setAttribute("sessionID", member_id);
			
		} else {
			request.setAttribute("resultlogin", resultlogin);
			
		}
		
		
		
		
		
		

	}

}
