<%@page import="com.toho.utility.DBConnect"  %>
<%@page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String organparts=request.getParameter("organparts");
String status="pending";
try
{
	Connection con=DBConnect.getConnect();
	PreparedStatement ps=con.prepareStatement("insert into organrequest values(?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, mobilenumber);
	ps.setString(3, email);
	ps.setString(4, organparts);
	ps.setString(5, status);
	ps.executeUpdate();
	response.sendRedirect("index.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("index.jsp?msg=invalid");
	}

%>