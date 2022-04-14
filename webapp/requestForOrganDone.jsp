<%@page import="com.toho.utility.DBConnect"%>
<%@page import="java.sql.*"%>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
	Connection con=DBConnect.getConnect();
	PreparedStatement ps=con.prepareStatement("update organrequest set status='completed' where mobilenumber=?");
	ps.setString(1, mobilenumber);
	ps.executeUpdate();
	response.sendRedirect("requestForOrgan.jsp");
	}
catch(Exception e)
{
	response.sendRedirect("requestForOrgan.jsp");
	}
%>