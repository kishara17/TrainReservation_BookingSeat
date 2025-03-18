package Model;

public class Customer {
	
	String TNum;
	String from;
	String to;
	String date;
	int passengers;
	
	
	public String getTNum() {
		return TNum;
	}
	public void setTNum(String tNum) {
		TNum = tNum;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getPassengers() {
		return passengers;
	}
	public void setPassengers(int passengers) {
		this.passengers = passengers;
	}
	
	

}
