<?php
session_start();
include("../../handlers/connect.php");
$email=$_POST['email'];
$password=$_POST['password'];
$sql="SELECT * FROM admins where email='$email'";
$querry=mysqli_query($conn,$sql);
$emailCount=mysqli_num_rows($querry);
$adminData=mysqli_fetch_array($querry);
if($emailCount>0){
    if(password_verify($password,$adminData['password'])){
        $_SESSION['id']=$adminData['id'];    
        header("location:../index.php");
    }else{
        $_SESSION['errors']="password error";    
        header("location:../login.php");
}
}else{
    $_SESSION['errors']="email error";  
    header("location:../login.php");
}


?>