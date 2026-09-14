package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ex.Dao.BDao;

public class joinCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String memberId = value(request.getParameter("Id")).trim();
		String memberPassword = value(request.getParameter("Pw"));
		String passwordConfirm = value(request.getParameter("PwConfirm"));
		String memberName = value(request.getParameter("Name")).trim();
		String memberAddress = value(request.getParameter("roadAddrPart1")).trim();
		String memberAddressDetail1 = value(request.getParameter("addrDetail")).trim();
		String memberAddressDetail2 = value(request.getParameter("roadAddrPart2")).trim();
		String memberAddressNumber = value(request.getParameter("zipNo")).trim();
		String memberEmail = value(request.getParameter("Email")).trim();
		String memberGender = value(request.getParameter("gender")).trim();
		String memberCar = value(request.getParameter("Car")).trim();

		request.setAttribute("joinId", memberId);
		request.setAttribute("joinName", memberName);
		request.setAttribute("joinEmail", memberEmail);
		request.setAttribute("joinCar", memberCar);

		if (!memberId.matches("[A-Za-z0-9_]{4,50}") || memberPassword.length() < 4
				|| memberName.isEmpty() || memberEmail.isEmpty()) {
			request.setAttribute("joinResult", 0);
			request.setAttribute("joinMessage", "필수 항목을 형식에 맞게 입력해 주세요.");
			return;
		}
		if (!memberPassword.equals(passwordConfirm)) {
			request.setAttribute("joinResult", 0);
			request.setAttribute("joinMessage", "비밀번호 확인이 일치하지 않습니다.");
			return;
		}

		int result = new BDao().join(memberId, memberPassword, memberName, memberAddress,
				memberAddressDetail1, memberAddressDetail2, memberAddressNumber, memberEmail,
				memberGender, memberCar);
		request.setAttribute("joinResult", result);
		if (result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("sessionID", memberId);
			request.setAttribute("joinSuccess", true);
		} else if (result == -1) {
			request.setAttribute("joinMessage", "이미 사용 중인 아이디입니다.");
		} else {
			request.setAttribute("joinMessage", "회원가입을 완료하지 못했습니다. 잠시 후 다시 시도해 주세요.");
		}
	}

	private String value(String input) {
		return input == null ? "" : input;
	}
}
