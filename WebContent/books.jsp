<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bookstore</title>
<meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<header>
                    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
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
                                <li class="nav-item">
                                  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                                </li>
                              </ul>
                              <form class="form-inline my-2 my-lg-0">
                                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                              </form>
                            </div>
                          </nav>
            </header>



<section>
            <div class="container">
                <h1 class="text-center text-capitalize ">Books</h1>
                <hr class="w-25 mx-auto bg-primary"> 

                

                      <div class="row text-center "> 
                          <div class="col-lg-3 col-md-3 col-12">
                                <div class="card" >
                                        <img class="card-img-top" src="img/c++.jpg" alt="Card image">
                                        <div class="card-body">
                                        <a href="bookdetails.jsp?book_id=1">See details</a>
                                          <h4 class="card-title">C++</h4>
                                      
                                        </div>
                                      </div>
                          </div>

                          <div class="col-lg-3 col-md-3 col-12">
                                <div class="card" >
                                        <img class="card-img-top" src="img/complete_sql.jpg" alt="Card image">
                                        <div class="card-body">
                                        <a href="bookdetails.jsp?book_id=2">See details</a>
                                          <h4 class="card-title">Complete Sql</h4>
                                   
                                        </div>
                                      </div>
                          </div>

                          <div class="col-lg-3 col-md-3 col-12">
                                <div class="card" >
                                        <img class="card-img-top" src="img/computer_networking.jpg" alt="Card image">
                                        <div class="card-body">
                                        <a href="bookdetails.jsp?book_id=3">See details</a>
                                          <h4 class="card-title">Networking</h4>
                                         
                                   
                                        </div>
                                      </div>
                          </div>

                          <div class="col-lg-3 col-md-3 col-12">
                                <div class="card" >
                                        <img class="card-img-top" src="img/head_first_sql.jpg" alt="Card image">
                                        <div class="card-body">
                                        <a href="bookdetails.jsp?book_id=4">See details</a>
                                          <h4 class="card-title">First SQl</h4>
                                         
                                    
                                        </div>
                                      </div>
                          </div>

                      </div>

                      <div class="row text-center pt-5"> 
                            <div class="col-lg-3 col-md-3 col-12">
                                  <div class="card" >
                                          <img class="card-img-top" src="img/let_us_c.jpg" alt="Card image">
                                          <div class="card-body">
                                          <a href="bookdetails.jsp?book_id=5">See details</a>
                                            <h4 class="card-title">Let Us C</h4>
                                   
                                          </div>
                                        </div>
                            </div>
  
                            <div class="col-lg-3 col-md-3 col-12">
                                  <div class="card" >
                                          <img class="card-img-top" src="img/oops_c++.jpg" alt="Card image">
                                          <div class="card-body">
                                          <a href="bookdetails.jsp?book_id=6">See details</a>
                                            <h4 class="card-title">OOPS in C++</h4>
                                   
                                          </div>
                                        </div>
                            </div>
  
                            <div class="col-lg-3 col-md-3 col-12">
                                  <div class="card" >
                                          <img class="card-img-top" src="img/java.jpg" alt="Card image">
                                          <div class="card-body">
                                          <a href="bookdetails.jsp?book_id=7">See details</a>
                                            <h4 class="card-title">JAVA</h4>
                                  
                                          </div>
                                        </div>
                            </div>
  
                            <div class="col-lg-3 col-md-3 col-12">
                                  <div class="card" >
                                          <img class="card-img-top" src="img/head_in_html.jpg" alt="Card image">
                                          <div class="card-body">
                                          <a href="bookdetails.jsp?book_id=8">See details</a>
                                            <h4 class="card-title">HTML</h4>
                                     
                                          </div>
                                        </div>
                            </div>
  
                            
  
  
                        </div>

                        
                      <div class="row text-center pt-5"> 
                            <div class="col-lg-3 col-md-3 col-12">
                                  <div class="card" >
                                          <img class="card-img-top" src="img/c_sharp.JPG" alt="Card image">
                                          <div class="card-body">
                                          <a href="bookdetails.jsp?book_id=9">See details</a>
                                            <h4 class="card-title">Head First C#</h4>
                                  
                                          
                                          </div>
                                        </div>
                            </div>
  
                            <div class="col-lg-3 col-md-3 col-12">
                                  <div class="card" >
                                          <img class="card-img-top" src="img/html5.JPG" alt="Card image">
                                          <div class="card-body">
                                          <a href="bookdetails.jsp?book_id=10">See details</a>
                                            <h4 class="card-title">HTML 5</h4>
                                       
                                          
                                          </div>
                                        </div>
                            </div>
  
                           
    
                        </div>

            </div>
        </section>


</body>
</html>