<?php
include('db.php');
$id=$_GET['id'];
$q="DELETE FROM `order` WHERE id='$id'";
if(mysqli_query($con,$q)){
	echo 'Order deleted successfully.';
	header('location:try.php');
}else echo 'Failed to delete order';
?>