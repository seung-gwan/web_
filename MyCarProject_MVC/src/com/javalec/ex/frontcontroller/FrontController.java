package com.javalec.ex.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ex.CommandCar.CommandCar;
import com.javalec.ex.CommandCar.LoginCommandCar;
import com.javalec.ex.CommandCar.joinCommandCar;




/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String viewPage = null;
		CommandCar command = null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		System.out.println("uri="+uri);
		System.out.println("conPath="+conPath);
		System.out.println("com="+com);
		
		if(com.equals("/login.do")) {
			command = new LoginCommandCar();
			command.execute(request, response);
			viewPage = "index.jsp";
		}else if(com.equals("/join.do")) {
			command = new joinCommandCar();
			command.execute(request, response);
			viewPage = "index.jsp";
		}else if(com.equals("/logout.do")) {
			HttpSession session = request.getSession();
			session.invalidate();
			viewPage = "index.jsp";
		}else if(com.equals("/logout1.do")) {
			HttpSession session = request.getSession();
			session.invalidate();
			viewPage = "CustomerService.jsp";
		}
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); 
		dispatcher.forward(request, response);
	}

}
