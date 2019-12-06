<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.UserDao,com.user.User"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String m=request.getParameter("mobileno");
session.setAttribute("mobileno",m);
String pass=request.getParameter("password");
session.setAttribute("password",pass);
User u=UserDao.login(m);
if(pass.equals(u.getPassword()))
{
	request.getRequestDispatcher("books.jsp").include(request, response); 	
}
else
{
	  %><script>alert("Sorry invalid username and password");</script>
	  <% 
	  request.getRequestDispatcher("index.html").include(request, response);
}

%>

</body>
</html>