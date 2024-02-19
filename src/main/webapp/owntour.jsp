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
		background: url("./create1.jpg");
		background-repeat: no-repeat;
		background-size:cover;
	}
	form{
	text-align: center;
	padding-right: 200px;
	padding-left: 200px;
	padding-top:100px;
	padding-bottom:100px;
	margin-bottom:300px;
	margin-top: 300px;
	margin-left:400px;
	margin-right:400px;
	background:#7dace4;
	border-radius:20px;	
	}
	#fm{
		border-radius:5px;
	}
</style>
<title>Create your own tour</title>
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

	<nav>
	<form action=" " style="text-align: center; padding: 150px">
					<h3>BOOK YOUR OWN TOUR</h3>
		SPECIFIC PLACE:<input type="text" name="Specific_place" placeholder=" " id="fm"><br><br>
		NAME:<input type="text" name="name" placeholder="" id="fm"><br><br>
		PHONE_N0:<input type="number" name="phone" placeholder="" id="fm"><br><br>
		NO OF PEOPLES:<input type="number" name="no_ppl" placeholder="" id="fm"><br><br>
		HOW YOU WANT TO TRAVEL:<br>
							<label for="">1.Car</label>
							<input type="radio" name="mode" value="Car"><br>
							<label for="">2.Train</label>
							<input type="radio" name="mode" value="Train"><br>
							<label for="">3.Aeroplane</label>
							<input type="radio" name="mode" value="Aeroplane"><br><br>
		ARRIVAL DATE:<input type="date" name="arrival" placeholder="" id="fm"><br><br>
		DEPATURE DATE:<input type="date" name="departure" placeholder="" id="fm"><br><br>
		<input type="submit" value="OWNTOUR" id="fm">
		</form>
		</nav>
		<%
			String sp=request.getParameter("Specific_place");
			String nm=request.getParameter("name");
			String pn=request.getParameter("phone");
			String np=request.getParameter("no_ppl");
			String md=request.getParameter("mode");
			String ad=request.getParameter("arrival");
			String dd=request.getParameter("departure");
			
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism","root","sangeeta@468");
				PreparedStatement ps=con.prepareStatement("insert into owntour values(?,?,?,?,?,?,?)");
				ps.setString(1, sp);
				ps.setString(2, nm);
				ps.setString(3, pn);
				ps.setString(4, np);
				ps.setString(5, md);
				ps.setString(6, ad);
				ps.setString(7, dd);
				ps.executeUpdate();
				response.sendRedirect("home.jsp");
			}catch(Exception e) {
				e.printStackTrace();
			}
		%>
	</body>
	</html>