<?php
//include("php/dbconnect.php");
$con = mysqli_connect('localhost','root','','csrs') or die("Could not connect to the server");

if(isset($_GET['yess']))
{
	if($_GET['yess'] == true){
		$idd=$_GET['id'];
		$x = "UPDATE `accommodation` SET mat='no' where id='$idd' ";
		mysqli_query($con,$x) or die(mysqli_error());

		//echo "<script>alert('user now you set student to own matress');</script>";
		header('location:waden.php');
		echo "hello";
	}else{
		echo "hfdj";
	}

}

if(isset($_GET['noo']))
{
$idd=$_GET['id'];
$msg=mysqli_query($con,"UPDATE accommodation SET mat='yes' where id='$idd'");
if($msg)
{
echo "<script>alert('matress submitted');</script>";
header('location:waden.php');
}
}
?>