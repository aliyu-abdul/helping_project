<?php
include("php/dbconnect.php");

if(isset($_GET['yess']))
{
$idd=$_GET['id'];
$msg=mysqli_query($con,"UPDATE accommodation SET key='yes' where id='$idd'");
if($msg)
{
echo "<script>alert('user now you set student to own matress');</script>";
header('location:waden.php');
}
}

if(isset($_GET['noo']))
{
$idd=$_GET['id'];
$msg=mysqli_query($con,"UPDATE accommodation SET key='no' where id='$idd'");
if($msg)
{
echo "<script>alert('matress submitted');</script>";
header('location:waden.php');
}
}
?>