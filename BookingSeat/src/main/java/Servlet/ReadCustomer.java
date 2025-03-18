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

@WebServlet("/UpdateCustome")
public class ReadCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ReadCustomer() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Customer cus = new Customer();
		
		cus.setFrom(request.getParameter("from"));
		cus.setFrom(request.getParameter("to"));
		cus.setFrom(request.getParameter("date"));
		cus.setPassengers(Integer.parseInt(request.getParameter("passengers")));
		
		CustomerService service = new CustomerService();
		service.ReadCustomer(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Update.jsp");
		dispatcher.forward(request, response);
	}

}
