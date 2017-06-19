
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.java.dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Employee</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
<center>
<div class="jumbotron" style="background-color:#87CEEB">
    <h1 style =color:"#008080">Update Employee</h1>
    </div>
    </center>

<div style ="background-image:url('first.jpg') ;background-repeat: no-repeat;height=100% ;background-size: cover;">

<center>

<%
	String id=request.getParameter("id");
	Employee e=DatabaseMysql.getElementById(Integer.parseInt(id));
%>
<center>
<form action="update.jsp" method="get">
<table >
<tr>
<td>
<div class="form-group">
      <label for="id">UserId:</label>
      <input type="text" class="form-control" id="id" placeholder="Enter Userid" name="id" value="<%=e.getId() %>"/>
    </div>
</td>
</tr>
<tr>
<td>
<div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter Username" name="name" value="<%=e.getName() %>"/>
    </div>
</td>
</tr>
<tr>
<td>
<div class="form-group">
      <label for="password">Password:</label>
      <input type="text" class="form-control" id="password" placeholder="Enter Passsword" name="password" value="<%=e.getPassword() %>"/>
    </div>
</td>
</tr>
<tr>
<td>
<div class="form-group">
      <label for="email">E-mail:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter email" name="email" value="<%=e.getEmail()%>"/>
    </div>
</td>
</tr>
<tr>
<td>
<div class="form-group">
      <label for="country">Country:</label>
      <input type="text" class="form-control" id="country" placeholder="Enter country" name="country" value="<%=e.getCountry() %>"/>
    </div>
</td>
</tr>
<tr>
<td>
<input type="submit" value="Update" class="btn btn-success"/>
</td>
</tr>
</table>
</form>
</center>
</body>
</html>