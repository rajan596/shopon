<%@ page import="java.sql.*" %>

<%

/* get user details from registration form  */
String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
String pcompany=request.getParameter("pcompany");
String pprice=request.getParameter("pprice");
String pdetails=request.getParameter("pdetail");
String pphoto=request.getParameter("pphoto");
String pcat=request.getParameter("pcat");
String psubcat=request.getParameter("psubcat");
String pquant=request.getParameter("pquant");

try{
	/* connect database */
	 
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shopon",
			"root","");

	/* insert record into database */
	
	Statement st=conn.createStatement();
	String query="INSERT INTO product (productID , productName , productCompany , productPrice , productDetails , productPhoto , productCategory , productSubCategory , productQuantity) "+
		"VALUES('"+pid+"','"+pname+"','"+pcompany+"','"+pprice+"','"+pdetails+"','"+pphoto+"','"+pcat+"','"+psubcat+"','"+pquant+"')";
	
	int status;
	status=st.executeUpdate(query);
	
	out.println("status >>" + status);
	
	if(status>0) {
		out.println("Successfully Product Added ");
		//response.sendRedirect("enter.jsp");
	}
	else {
		out.println("failed");
	}
	
}
catch(Exception e) {
	out.println("Problem >> " + e);
}

%>