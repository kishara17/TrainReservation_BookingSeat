<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome TRS!</title>
<link rel="stylesheet" href="UserHome_Css.css">
<link rel="stylesheet" href="BookingSeat.css">

</head>
<body>
<header>
		<div class="description-box">
		<div class="flex-container">
		<a href='Home.jsp'><img src="image/profile.png" class="pimg" alt="profile"></a>
		<h1 class="hd">SL Train Reservation Spot</h1>
		<a href="#" class="btn2">Contact Us</a>
		</div>
		<h3 class="h3">Book your train tickets hassle-free!</h3>
		
		
		</div>
		<div class="home">
			<p class="navi">
				<a href="login.jsp">Login</a>
			</p>
		</div>
		<div class="home">
			<p class="navi">
				<a href="Home.jsp">Home</a>
			</p>
		</div>
		<div class="home">
			<p class="navi">
				<a href="#">Registration</a>
			</p>
		</div>
		<div class="home">
			<p class="navi">
				<a href="#">SearchTrains</a>
			</p>
		</div>
		<div class="home">
			<p class="navi">
				<a href="BookingSeat.jsp">Booking Seat</a>
			</p>
		</div>
		<div class="home">
			<p class="navi">
				<a href="#">Make Payment</a>
			</p>
		</div>
		<div class="home">
			<p class="navi">
				<a href="#">Profile</a>
			</p>
		</div>
		<div class="home">
			<p class="navi">
				<a href="#">Logout</a>
			</p>
		</div>
	</header>


	
	<div id="div4">
			<p class="para1">"Thank you for choosing <br>our online Booking Service to book your Seat!. <br></P>
			<div class="div6">
		<h1> Booking Seat</h1>
		<p id="para2"> Enter the required details below to book your train seats. Provide information such as your preferred train, departure and destination stations, travel date, and the number of seats needed. Once completed, click "Submit" to confirm your booking. Safe travels! </p>
		
	
		<form method="post" action="BookingServlet"  class="form">
		
		<label for="trainNum">Train Name:</label><br>
 		<select name="TNum" class="select" >
 		
 		<option value="Udarata Manike">Udarata Manike</option>
  		<option value="Podi Menike">Podi Menike</option>
  		<option value="Yal Devi">Yal Devi</option>
  		<option value="Ruhunu Kumari">Ruhunu Kumari</option>
  		<option value="Badulla night express">Badulla night express</option>
  		<option value="Senkadagala Menike">Senkadagala Menike</option>
		 </select>
 		 <br>
 		 
 		 <label for="input_box">From:</label><br>
 		 <input type="text" id="From" name="from" ><br><br>
 		 
 		 <label for="input_box">To:</label><br>
 		 <input type="text" id="To" name="to" value="${cus.to}"><br><br>
 		 
 		 <label for="input_box">Date:</label><br>
 		 <input type="Date" id="Date" name="date" value="${cus.date}"><br><br>
 		 
 		 <label for="input_box">No of Passengers:</label><br>
 		 <input type="text" id="NoOfPassengers" name="passengers" value="${cus.passengers}"><br><br>
 		 
 		 <button class="proceed" type="submit">Submit</button>
 		 </form>

		<input type="hidden" name="name" value="${cus.from}">
		<input type="hidden" name="name" value="${cus.to}">
		<input type="hidden" name="name" value="${cus.date}">
		<input type="hidden" name="name" value="${cus.passengers}">
		

		</div>
	
	
	</div>
	<br />



</body>
</html>