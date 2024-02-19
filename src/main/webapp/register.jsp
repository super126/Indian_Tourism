<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">

	body{
		background: url("./registeration.jpg");
		background-repeat: no-repeat;
		background-size: cover;
	}
form{
	text-align: center;
	padding-right: 100px;
	padding-left: 100px;
	padding-top:50px;
	padding-bottom:50px;
	margin-top: 200px;
	margin-left:500px;
	margin-right:500px;
	background:#6eaff7;
	color:#eeeeee;
	border-radius:20px;
	}
	
	.navbar{
		background:;font-family:calibri;padding-right:15px;padding-left:15px;
	}
	.navdiv{
	display:flex; align-items:center;justify-content:space-between;
	}
	.logo a{
		font-size:35px; font-weight:600; color:white;
	}
	.btn{
		background-color:rgb('#4adede');
	}
	#fm{
		border-radius:5px;
	}
</style>
<title>Register</title>
</head>
<body>
	<nav class="navbar">
		<div class="navdiv">
		   <div class="logo"><a href="#">INDIAN TOURISM</a></div>
		</div>
</nav><br>

	<form action="">
		NAME:<input type="text" name="name" placeholder="" id="fm"><br><br>
		PHONE_N0:<input type="number" name="phone" placeholder="" id="fm"><br><br>
		EMAIL:<input type="email" name="email" placeholder="" id="fm"><br><br>
		USERNAME:<input type="text" name="username" placeholder="" id="fm"><br><br>
		PAWSSWORD:<input type="password" name="pwd" placeholder="" id="fm"><br><br>
		<input class="btn" type="submit" value="REGISTER" id="fm">
	</form>
	<%
	String nm=request.getParameter("name");
	String pn=request.getParameter("phone");
	String em=request.getParameter("email");
	String un=request.getParameter("username");
	String pwd=request.getParameter("pwd");
	
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism","root","sangeeta@468");
		PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?,?)");
		ps.setString(1, nm);
		ps.setString(2, pn);
		ps.setString(3, em);
		ps.setString(4, em);
		ps.setString(5, pwd);
		ps.executeUpdate();
		response.sendRedirect("login.jsp");
	}catch(Exception e)
	{
		e.printStackTrace();
	}

	%>
</body>
</html>