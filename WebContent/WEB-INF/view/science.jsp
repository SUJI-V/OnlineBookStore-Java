
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
  <h2>SCIENCE</h2>
  <div class="card">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxncp7dYmfNKpND7gUEtotDL-xWjfl9HCp-adkV5_V6qsSn9FI-w&s" alt="python" style="width:10%" "height=10%">
    <h1><a href="productpage">PHYSICS</a></h1>
  <p class="price">$19.99</p>
  <p>Easy to learn</p>

<div class="card">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnEf23T6Q85hecvC--lheliXQolKhjrxzhbF3nQoXfhpHA51fLuQ&s" alt="Harry potter" style="width:10%" "height=10%">
  <h1><a href="productpage">WOW SCIENCE</a></h1>
  <p class="price">$20.97</p>
  
</form>
</div>

</body>
</html>