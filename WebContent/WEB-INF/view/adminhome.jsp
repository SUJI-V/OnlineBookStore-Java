<!--admin home page-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.d1{margin:150px 100px 150px 500px
}
body{
background-color:skyblue;
background-repeat:no repeat;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center><h1>ONLINE BOOK STORE</h1></center>
<hr>
<center><h2>Welcome,${loginattribute.name} </h2></center>
<div class="d1" >

<a href="addbook">ADD BOOK</a><br><br>
<a href="deletebook">DELETE BOOK</a><br><br>
<a href="deleteuser">DELETE USER</a><br><br>
<a href="adminlogout">LogOut</a><br><br>

</div>

</body>
</html>





