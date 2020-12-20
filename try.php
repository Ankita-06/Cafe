<!DOCTYPE html>
<html>
<head>
	<title>try</title>
	<style>
		body{
			margin: 0px;
			border: 0px;
		}
		#header{
			width: 100%;
			height: 150px;
			background: black;
			color: white;
		}
		#sidebar{
			width: 300px;
			height: 400px;
			background: #27ae60;
			float: left;
		}
		#data{
			height: 700px;
			background: #c0392b;
			color: white;
			font-family: Helvetica;
			font-size: 50px;
		}
		#adminlogo{
			background: white;
			border-radius: 50px;
		}
		 .container{
      margin: 20px;
    }
    .column {
  float: left;
  width: 50%;
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
	<div id="header">
		<center><img src="logof.jpg" alt="adminlogo" id="adminlogo"><!--<br>This is Admin Panel, Please proced with caution!-->
		</center>
		
	</div>

<div class='container'>
  <?php
include('db.php');

$q="select distinct id,time,name,date,phone,address from `order`";
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
    <button onclick="del(<?php echo $id;?>)">Delete Order</button>
    <script>
    	function del(id){
    		if(confirm('Are you sure to delete this order?')){
    			window.location.href='deleteOrder.php?id='+id;
    		}
    	}
    </script>
    </div>
  </div>
</div>
<?php } ?>
</div>
</body>
</html>
<head></head>