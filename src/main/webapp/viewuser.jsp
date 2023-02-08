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
  
<center><h1 style="color:Red">All Records....</h1></center>
<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<center><table border="10" width="90%">  
<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th>  
<th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>  

<c:forEach items="${list}" var="u">  

	<tr><td>${u.getId()}
	</td><td>${u.getName()}
	</td><td>${u.getPassword()}
	</td><td>${u.getEmail()}
	</td><td>${u.getSex()}
	</td><td>${u.getCountry()}

	</td><td><h3 style="color:Blue;"><a href="editform.jsp?id=${u.getId()}">Edit</a></h3></td>  
	<td><h3 style="color:Blue;"><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></h3></td></tr>  

</c:forEach>  


</table>  
<br/><h3 style="color:Blue;"><a href="adduserform.jsp">Add New User</a></h3>  
<h3 style="color:Blue;"><a href="index1.jsp"> Go-Back To Index Page</a></h3>
<hr/>
<h2 style="color:Blue;"><a href="logout.jsp">Logout</a></h2>
</center>
  
</body>  
</html>  