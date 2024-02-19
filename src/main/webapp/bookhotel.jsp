<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="home.css">
<style type="text/css">
#fm{
		border-radius:5px;
	}
	body{
		background: url("./bookpage.jpg");
	}
	form{
	text-align: center;
	padding-right: 100px;
	padding-left: 100px;
	margin-top: 200px;
	margin-left:500px;
	margin-right:500px;
	background-color:gray;
	color:yellow;
	border-radius:20px;
	}
	
</style>
<title>Book Hotel</title>
</head>
<body>

	<nav class="navbar">
		<div class="navdiv">
		   <div class="logo"><a href="#">INDIAN TOURISM</a>
		   </div>
		</div>
</nav><br>

	<nav>
	<%
	
		String place=request.getParameter("place");
	
	%>
	<form action="bookhotelDone.jsp">
				<h3>BOOK HOTEL</h3>
		NAME:<input type="text" name="name" placeholder="" id="fm"><br><br>
		PHONE_N0:<input type="number" name="phone" placeholder="" id="fm"><br><br>
		NO OF PEOPLES:<input type="number" name="no_ppl" placeholder="" id="fm"><br><br>
		NO OF DAYS:<input type="number" name="no_days" placeholder="" id="fm"><br><br>
		PLACE<input type="hidden" name="place" value=<%= place %>><br><br>
		<input type="submit" value="BOOK" id="fm">
	</form>
	</nav>
</body>
</html>