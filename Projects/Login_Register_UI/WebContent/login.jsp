<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SURAJ_login_reg</title>
<script type="text/javascript">
		document.write("<h1>"+Date()+"</h1>")

	</script>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
String userid=request.getParameter("user"); 
session.setAttribute("user",userid); 
String pwd=request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","illusio9"); 
Statement st= con.createStatement(); 
ResultSet rs = st.executeQuery("SELECT * FROM Users WHERE Userid='"+userid+"'");
while (rs.next()) { 
    if (rs.getString(2).equals(pwd)) 
{ 
    	out.println("welcome   "+userid); 
    
} 
else 
{ 
	    out.println("Invalid password try again"); 
} 
} 

%>
<br/><br/>
<a href="index.html">Home</a>
</body>
</html>