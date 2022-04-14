<%@page import="com.toho.utility.DBConnect"%>
<%@page import="java.sql.*"%>
<%
String organparts=request.getParameter("organparts");
String incdec=request.getParameter("incdec");
String units=request.getParameter("units");
int units1=Integer.parseInt(units);
try
{
	Connection con=DBConnect.getConnect();
	Statement st=con.createStatement();
	if(incdec.equals("inc"))
		st.executeUpdate("update stock set units=units+'"+units1+"' where organparts='"+organparts+"'");
	else
		st.executeUpdate("update stock set units=units-'"+units1+"' where organparts='"+organparts+"'");
	response.sendRedirect("manageStock.jsp?msg.valid");
}

catch(Exception e)
{
	response.sendRedirect("manageStock.jsp?msg.invalid");
	}
%>