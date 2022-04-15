package com.javalec.ex.CommandCar;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ex.Dao.BDao;




public class LoginCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	   
		String member_id = request.getParameter("Id");
		System.out.println("Id="+member_id);
		String member_pw = request.getParameter("Pw");
		System.out.println("Pw="+member_pw);
		BDao dao = new BDao();
		
		int resultlogin = dao.login(member_id, member_pw);
		
		
		if(resultlogin == 1) {
			
			request.setAttribute("resultlogin", resultlogin);
			HttpSession session = request.getSession();
			session.setAttribute("sessionID", member_id);
			
		} else {

			request.setAttribute("resultlogin", resultlogin);
			HttpSession session = request.getSession();
			session.setAttribute("resultlogin", resultlogin);
			
		} 
		
		System.out.println("resultlogin="+resultlogin);
		
		
		
		

	}

}
