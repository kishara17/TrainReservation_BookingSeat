package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class login extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String Username, Password;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Username = request.getParameter("username");
		Password = request.getParameter("password");
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("BookingSeat.jsp");
		dispatcher.forward(request,response);
	
		
	}

}
