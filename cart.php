<?php
session_start();

?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>

<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="" method='post'>
      
        <div class="row">
          <div class="col-50">
            <h3> Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="name" placeholder="John M. Doe" required>
            <label for="email"><i class="fa fa-envelope"></i> Contact NO.</label>
            <input type="text" id="contact no" name="phone" placeholder="9875464595" required>
            
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street" required>
            <label for="city"><i class="fa fa-institution"></i> Area</label>
            <input type="text" id="city" name="city" placeholder="New York" required>

            <div class="row">
              <div class="col-50">
                <label for="state">Order date</label>
                <input type="date" id="orderdate" name="date" required><br><br>
                <!--Meal for: <select name='time'>
                  <option value="lunch">Lunch</option>
                  <option value="dinner">Dinner</option>
                  <option value="both">Both</option>
                </select>-->
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="number" id="zip" name="zip" placeholder="400505" required>
              </div>
            </div>
          </div>
          <input type='hidden' value="<?php echo $tot;?>">
          
          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <select id="cards">
              <option value="card">Visa Card</option>
              <option value="card">Master Card</option>
              <option value="card">RuPay Card</option>
              <option value="card">Maestro Card</option>
            </select>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe" required>
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" required>
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September" required>
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018" required>
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="number" id="cvv" name="cvv" placeholder="352" required>
              </div>
            </div>
          </div>
        
 
          
        </div>
        
        <input type="submit" value="Pay Now" name='pay' class="btn">
      </form>
      <?php
      
include('db.php');
if(isset($_POST['pay'])){
	$address=$_POST['address'].', '.$_POST['city'].', '.$_POST['zip'];
	$name=$_POST['name'];
	$date=$_POST['date'];$time=$_POST['time'];$phone=$_POST['phone'];
	$id=''.rand();
	$user=$_SESSION['username'];
$sql2="select * from cart where user='$user'";
$res=mysqli_query($con,$sql2);
while($r=mysqli_fetch_assoc($res)){
	$dish=$r['title'];$price=$r['price'];$qty=$r['qty'];
	$sql="INSERT INTO `order` (`id`, `user`,`name`, `phone`, `address`, `date`, `time`, `dish`, `price`, `qty`) VALUES ('$id'
	,'$user', '$name', '$phone',
	 '$address', '$date', '$time', '$dish', '$price', '$qty')";
	if(mysqli_query($con,$sql)){}//echo 'added';}else echo 'failed ';
}
echo "<script>alert('Order has been placed...');window.location.href='order.php';</script>";
mysqli_query($con,"delete from cart where user='$user'");

}
      ?>
    </div>
  </div>
  <div class="col-25">
    <div class="container">
      
      <?php
        include('db.php');
$user=$_SESSION['username'];
$sql="select * from cart where user='$user'";
$res=mysqli_query($con,$sql);
$num=mysqli_num_rows($res);
$tot=0;
?><h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b><?php echo $num;?></b></span></h4>
<?php
while ($r=mysqli_fetch_assoc($res)) {
	//echo 'Dish: '.$r['title']."<br>";

      ?>
      <p><span><?php echo $r['title'];?></span><span style="margin-left:10px;"><?php echo 'X '.$r['qty'];?></span> <span class="price"><?php echo 'Rs '.$r['price']*$r['qty'];?></span></p>
     <?php $tot+=$r['price']*$r['qty']; } ?>
      <hr>
      <p>Total <span class="price" style="color:black"><b><?php echo $tot;?></b></span></p>
    </div>
  </div>
</div>
</body>
</html>
