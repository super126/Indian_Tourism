package allServlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
@WebServlet("/Loginkar")
public class LoginKar extends HttpServlet
{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String un=req.getParameter("username");
		String pwd=req.getParameter("password");
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism","root","sangeeta@468");
			PreparedStatement ps=con.prepareStatement("select * from user where username=? and password=?");
			ps.setString(1, un);
			ps.setString(2, pwd);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				HttpSession session =req.getSession();				
				session.setAttribute("uname", un);				
				resp.sendRedirect("home.jsp");
			}else
			{	
				resp.setContentType("text/html");
				PrintWriter pw=resp.getWriter();
				pw.print("INCORRECT EMAIL OR PASSWORD....");
				RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
				rd.include(req, resp);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
