<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>BOOK STORE MANAGEMENT</title>
<style>
* {
  box-sizing: border-box;
}
#b {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}
.header {
  padding: 80px;
  text-align: center;
 
  color: red;
}
.header h1 {
  font-size: 40px;
}

/* Style the top navigation bar */
.navbar {
  overflow: hidden;
  background-color: #333;
}

/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: pink;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
  float: right;
}

/* Change color on hover */
.navbar a:hover {
  background-color: red;
  color: black;
}
#v
{
.header h1 {
  font-size: 40px;
}

/* Style the top navigation bar */
.navbar {
  overflow: hidden;
  background-color: #333;
}

/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
  float: right;
}
body {
  
  background-repeat:no repeat;
}



}

</style>
</head>

<body>

<center><h1>ONLINE BOOK STORE</h1></center>
<hr>
<div class="navbar">
  <a href="categories">CATEGORIES</a>

    <a href="logout">LOGOUT</a>
    
</div>
<div>
<center><h2>Welcome,${loginattribute.name} </h2></center>
</div>
<div id="outer">
  <br>
  <br>
  <br><br><br>
  <div class="card">
  <img src="https://stackabuse.com/content/images/2018/01/learn-python-the-hard-way.jpeg" alt="python" style="width:20%" "height=20%">
  <h1><a href="productpage">Python text</a></h1>
  <p class="price">$19.99</p>
  <p>Easy to learn</p>

<div class="card">
  <img src="https://cdn.waterstones.com/bookjackets/large/9781/4088/9781408855676.jpg " alt="Harry potter" style="width:20%" "height=20%">
  <h1><a href="productpage">Harry Potter and the Prisoner of Azkaban</a></h1>
  <p class="price">$20.97</p>
  <p>Harry Potter is a series of fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry.</p>
 <h2><a href="productpage">SCIENCE</a></h2>
  <div class="card">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxncp7dYmfNKpND7gUEtotDL-xWjfl9HCp-adkV5_V6qsSn9FI-w&s" alt="python" style="width:20%" "height=20%">
  <h1><a href="productpage">PHYSICS</a></h1>
  <p class="price">$19.99</p>
  <p>Easy to learn</p>

<div class="card">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnEf23T6Q85hecvC--lheliXQolKhjrxzhbF3nQoXfhpHA51fLuQ&s" alt="Harry potter" style="width:20%" "height=20%">
  <h1><a href="productpage">WOW SCIENCE</a></h1>
  <p class="price">$20.97</p>
  </div>
  </div>
  </div>
  </div>
  </div>
</form>
</div>
</body>
</html>