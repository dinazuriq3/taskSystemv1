<?php
session_start();
include("../../handlers/connect.php");
$tid=$_GET['taskId'];
$sql="DELETE FROM tasks WHERE id='$tid'";
if(mysqli_query($conn,$sql)){
    $_SESSION['success']="task deleted successfully";
    header("location:../showTask.php");
}

?>