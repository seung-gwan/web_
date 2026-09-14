package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ex.Dao.BDao;

public class LoginCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String memberId = request.getParameter("Id");
		String memberPassword = request.getParameter("Pw");
		memberId = memberId == null ? "" : memberId.trim();
		memberPassword = memberPassword == null ? "" : memberPassword;

		int result = 0;
		if (!memberId.isEmpty() && !memberPassword.isEmpty()) {
			result = new BDao().login(memberId, memberPassword);
		}

		request.setAttribute("resultlogin", result);
		request.setAttribute("loginId", memberId);
		if (result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("sessionID", memberId);
			request.setAttribute("loginSuccess", true);
		}
	}
}
