<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login to TRS!</title>
<link rel="stylesheet" href="login.css">

</head>
<body>

		<div class="description-box">
		<div class="flex-container">
		<h1 class="hd">SL Train Reservation Spot</h1>
		<a href="#" class="btn2">Contact Us</a>
		</div>
		

	<form action="login" method="post">
  <div class="imgcontainer">
    <img src="image/profile.png" alt="user" class="user" style="width:100px; height:100px;">
    <br><h1>User Login</h1>
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
   <a href="Home.jsp"> <button type="button" class="cancelbtn">Cancel</button></a>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>

</form>
  </div>
</body>
</html>