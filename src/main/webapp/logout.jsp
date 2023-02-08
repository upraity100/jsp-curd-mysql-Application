<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightgreen">

<%
	String email = (String) session.getAttribute("email");
	if(email==null)
	{
		response.sendRedirect("index.jsp");
	}
%>

<%
	session.invalidate();
%>

<center><h1><font color="Red"> You are Sucessfully logout..</font></h1>
<a href="index.jsp"> Go-Back To Index Page</a>
</center>

</body>
</html>