<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.UserDao"%>  
<jsp:useBean id="obj" class="com.user.User">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  
String i=UserDao.register(obj);  
if(i!=null)  
out.print("You are successfully registered");  
  
%> 
<a href="index.html"><button type ="button"> Go To Homepage </button></a>
</body>
</html>