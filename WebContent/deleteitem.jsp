<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.UserDao,com.cart.Cart"%>  
<jsp:useBean id="u" class="com.cart.Cart"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%  
UserDao.delete(u);  
response.sendRedirect("viewcart.jsp");  
%> 

</body>
</html>