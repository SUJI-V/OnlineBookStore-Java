<!--admin page for deleting books-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
                              
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
    <th>Bookid</th>
    <th>Book Name</th>
    <th>Author</th>
    <th>No.of copies</th>
  </tr>
  <c:forEach items="${booklist}" var="book">
  <tr>
  <td>${book.id}</td>
  <td>${book.bookname}</td>
  <td>${book.author}</td>
  <td>${book.copies}</td>
  </c:forEach>
  </table>
  <f:form action="deletebook1" modelAttribute="loginattribute">
	<label for="id"><b>UserId</b></label>
    <input type="text" placeholder="Enter Id" name="id" required>	
     <input type="submit" value="Delete"><br>
</f:form>
</body>
</html>