<%@page import="com.java.dao.DatabaseMysql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.java.dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Information</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<style type="text/css">
	th{
		background-color: #808080;
	}
	table {
	padding: 10px;
	margin: 10px;
	}
	td,th{
		text-align: center;
		width: 100px;
	}
	
	
}
</style>
</head>
<body>
<center>

<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%List<Employee> list=DatabaseMysql.view();
request.setAttribute("list", list);%>
<div class="jumbotron" style="background-color:#87CEEB">
<h1 style =color:"#008080">View the Details</h1>
    </div>
    </center>
<center>
<div class="container" style ="background-image:url('first.jpg') ;background-repeat: no-repeat;height=100% ;background-size: cover;">

<table border="4" class="table table-striped">
<tr><th>Id</th><th>Name</th><th>Email</th><th>Country</th><th>Update</th><th>Delete</th></tr>
<c:forEach var="user" items="${list}">
<tr>
<td>${user.id}</td><td>${user.name}</td><td>${user.email}</td><td>${user.country}</td><td><a href="editform.jsp?id=${user.id}" class="btn btn-primary" >Update data</a></td><td><a href="delete1.jsp?id=${user.id}" class="btn btn-warning" style=back>Delete data</a></td>
</tr>
</c:forEach>
</table>

</center>
<script>
function myFunction() {
    alert("Hello! I am an alert box!");
}
</script>
</div>
</body>


</html>