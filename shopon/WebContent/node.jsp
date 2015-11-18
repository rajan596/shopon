<%@ page import ="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% if(session.getAttribute("username")==null) {%>
<a href="users/enter.jsp">Login Here</a>
<%} 
else {
	out.print(session.getAttribute("username")); 
%>
	<a href="users/logout.jsp">Logout</a>
<% } %>

<!-- Displaying Products -->

<%

try{
	/* connect database */
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shopon",
			"root","");

	/* execute query */
	
	PreparedStatement ps=conn.prepareStatement("select * from product");
	ResultSet rs=ps.executeQuery();
		
	while(rs.next()) { 
		%>
		<fieldset style="width:100px;margin-left:200px;">
		<%
		out.println(rs.getString(3)); %><br><% 
		out.println(rs.getString(4)); %><br><%
		out.println(rs.getString(5)); %><br><%
		out.println(rs.getString(6)); %><br><%
		out.println(rs.getString(7)); 
		%>
		</fieldset>
		<%
	}
}
catch(Exception e) {
	out.println("Connection problem >> " + e);
}
%>

</body>
</html>