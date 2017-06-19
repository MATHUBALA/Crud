<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Details</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body >
<center>
<div class="jumbotron" style="background-color:#87CEEB">
<h1 style =color:"#008080">Add NewUser</h1>
    </div>
    </center>
<div  style ="background-image:url('first.jpg') ;background-repeat: no-repeat;height=100% ;background-size: cover;">

  

 

<center>    
<form action="Controller" method="post" " >
<table>
<tr>
<td>
<div class="form-group">
      <label for="id">UserId:</label>
      <input type="text" class="form-control" id="id" placeholder="Enter Userid" name="id">
    </div>
</td>
</tr>
<tr>
<td>
<div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
    </div>
</td>
</tr>
<tr>
<td>
  <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
    </div>
</td>
</tr>
<tr>
<td>
<div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    </td>
</tr>
<tr>
<td>
<div class="form-group">
      <label for="country">Country</label>
      <input type="text" class="form-control" id="country" placeholder="Enter country" name="country">
    </div>
    </td>
</tr>
<tr>
<td>
<input type="submit" style="background-color:#BDB76B" class="btn btn-default value="Save">
</td>
</tr>
</table>
</form>
</center>
<br><br>
<a href="view.jsp" class="btn btn-primary" style="background-color:#20B2AA">View data</a>

<a href="delete.jsp" class="btn btn-primary" style="background-color:#FF0000">Delete data</a>
</div>
</div>
</body>
</html>