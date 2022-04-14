<%@page import="com.toho.utility.DBConnect"%>
<%@page import="java.sql.*"%>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
	Connection con=DBConnect.getConnect();
	Statement st=con.createStatement();
	st.executeUpdate("delete from organrequest where mobilenumber='"+mobilenumber+"'");
	response.sendRedirect("requestForOrgan.jsp");
	}
catch(Exception e)
{
	response.sendRedirect("requestForOrgan.jsp");
	}
%>