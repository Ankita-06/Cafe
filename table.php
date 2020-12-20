<?php 
// CREATE DATABASE CONNECTION
 $db = mysqli_connect('localhost', 'root', '', 'booking') or die("connection failed" . mysqli_error());    
// SELECT FORM FIELD DATA
 if(isset($_POST['submit'])){
    $username = mysqli_real_escape_string($db, $_POST['fname']);
    $email = mysqli_real_escape_string($db, $_POST['email']);
    $date = mysqli_real_escape_string($db, $_POST['date']);
    $time = mysqli_real_escape_string($db, $_POST['time']);
    $people = mysqli_real_escape_string($db, $_POST['people']);

    // QUERY
    $query = mysqli_query($db, "INSERT INTO `reserve`(`name`, `email`, `date`, `people`, `booking_time`) VALUES ('$username','$email','$date','$people','$time')");
    if ($query) {
        $_SESSION['success'] = "Your Reservation has been Submitted";
        //$_SESSION['id'] = $db->inser_id;
        ?>
        <script>
        alert("Your Reservation has been Submitted");
        window.location='table.html';
    </script>
        <?php
      //echo 'success';
        exit();
    } else {
        $_SESSION['error'] = "Sorry, check your inputs for errors";
        //echo $_SESSION['error'].' '.mysqli_error();
    }
 }