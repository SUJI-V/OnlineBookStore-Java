<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<center><h1>ONLINE BOOK STORE</h1></center>
<hr>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
</style>
</head>
<body>
<center><h1>ONLINE BOOK STORE</h1></center>
<hr>
<div style="margin:10px">
<nav style="padding-right:30px">
<a href="categories">Categories</a>

<a href="logout">LogOut</a>
</nav>
</div>
<div id="outer">
  <h2>THRILLERS</h2>
  <div class="card">
  <img src="data:image/jpeg;base64,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" alt="python" style="width:10%" "height=10%">
 <h1><a href="productpage">THE GIRL BEFORE</a></h1> 
  <p class="price">$19.99</p>
  <p>Easy to learn</p>

<div class="card">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPyoF9TwmhXUu7V3jnMEgiYa8zGF6aX9YPzDy8-v9tBmJduMbmyg&s " alt="Harry potter" style="width:10%" "height=10%">
  <h1><a href="productpage">THE LOST NIGHT</a></h1>
  <p class="price">$20.97</p>
  
</form>
</div>
</body>
</html>