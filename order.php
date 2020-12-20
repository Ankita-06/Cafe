<!DOCTYPE html>
<html>
<head>
	<title>ufinalhome</title>
	<meta name="viewport" content="width=device-width initial-scale=1">
	<style>
		body {
  background: lightgrey;
}
#header1{
      width: 100%;
      height: 150px;
      background: White;
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
		img {
  			display: block;
  			margin-left: auto;
  			margin-right: auto;
		}
		h1{position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%,-50%);
			color: #000;
			font-size: 42px;
			font-family: Bazooka;
		}
    .container{
      margin: 20px;

    }
    .column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 2px 4px 8px 2px rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}
	</style>
</head>
<body>
   <div id="header1">
    <center><img src="logof.jpg" alt="adminlogo" id="adminlogo"><!--<br>This is Admin Panel, Please proced with caution!-->
    </center>
    
  </div>
	<ul>
  <li><a href="home.html">Home</a></li>
  <!--
  <li><a href="#booking">Booking</a></li>
-->
  <li><a href="about.html">About us</a></li>
  <li><a href="contact.html">Contact</a></li>

  <li style="float:right"><a class="active" href="logout.php">Logout</a></li>
</ul>
<div class='container'>
  <?php
  session_start();
include('db.php');
$user=$_SESSION['username'];//'user1';
$q="select distinct id,time,name,date,phone,address from `order` where user='$user' ORDER BY order_time DESC";
$res=mysqli_query($con,$q);
$tot=0;
while($r1=mysqli_fetch_assoc($res)){
  $id=$r1['id'];
  $q2="select * from `order` where id='$id'";
  $res2=mysqli_query($con,$q2);
  ?>
<div class="row">
  <div class="column">
    <div class="card">
      <h3>Order ID: <?php echo $id;?></h3>
      <?php 
      while($r2=mysqli_fetch_assoc($res2)){
        ?>
      <p><?php echo $r2['dish'];?><?php echo ' X '.$r2['qty'];?><?php echo ' Rs. '.$r2['price']*$r2['qty'];?></p>
    <?php $tot+=$r2['price']*$r2['qty'];}?>
    <p>Order Total: <?php echo $tot;?></p>
      <p>Meal for: <?php echo $r1['time'];?></p>
      <p>Order Date: <?php echo $r1['date'];?></p>
      <h2>Shipping details : </h2>
      <p>Name: <?php echo $r1['name'];?></p>
      <p>Phone: <?php echo $r1['phone'];?></p>
      <p>Address: <?php echo $r1['address'];?></p>
    
    </div>
  </div>
</div>
<?php } ?>
</div>
</body>
</html>