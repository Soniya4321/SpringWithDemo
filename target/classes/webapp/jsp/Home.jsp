<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel = "stylesheet" type="text/css" href="Registration.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<font color="WHITE"
			style="color: black; font-size: xx-large; font-style: oblique; font-weight: bold;"><marquee
				direction="left"
				style="background: coral; height: 60px; padding-top: 20px;">
				 ShoppingBazaar</marquee></font>
</div>
<div class="navbar">
  <a href="#home">Home</a>
  <a href="#news">Login</a>
  <div class="dropdown">
    <button class="dropbtn">Kids 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Clothes</a>
      <a href="#">Toys</a>
      <a href="#">Shoes</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Men 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Clothes</a>
      <a href="#">Electronic</a>
      <a href="#">Shoes</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Women 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Clothes</a>
      <a href="#">Costmetic</a>
      <a href="#">Shoes</a>
    </div>
  </div> 
   <div class="search-container">
    <form action="/Login.jsp">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
	  </form>
 </div>
 


</body>
</html>