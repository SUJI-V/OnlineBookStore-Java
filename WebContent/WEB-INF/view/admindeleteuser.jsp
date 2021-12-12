<!--admin page for deleting users-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%--<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>--%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table#t01 {
  width: 100%;
  background-color: #f1f1c1;
  text-align:center
}
table#t01 tr:nth-child(even) {
  background-color: #eee;
}
table#t01 tr:nth-child(odd) {
  background-color: #fff;
}
table#t01 th {
  color: white;
  background-color: black;
}
</style>
</head>
<body>
<table id="t01" style="width:50%">
  <tr>
   <th>Id</th>
    <th>Name</th>
    <th>Password</th>
    <th>Address</th>
    <th>Email</th>
    <th>PhoneNumber</th>
  </tr>
  <c:forEach items="${userlist}" var="user">
  <tr>
  <td>${user.id}</td>
  <td>${user.name}</td>
  <td>${user.password}</td>
  <td>${user.address}</td>
   <td>${user.email}</td>
  <td>${book.phonenumber}</td>
  </c:forEach>
  </table>
  <f:form action="deleteuser1" modelAttribute="loginattribute">
	<label for="id"><b>Userid</b></label>
    <input type="text" placeholder="Enter id" name="id" required>	
     <input type="submit" value="Delete"><br>
</f:form>
</body>
</html>