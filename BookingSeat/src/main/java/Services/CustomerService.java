package Services;


import java.sql.Statement;

import Controller.DBconnect;
import Model.Customer;

public class CustomerService {
	public void bookingCustomer(Customer cus) {
		try {
			String query =" insert into booking values ('"+cus.getTNum()+"','"+cus.getFrom()+"','"+cus.getTo()+"','"+cus.getDate()+"','"+cus.getPassengers()+"')";
			
			Statement statement = DBconnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	public void ReadCustomer(Customer customer) {
		try {
			
			
			String query = "update booking SET from='"+customer.getFrom()+"' to='"+customer.getTo()+"' date='"+customer.getDate()+"' passengers='"+customer.getPassengers()+"' where Tnum = '"+customer.getTNum()+"'";
			
			Statement statement = DBconnect.getConnection().createStatement();
			statement.execute(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	

}


