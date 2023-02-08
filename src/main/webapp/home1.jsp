<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<center><body bgcolor="lightgreen">
<%
	String email = (String) session.getAttribute("email");
	if(email==null)
	{
		response.sendRedirect("index.jsp");
	}
%>

<h1><font color="Red"> Incorrect Email Or Password</font></h1>
<br>
<hr>
<h2><a href="index.jsp"> Go Index Page</a></h2>
</body></center>