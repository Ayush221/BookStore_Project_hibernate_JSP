<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.UserDao,com.book.Book,com.cart.Cart,java.util.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart Details</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<header>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">More's Bookstore</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="books.jsp">Books</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="logout.jsp">logout</a>
      </li>
      <li class="nav-item active">
              <a class="nav-link" href="logout.jsp">Logout</a>
      </li>
      
    </ul>
    
  </div>
</nav>
</header>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<h1 align="center">Items list</h1>  
<hr>
  
<%  
double total=0;
String m=(String)session.getAttribute("mobileno");
List<Cart> list=UserDao.getAllRecords(m);
request.setAttribute("list",list); 
Iterator<Cart> itr = list.iterator();
while (itr.hasNext()) {
    total += itr.next().getPrice();
 }
%>  
  
<table border="1" width="90%" align="center" style=text-align:center >  
<tr><th>Cart ID</th><th>Book Id</th><th>Mobile</th><th>Quantity</th>  
<th>Price</th><th>Remove from cart</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getCart_id()}</td><td>${u.getBookid()}</td><td>${u.getUser_id()}</td>  
<td>${u.getQuantity()}</td><td>${u.getPrice()}</td>   
<td><a href="deleteitem.jsp?cart_id=${u.getCart_id()}">Remove</a></td></tr> 
</c:forEach>  
</table>
<hr> 
<div class="container">
<div class="row" >
  <div class="col-md-4 col-12">
  <h1>Amount to Pay</h1>
  </div>
  <div class="col-md-4 col-12">
  <h1> <%=total %></h1>
  </div>
  <div class="col-md-4 col-12">
  <a href="purchase.jsp" class="btn btn-primary">Proceed to Pay</a>
  </div>
</div>
</div>
</body>
</html>