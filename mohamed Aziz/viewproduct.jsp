<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>my web site</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-theme.min.css" rel="stylesheet"/>
<link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/grizzle/css/style.css">

</head>
<body>

<div id="container">
	
	<div id="header" style="background: #c7b8b8;">
	
	<img style="float: left" height="30px" width="100px" src="/grizzle/images/bulb.jpeg">
	<span><input type="search"  placeholder="search"></span> <a href="/grizzle/LogoutController" style="float: right">Logout</a>
	</div>
	
	<div id="content">
	
	<div id="nav">
	
	
	<div id="profile" align="center" >
	<p class="name">Profile   <a href="#">Edit</a></p>
	<p align="center">${sessionScope.user.username}</p>
	<img alt="" src="/grizzle/images/${sessionScope.user.username}.jpeg" height="20%" width="80%" > 
	<p>${sessionScope.user.address}</p>
	<p>India</p>
	
	</div>

	</div>
	
	</div>
	<div id="menu">
	<p class="name1 selected"  ><a herf="#">Products</a></p>
	<p class="name1"><a herf="#">Vendors</a></p>
     </div>
     
    
  <%--    ${product.imagesUrl} --%>
  
     
     <div id="activity" style="padding: 20px;">
   <form action="/grizzle/Grizzle	Controller" method="post">
   
   
   <c:forEach items="${productList }" var="product">
   
  <table style="float: left;padding-right: 50px;">
<tr><td>
<c:set  var="myCarousel" value="myCarousel" ></c:set>
<div class="col-md-6 col-sm-6">
  <div id="myCarousel${product.productId }" class="carousel slide">
    <div class="carousel-inner">
    
    <!--  dispplay first image -->
     <c:set var="img" value="${fn:split(product.imagesUrl, ',')}" />
      <div class="item active">
        <img src="/grizzle/images/${img[0]}">
      </div>
<!-- display all images -->
        <c:forTokens items="${product.imagesUrl}" delims="," var="img">
   
         <div class="item">
         <img src="/grizzle/images/${img}">
         </div>
         </c:forTokens>
      
      
      
     <!--  <div class="item">
        <img src="http://placehold.it/800x800">
      </div>
      <div class="item">
        <img src="http://placehold.it/800x800">
      </div> -->
    </div>
    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel${product.productId }" data-slide="prev">
      <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel${product.productId }" data-slide="next">
      <span class="icon-next"></span>
    </a>
  </div>
</div>
</td>
</tr></table>
<!-- small button -->

 <table style="float: left;padding-right: 50px;">
<tr>
<td><input type="text" id="productName" name="productName" placeholder="Product Name" value="${product.productName }"></td>
</tr>
<tr >
<td >

 <p style="height: 50px;width: 120px;">${product.productDescription}</p>
 
 <%-- <textarea cols="15" rows="2" id="description" placeholder="Product Description" name="description"  value="${product.productDescription}" ></textarea></td>
 --%></tr>
<tr>
<td> <input type="text" id="productPrice" placeholder="Product Price" name="productPrice" value="Rs:${product.productPrice }" ></td>
</tr>

<tr>
<td><input type="submit" name="submit" value="Finish"> </td></tr>
<tr>
<td><input type="submit" name="submit" value="Cancel"> 
</td></tr>

   </table>  
       </c:forEach>
       <tr><td><input type="submit" name="Back" value="Back"></td></tr>
   </form>
     
     </div>
     
     


	</div>

    <div id="footer">
	
	cognizant &copy; Congizant Associates
	
	</div>





</div>

</body>
</html>