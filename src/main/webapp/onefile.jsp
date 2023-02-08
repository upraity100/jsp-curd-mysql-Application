<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title>  
</head>  
<body bgcolor="lightgreen"> 
<%
	String email = (String) session.getAttribute("email");
	if(email==null)
	{
		response.sendRedirect("index.jsp");
	}
%>
  
<%@page import="com.curd.dao.UserDao,com.curd.bean.User,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<center><h1 style="color:Red;"><marquee width="100%" behavir="alternat" bgcolor="pink">One User File</marquee></h1> 
  
<% 
	String id=request.getParameter("id");  
	User u = UserDao.getRecordById(Integer.parseInt(id));
	request.setAttribute("u",u);
%>  
 
<table border="10" width="90%">  

<tr>
	<th>Id</th>
	<th>Name</th>
	<th>Password</th>	
	<th>Email</th>  
	<th>Sex</th>
	<th>Country</th>
</tr>  

	<tr><td>${u.getId()}
	</td><td>${u.getName()}
	</td><td>${u.getPassword()}
	</td><td>${u.getEmail()}
	</td><td>${u.getSex()}
	</td><td>${u.getCountry()}



</table>  
<br/><h3 style="color:Green;"><a href="index1.jsp">View Index Page</a></h3><br/> 
 </center>
   
</body>  
</html>  