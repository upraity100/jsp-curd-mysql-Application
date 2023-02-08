<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<body bgcolor="lightgreen">
<%
	String email = (String) session.getAttribute("email");
	if(email==null)
	{
		response.sendRedirect("index.jsp");
	}
%>


<%@page import="com.curd.dao.UserDao" %>

<jsp:useBean id="obj" class="com.curd.bean.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<center>
<% 
	int status = UserDao.validate(obj);
	if(status==1)
	{
		session.setAttribute("email",obj.getEmail());
		response.sendRedirect("home.jsp");
	}	
	else
	{
		session.setAttribute("email",obj.getEmail());
		response.sendRedirect("home1.jsp");
	}
%>
<hr>

<br><br><h2><a href="index.jsp"> Go Index Page</a></h2></center>

</body>
</html>