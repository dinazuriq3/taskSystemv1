<?php
session_start();

include("../../handlers/connect.php");
$uid=$_GET['userid'];
$sql="UPDATE users
SET status = 1
WHERE id=$uid";
if(mysqli_query($conn,$sql)){
    $_SESSION['success']="updated successfully";
    header("location:../showUser.php");
}
?>