<%@ page import ="java.sql.*" %>

<%

/* get user details from registration form  */
String username=request.getParameter("usernamesignup");
String password=request.getParameter("passwordsignup");
String email=request.getParameter("emailsignup");
String mobile=request.getParameter("mobilesignup");

out.println(email);

try{
	/* connect database */
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/shopon",
			"root","");

	/* insert record into database */
	
	Statement st=conn.createStatement();
	st="INSERT INTO users (userName , userPassword , userEmail , userMobile) "+
		"VALUES('"+username+"','"+password+"','"+email+"','"+mobile+"')";
	
	int status;
	status=st.executeUpdate(ps);
	
	out.println("status >>" + status);
	
	if(status>0) {
		out.println("Successfully Registered " + username);
		//request.sendRedirect("enter.jsp");
	}
	else {
		out.println("Registration failed");
	}
	
}
catch(Exception e) {
	out.println("Problem >> " + e);
}
%>