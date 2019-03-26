<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cognizant.grizzlystore.model.UserDetails,com.cognizant.grizzlystore.DAO.ProductDAO,java.sql.ResultSet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
		body{
		font-size: 20px;
		font-color:#B3B3B3;
		font-family: Calibri,Candara,Segoe,Segoe UI,Optima,Arial,sans-serif; 
		}
		.logo{
		width:20%;
		}
		.search{
		width:40%;}
		.name{
		width:20;}
		.logout{
		width:20%;}
		.table{
		width:100%;
		broder: 0px solid;
		padding: 0px 0px 0px 0px;
		border:none;
		background-color:#F2F2F2;
		margin: 0px 0px 0px 0px;}
		.logoimg{
		width:100%;}	
		.btnlogout{
		border-radius:20px;
		border: 0px solid;
		background-color:#B3B3B3;
		height:30px;
		width:70px;
		}	
		.page{
		text-color:#656565;
		width:100%;
		height:100%;
		text-align:center;}	
		.card{ box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		max-width: 300px;
		height:100%;
  		margin-left:0px ;
  		text-align: center;}
  		.heading{
  		width:20%;
  		height:20px;
  		}	
 		
</style>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>
<table class="table">
	<tr>
		<th class="logo"><img src="../images/logo.jpg" class="logoimg"></th>
		<th class="search"></th>
		<th class="name">Welcome, <%=UserDetails.getName().toUpperCase() %></th>
		<th class="logout">
			<form action="../index.html"><input type="submit" value="Logout" class="btnlogout"></form>
		</th>
	</tr>
</table><br><br>
<table class="page" >
	<tr style="width:100%; height:60%;">
		<td style="Width:20%; height:100%; padding:0px;"> 
			<div class="card" style="background-color:#F2F2F2;">
			Profile<br>
			<img src="../images/profile.jpg" style="width:40%;heigth:40%;"><br>
			<%=UserDetails.getName().toUpperCase() %><br><br>ID<br>
			<%=UserDetails.getUid() %><br><br>DESIGNATION<br>
			<%=UserDetails.getDesignation().toUpperCase() %><br><br>OFFICE<br>	
			<%=UserDetails.getOffice().toUpperCase() %><br><br></div>
		</td>
		<td style="width:80%; vertical-align:top;" >
		<table style="width:100%; height:30%; vertical-align:top; ">
		<tr style="broder: 0px; font-size:30px; font-weight:100; padding:10px 10px 10px 10px;">
			<th style="background-color:#B4B4B4; width:33%;text-align:left; box-shadow: 10px 10px solid black;">Product List</th>
			<th style="background-color:#E6E6E6; width:33%;text-align:left;">Vendors</th>
			<th style="background-color:#F2F2F2;width:34%;text-align:left;"></th>
		</tr>
		</table>
		<br>
		<form action="/AddProduct">
		<table style="width:100%">
		<tr>
		<td style="width:50%;">
			<input type="file" accept="image/*" style="width:100%; height:80%;">
		</td>
		<td>
		<input type="text" placeholder="Product Name"><br>
		<input type="text" placeholder="Brand"><br>
		<input type="text" placeholder="Category"><br>
		</tr>
		</table>
		</form>
		</td>
	</tr>
</table>


</body>
</html>