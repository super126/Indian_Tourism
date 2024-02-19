<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="home.css">
<style type="text/css">
	body{
		background: url("./email.jpeg");
		background-size:cover;
	}
	#fm{
		border-radius:5px;
	}
	form {
		text-align: center;
		padding-right: 100px;
		padding-left: 100px;
		padding-top:500px;
		padding-bottom:500px;
		margin-top: 200px;
		margin-left:500px;
		margin-right:500px;
		background:#8f8787;
		border-radius:20px;
	}
</style>
<title>Contact us</title>
</head>
<body>
	<nav class="navbar">
		<div class="navdiv">
		   <div class="logo"><a href="#">INDIAN TOURISM</a></div>
		   <ul>
		   <li><a href="index.jsp">HOME</a></li>
		   	<li><a href="tour.jsp">TOUR</a></li>
			<li><a href="hotel.jsp">HOTEL</a></li>
			<li><a href="owntour.jsp">CREATE YOUR OWN TOUR</a></li>
			<li><a href="aboutus.jsp">ABOUT US</a></li>
			<li><a href="contactus.jsp">CONTACT US</a></li>
			<li><a href="logout">LOGOUT</a></li>
		   </ul>
		</div>
	</nav>
	<br>
	<form action="" style="text-align: center; padding:100px; ">
				<h3>CONTACT US</h3>
		NAME:<input type="text" name="name" placeholder="" id="fm"><br><br>
		EMAIL:<input type="email" name="email" placeholder="" id="fm"><br><br> 
		<textarea name="msg" rows="7" cols="30" placeholder="FEEDBACK" id="fm"></textarea><br><br>
		<input type="submit" value="Submit" id="fm">
	</form>
	
	<%
	String nm=request.getParameter("name");
	String em=request.getParameter("email");
	String ms=request.getParameter("msg");
	
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism","root","sangeeta@468");
		PreparedStatement ps=con.prepareStatement("insert into contactus values(?,?,?)");
		ps.setString(1, nm);
		ps.setString(2, em);
		ps.setString(3, ms);
		ps.executeUpdate();
		response.sendRedirect("contactus.jsp");
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	%>
</body>
</html>