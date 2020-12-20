<?php
session_start();
include('db.php');
$id=$_GET['id'];
$qty=$_GET['qty'];
$user=$_SESSION['username'];
$q1="select * from dishes where id='$id'";
$res=mysqli_query($con,$q1);
$row=mysqli_fetch_assoc($res);
$title=$row['title'];
$details=$row['details'];
$img=$row['img'];
$price=$row['price'];
$q2="insert into cart(img,title,details,price,qty,user)values('$img','$title','$details','$price','$qty','$user')";
if(mysqli_query($con,$q2)){
echo 'Successfully added in cart.';
}else echo 'Failed';

?>