<?php
session_start();

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Booking</title>
<link rel="stylesheet" href="css/style.css">
<!-- Font -->
<link href="https://fonts.googleapis.com/css?family=Raleway:400,600,700,900" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

	#header1{
      width: 100%;
      height: 150px;
      background: black;
      color: white;
    }
    #adminlogo{
      background: white;
      border-radius: 50px;
    }
    ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  position: -webkit-sticky; /* Safari */
  position: sticky;
  top: 0;
}

li {
  float: left;
   font-family: bazooka;
  font-size: 20px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #555;
}
ul li ul{
			position: absolute;
			top: 45px;
			left: 20;
			background: transparent;
			display: block;
			width: 200px;
			

		}

	
	body {
font-family: 'Raleway', sans-serif;
font-weight: 400;
color: #fff;
letter-spacing: 1px;
background-color: lightgrey;
}

.container {
background-color: #fafafa;
margin: 120px;
box-shadow: 10px 15px 20px rgba(0.1, 0.1, 0.1, .3);
display: grid;
grid-template-columns: 40% 60%;
}

.container-time {
background-color: rgba(0, 0, 0, .95);
padding: 50px;
outline: 3px dashed #998100;
outline-offset: -30px;
text-align: center;
}

.heading {
font-size: 35px;
text-transform: uppercase;
}

.heading-days {
color:#998100;
font-size: 30px;

}

.heading-phone {
font-size: 20px;
}

.container-form {
padding: 20px 0;
margin: 0 auto;
color: #000;
}

form {
display: grid;
grid-row-gap: 20px;
}
form p {
font-weight: 600;
}
.form-field {
display: flex;
justify-content: space-between;
}

input,select {
padding: 10px 15px;
}

.btn {
background-color: rgba(0, 0, 0, .95);
color: #fff;
padding: 10px 20px;
border: none;
font-size: 18px;
border-radius: 100px;
-webkit-border-radius: 100px;
-moz-border-radius: 100px;
-ms-border-radius: 100px;
-o-border-radius: 100px;
box-shadow: 7px 10px 12px rgba(0, 0, 0, .1);
cursor: pointer;
transition: all .3s;
-webkit-transition: all .3s;
-moz-transition: all .3s;
-ms-transition: all .3s;
-o-transition: all .3s;
}

.btn:hover {
transform: scale(1.03);
-webkit-transform: scale(1.03);
-moz-transform: scale(1.03);
-ms-transform: scale(1.03);
-o-transform: scale(1.03);
box-shadow: 10px 12px 15px rgba(0, 0, 0, .3);
}
</style>
</head>

<body>

	<div id="header1">
    <center><img src="logof.jpg" alt="adminlogo" id="adminlogo"><!--<br>This is Admin Panel, Please proced with caution!-->
    </center>
    
  </div>
  <ul class="nav">
  <li><a href="home.html"><i class="fa fa-home"></i> Home</a></li>
    <li><a href="about.html"><i class="fa fa-clone"></i> About us</a></li>
  <li><a href="contact.html"><i class="fa fa-phone"></i> Contact</a></li>
    <li class="active"><a href="table.html"><i class="fa fa-table"></i> Book a Table</a></li>
    <li><a href="menu.html"><i class="fa fa-coffee"></i> Menu</a> </li>
  

  <li style="float:right"><a href="logout.php"><i class="fa fa-sign-out"></i> Logout</a></li>
</ul>



<div class="container">
<div class="container-time">

  <h1> COFFEE SHOP</h1>
  <hr>
<h2 class="heading">Time Open</h2>
<h3 class="heading-days">Monday-Friday</h3>
<p>7am - 10pm</p>

<h3 class="heading-days">Saturday and sunday</h3>
<p>9am - 10pm</p>

<hr>

<h4 class="heading-phone">Call Us: (123) 45-45-456</h4>
</div>

<div class="container-form">
<form action="table1.php" method="post">
<h2 class="heading heading-yellow">Reservation Online</h2>

<div class="form-field">
<p>Your Name</p>
<input type="text" class="form-control" name="fname" placeholder="Your Name" required="required">
</div>
<div class="form-field">
<p>Your Email</p>
<input type="email" class="form-control" name="email" placeholder="Your Email" required="required">
</div>
<div class="form-field">
<p>Date</p>
<input type="date" class="form-control" name="date" required="required">
</div>
<div class="form-field">
<p>Time</p>
<input type="time" class="form-control" name="time" required="required">
</div>
<div class="form-field">
<p>How many people?</p>
<select name="select" id="#" class="form-control" min="1" name="people" required="required">
<option value="1">1 person</option>
<option value="2">2 persons</option>
<option value="3">3 persosn</option>
<option value="4">4 persons</option>
<option value="5">5 persons</option>
<option value="5+">5+ persons</option>
</select>
</div>

<button class="btn">Submit</button>
</form>
</div>

  <?php
      
include('db.php');
if(isset($_POST['submit'])){
  $name=$_POST['name'];
  $email=$_POST['email'];
  $date=$_POST['date'];
  $time=$_POST['time'];
  $people=$_POST['people'];

  $sql="INSERT INTO `reserve` (`name`,'email',`date`, `time`, `people') VALUES ('$name', '$phone',
   '$date', '$time', '$people')";
  if(mysqli_query($con,$sql)){}//echo 'added';}else echo 'failed ';
}
echo "<script>alert('Order has been placed...');window.location.href='table1.php';</script>";
mysqli_query($con,"delete from cart where user='$user'");

}
      ?>

</div>

</body>
</html>
