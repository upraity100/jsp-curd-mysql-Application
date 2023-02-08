<%@page import="com.curd.dao.UserDao"%>  

<jsp:useBean id="u" class="com.curd.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
 
<%  
UserDao.delete(u);  
response.sendRedirect("viewuser.jsp");  
%>  

