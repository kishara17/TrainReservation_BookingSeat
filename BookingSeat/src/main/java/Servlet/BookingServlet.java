package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Customer;
import Services.CustomerService;


@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Customer cus= new Customer();
		
		cus.setTNum(request.getParameter("TNum"));
		cus.setFrom(request.getParameter("from"));
		cus.setTo(request.getParameter("to"));
		cus.setDate(request.getParameter("date"));
		cus.setPassengers(Integer.parseInt(request.getParameter("passengers")));
		
		CustomerService service = new CustomerService();
		service.bookingCustomer(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Read.jsp");
		
		
		dispatcher.forward(request,response);
	}
 
}
