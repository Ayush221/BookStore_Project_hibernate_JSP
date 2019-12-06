<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.UserDao,com.book.Book,com.cart.Cart"%>  





<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
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
        <a class="nav-link" href="viewcart.jsp">My Cart</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      
    </ul>
    
  </div>
</nav>
</header>
<%
if (session != null) {
	if (session.getAttribute("mobileno") != null) {
		String m = (String) session.getAttribute("mobileno");
		
	} else {
		response.sendRedirect("index.html");
	}
}

String quan=request.getParameter("quantity");

int quantity=Integer.parseInt(quan);
session.setAttribute("quantity",quantity);

int id=(Integer)session.getAttribute("book_id"); 
Book i=UserDao.cart(id);
double total=i.getPrice()*quantity;
session.setAttribute("price",total);
%>
<div class="container" >
                <h1 class="text-center text-capitalize">My Cart</h1>
                <hr class="w-25 mx-auto bg-primary "> 
                <div class="row">
                          <div class="col-md-6 col-12" >
                                       <img src="<%= i.getPath()%>" width="300" height="250" class="img-fluid " >
                                     </div>   
                                     <div class="col-md-6 col-12" >
                                          <h4 >Book Name : <%=i.getBook_name()%></h4>
                                          <h4 >Author : <%=i.getAuthor()%></h4>
                                          <h4 >Price : <%=total%></h4>
                                          <h4 >Quantity : <%= quantity%></h4>
                                        
                                        <a href="SaveToCart.jsp" class="btn btn-primary">Add to cart</a>
                                      </div>
                          </div>
 </div>
</body>
</html>