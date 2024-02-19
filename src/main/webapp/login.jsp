
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
	body{
		background: url("login1.png");
	}
	form {
		text-align: center;
		padding-right: 100px;
		padding-left: 100px;
		padding-top:100px;
		padding-bottom:100px;
		margin-top: 200px;
		margin-left:500px;
		margin-right:500px;
		background:#048998;
		color: white;
	}
	
	.navbar{
	background:;font-family:calibri;padding-right:15px;padding-left:15px;
	}
	.logo a{
		font-size:35px; font-weight:600; color:white;
	}
	.acc h3{
		color: white;
	}
	#fm{
		border-radius:5px;
	}
</style>
</head>
<body>

		<nav class="navbar">
		<div class="navdiv">
		   <div class="logo"><a href="#">INDIAN TOURISM</a></div>
		</div>
		</nav><br>

		<form action="Loginkar" >
		USERNAME:<input type="text" name="username" placeholder="" id="fm"><br><br>
		PASSWORD:<input type="password" name="password" id="fm"><br><br>
		<input type="submit" value="login" id="fm"><br><br>
		<a class="acc" href="register.html"><h3>New user? click here to create account</h3></a>
		</form>
</body>
</html>