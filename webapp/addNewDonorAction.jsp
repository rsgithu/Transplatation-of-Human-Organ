<%@page import="com.toho.utility.DBConnect"%>
<%@page import="java.sql.*"%>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String father = request.getParameter("father");
String mother = request.getParameter("mother");
String mobilenumber = request.getParameter("mobilenumber");
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String organparts = request.getParameter("organparts");
String address = request.getParameter("address");
try {
	Connection con = DBConnect.getConnect();
	PreparedStatement ps = con.prepareStatement("insert into donor values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, father);
	ps.setString(4, mother);
	ps.setString(5, mobilenumber);
	ps.setString(6, gender);
	ps.setString(7, email);
	ps.setString(8, organparts);
	ps.setString(9, address);
	ps.executeUpdate();
	response.sendRedirect("addNewDonor.jsp?msg=valid");
} catch (Exception e) {
	response.sendRedirect("addNewDonor.jsp?msg=invalid");
}
%>