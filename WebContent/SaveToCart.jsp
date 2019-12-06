<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@page import="com.dao.UserDao,com.book.Book"%>  
<jsp:useBean id="obj" class="com.book.Book">  
</jsp:useBean> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

int b=(Integer)session.getAttribute("book_id");


double q=(Double)session.getAttribute("price");


int qt=(Integer)session.getAttribute("quantity");


String m=(String)session.getAttribute("mobileno");


int i=UserDao.save(b, qt, q, m);
if(i>0)
{
	request.getRequestDispatcher("cartmessage.jsp").include(request, response);	
}

%>

</body>
</html>