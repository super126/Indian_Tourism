<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Booking Done</title>
</head>
<body>
	<%
	String nm=request.getParameter("name");
	String pn=request.getParameter("phone");
	String np=request.getParameter("no_ppl");
	String nd=request.getParameter("no_days");
	String place = request.getParameter("place");
	
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism","root","sangeeta@468");
		PreparedStatement ps=con.prepareStatement("insert into hotel values(?,?,?,?,?)");
		ps.setString(1, nm);
		ps.setString(2, pn);
		ps.setString(3, np);
		ps.setString(4, nd);
		ps.setString(5, place);
		ps.executeUpdate();
		response.sendRedirect("home.jsp");
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	%>
</body>
</html>