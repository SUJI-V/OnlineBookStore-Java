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
  <h2>MASTERING MANAGEMENT</h2>
  <HR>
  <div class="card">
  <img src="data:image/jpeg;base64,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" alt="python" style="width:10%" "height=10%">
  <h1><a href="productpage">PERSONAL MANAGEMENT</a></h1> 
  <p class="price">$19.99</p>
  

<div class="card">
  
 <img src="data:image/jpeg;base64,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 " alt="Harry potter" style="width:10%" "height=10%">
 <h1><a href="productpage">TIME MANAGEMENT</a></h1>
  <p class="price">$20.97</p>
  

</form>
</div>
</body>
</html>