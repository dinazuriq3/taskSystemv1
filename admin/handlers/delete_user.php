<?php
session_start();
include("../../handlers/connect.php");
$uid=$_GET['userid'];
$sql="DELETE FROM users where id=$uid";
if(mysqli_query($conn,$sql)){
    $_SESSION['success']="user deleted successfully";
    header("location:../showUser.php");
}
?>