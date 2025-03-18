<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome TRS!</title>

<link rel="stylesheet" href="update.css">

</head>
<body>

		<div class="description-box">
		<div class="flex-container">
		<a href='Home.jsp'><img src="image/profile.png" class="pimg" alt="profile"></a>
		<h1 class="hd">SL Train Reservation Spot</h1>
		<a href="#" class="btn2">Contact Us</a>
		</div>
		
		

	
	<div id="div4">
			<div class="div6">
		<h1>Here is Your Booking Details!</h1>
		<p id="para2"> Here is your Booking Details. If you want any changes click on update button for update your booking. Safe travels! </p>
		
		<form method="post" action="ReadCustomer"  class="form">
		
		<fieldset disabled>
 		 <label for="input_box">From:</label><br>
 		 <input type="text" id="From" name="from" value="${param.from}"><br><br>
 		 
 		 <label for="input_box">To:</label><br>
 		 <input type="text" id="To" name="to" value="${param.to}"><br><br>
 		 
 		 <label for="input_box">Date:</label><br>
 		 <input type="Date" id="Date" name="date" value="${param.date}"><br><br>
 		 
 		 <label for="input_box">No of Passengers:</label><br>
 		 <input type="text" id="NoOfPassengers" name="passengers" value="${param.passengers}"><br><br>
 		 </fieldset>
 		  </form>
 		 
 		 <form action="update.jsp" method="post">
 		 <input type="hidden" name="name" value="${cus.from}">
		<input type="hidden" name="name" value="${cus.to}">
		<input type="hidden" name="name" value="${cus.date}">
		<input type="hidden" name="name" value="${cus.passengers}">
		
		<input type="submit" value="Update" class="proceed">
 		 
 		 </form>
	
		</div>
	

	</div>
	<br />

</div>
</body>
</html>