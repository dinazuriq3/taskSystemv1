<?php
session_start();

include("../../handlers/connect.php");
$tId=$_GET['taskId'];
$sql="UPDATE tasks
SET status = 0
WHERE id=$tId";
if(mysqli_query($conn,$sql)){
    $_SESSION['success']="updated successfully";
    header("location:../showTask.php");
}
?>