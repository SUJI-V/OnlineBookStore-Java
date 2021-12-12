<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<style>
.d1{margin:150px 100px 150px 500px
}
body{

background-repeat:no repeat;
}

.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>


</head>
<body>


<f:form action="placeorder" modelAttribute="productattribute">








<a href="placeorder" class="button">PLACE ORDER</a>
<!--<A href="#addtocart"class="button">ADD TO CART</button> -->



  
</f:form>
</body>
</html>