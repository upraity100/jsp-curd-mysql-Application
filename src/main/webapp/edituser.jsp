<%@page import="com.curd.dao.UserDao"%>  
<jsp:useBean id="u" class="com.curd.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDao.update(u);  
response.sendRedirect("viewuser.jsp");  
%>  
<%
	String email = (String) session.getAttribute("email");
%>