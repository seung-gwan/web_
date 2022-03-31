package com.javalec.ex.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ex.CommandCar.BuyReviewDeleteCommandCar;
import com.javalec.ex.CommandCar.BuyReviewListCommandCar;
import com.javalec.ex.CommandCar.BuyReviewModifyCommandCar;
import com.javalec.ex.CommandCar.BuyReviewModifyViewCommand;
import com.javalec.ex.CommandCar.BuyReviewViewCommandCar;
import com.javalec.ex.CommandCar.BuyReviewWriteCommandCar;
import com.javalec.ex.CommandCar.CommandCar;
import com.javalec.ex.CommandCar.LoginCommandCar;
import com.javalec.ex.CommandCar.NoticeListCommandCar;
import com.javalec.ex.CommandCar.NoticeViewCommandCar;
import com.javalec.ex.CommandCar.SellReviewDeleteCommandCar;
import com.javalec.ex.CommandCar.SellReviewListCommandCar;
import com.javalec.ex.CommandCar.SellReviewModfiyViewCommandCar;
import com.javalec.ex.CommandCar.SellReviewModifyCommandCar;
import com.javalec.ex.CommandCar.SellReviewViewCommandCar;
import com.javalec.ex.CommandCar.SellReviewWriteCommandCar;
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
		}else if(com.equals("/Notice.do")) {
			command = new NoticeListCommandCar();
			command.execute(request, response);
			viewPage = "CustomerService.jsp";
		}else if(com.equals("/Notice_view.do")) {
			System.out.println("start");
			command = new NoticeViewCommandCar();
			command.execute(request, response);
			viewPage = "Notice_View.jsp";
		}else if(com.equals("/SellReview.do")) {
			command = new SellReviewListCommandCar();
			command.execute(request, response);
			viewPage="SellReview.jsp";
		}else if(com.equals("/SellReview_view.do")) {
			command = new SellReviewViewCommandCar();
			command.execute(request, response);
			viewPage="SellReview_view.jsp";
		}else if(com.equals("/SellReview_Modify_view.do")) {
			command = new SellReviewModfiyViewCommandCar();
			command.execute(request, response);
			viewPage="SellReview_modify.jsp";
		} else if(com.equals("/SellReview_modify.do")) {
			command = new SellReviewModifyCommandCar();
			command.execute(request, response);
			viewPage="SellReview_view.do";
		} else if(com.equals("/SellReview_delete.do")) {
			command = new SellReviewDeleteCommandCar();
			command.execute(request, response);
			viewPage="SellReview.jsp";
		} else if(com.equals("/SellReview_write.do")) {
			command = new SellReviewWriteCommandCar();
			command.execute(request, response);
			viewPage="SellReview.do";
		} else if(com.equals("/BuyReview.do")) {
			command = new BuyReviewListCommandCar();
			command.execute(request, response);
			viewPage="BuyReview.jsp";
		} else if(com.equals("/BuyReview_view.do")) {
			command = new BuyReviewViewCommandCar();
			command.execute(request, response);
			viewPage="BuyReview_view.jsp";
		} else if(com.equals("/BuyReview_Modify_view.do")) {
			command = new BuyReviewModifyViewCommand();
			command.execute(request, response);
			viewPage="BuyReview_modify.jsp";
		} else if(com.equals("/BuyReview_modify.do")) {
			System.out.println("start!");
			command = new BuyReviewModifyCommandCar();
			command.execute(request, response);
			viewPage="BuyReview_view.do";
		} else if(com.equals("/BuyReview_delete.do")) {
			command = new BuyReviewDeleteCommandCar();
			command.execute(request, response);
			viewPage="BuyReview.jsp";
		} else if(com.equals("/BuyReview_write.do")) {
			command = new BuyReviewWriteCommandCar();
			command.execute(request, response);
			viewPage="BuyReview.do";
		}
		
		
			
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); 
		dispatcher.forward(request, response);
	}

}
