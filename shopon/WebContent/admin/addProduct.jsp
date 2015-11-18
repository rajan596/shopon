<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<% String category=null; %>

</head>
<body>

<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/shopon",
				"root","");

%>

<form method="post" action="../api/addProduct.jsp">
	<h3>Product Id:</h3>
	<input type="text" name="pid" >
	
	<h3>Product Name:</h3>
	<input type="text" name="pname" >
	
	<h3>Product Brand:</h3>
	<select name="pcompany">
		<%	
			PreparedStatement ps=conn.prepareStatement(""+
				"select companyName from  company");
		
			ResultSet rs=ps.executeQuery();
		
		 while(rs.next()) { %>
			<option value="<%=rs.getString(1)%>" > <%=rs.getString(1)%> </option>
		<% } %>
	</select>
	
	<h3>Product Price:</h3>
	<input type="text" name="pprice">
	
	<h3>Product Detail:</h3>
	<input type="text" name="pdetail" >
	
	<h3>Product Image:</h3>
	<input type="file" name="pphoto" >
	
	<h3>Product category </h3>
		<select name="pcat" id="categoryBox" onchange="populateCategory()">
		<%	
			ps=conn.prepareStatement("select categoryName from category");
			rs=ps.executeQuery();
		
		 while(rs.next()) { %>
			<option value="<%=rs.getString(1)%>" > <%=rs.getString(1)%> </option>
		<% } %>
	</select>
	
	<h3>Product Subcatagory:</h3>
		<select name="psubcat">
		<%	
			ps=conn.prepareStatement("select subCategoryName from subcategory");
			rs=ps.executeQuery();
		
		 while(rs.next()) { %>
			<option value="<%=rs.getString(1)%>" > <%=rs.getString(1)%> </option>
		<% } %>
	</select>
	
	<h3>Product Quantity:</h3>
	<input type="text" name="pquant" >
	
	<input type="submit" value="done">
	<input type="reset" value="reset">

</form>
</body>
</html>