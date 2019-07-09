<?php
include'dbconnection.php';

if(isset($_GET['act']))
{
$idd=$_GET['id'];
$msg=mysqli_query($con,"UPDATE users SET status='diactivated' where id='$idd'");
if($msg)
{
echo "<script>alert('user diactivated');</script>";
header('location:manage-users.php');
}
}

if(isset($_GET['deact']))
{
$idd=$_GET['id'];
$msg=mysqli_query($con,"UPDATE users SET status='active' where id='$idd'");
if($msg)
{
echo "<script>alert('user activated');</script>";
header('location:manage-users.php');
}
}
?>