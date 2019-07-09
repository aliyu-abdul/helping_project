<?php 
$con = mysqli_connect('localhost','root','','csrs') or die("Could not connect to the server");

	if(isset($_GET['gender'])){
		if(isset($_GET['va']) && isset($_GET['user']) && isset($_GET['id'])){
			if($_GET['va'] == "X"){
				if(isset($_GET['bed']) && $_GET['bed'] == 1){
					$va = $_GET['va'];
					$u = $_GET['user'];
					$id = $_GET['id'];

					$mmm = "UPDATE `boys_rooms` SET `bed_1`='$u' WHERE `id`='$id' ";
					$x = mysqli_query($con,$mmm) or die(mysqli_error($con));
					echo "id".$id;
					echo "<br>bed".$_GET['bed'];
					echo "<br>va".$va;
					header('location: index.php');
				}else if(isset($_GET['bed']) && $_GET['bed'] == 2){
					$va = $_GET['va'];
					$u = $_GET['user'];
					$id = $_GET['id'];

					$mmm = "UPDATE `boys_rooms` SET `bed_2`='$u' WHERE `id`='$id' ";
					$x = mysqli_query($con,$mmm) or die(mysqli_error($con));
					echo "id".$id;
					echo "<br>bed".$_GET['bed'];
					echo "<br>va".$va;
					header('location: index.php');
				}else if(isset($_GET['bed']) && $_GET['bed'] == 3){
					$va = $_GET['va'];
					$u = $_GET['user'];
					$id = $_GET['id'];

					$mmm = "UPDATE `boys_rooms` SET `bed_3`='$u' WHERE `id`='$id' ";
					$x = mysqli_query($con,$mmm) or die(mysqli_error($con));
					echo "id".$id;
					echo "<br>bed".$_GET['bed'];
					echo "<br>va".$va;
					header('location: index.php');
				}else if(isset($_GET['bed']) && $_GET['bed'] == 4){
					$va = $_GET['va'];
					$u = $_GET['user'];
					$id = $_GET['id'];

					$mmm = "UPDATE `boys_rooms` SET `bed_4`='$u' WHERE `id`='$id' ";
					$x = mysqli_query($con,$mmm) or die(mysqli_error($con));
					echo "id".$id;
					echo "<br>bed".$_GET['bed'];
					echo "<br>va".$va;
					header('location: index.php');
				}
				else {
					echo "dsf";
				}
			}else{
				echo "Sorry The room is already reserved ";
			}
		}else{
			echo mysqli_error($con) ."erro";
		}
	}else{
		if(isset($_GET['va']) && isset($_GET['user']) && isset($_GET['id'])){
			if($_GET['va'] == "X"){
				if(isset($_GET['bed']) && $_GET['bed'] == 1){
					$va = $_GET['va'];
					$u = $_GET['user'];
					$id = $_GET['id'];

					$mmm = "UPDATE `rooms` SET `bed_1`='$u' WHERE `id`='$id' ";
					$x = mysqli_query($con,$mmm) or die(mysqli_error($con));
					echo "id".$id;
					echo "<br>bed".$_GET['bed'];
					echo "<br>va".$va;
					header('location: index.php');
				}else if(isset($_GET['bed']) && $_GET['bed'] == 2){
					$va = $_GET['va'];
					$u = $_GET['user'];
					$id = $_GET['id'];

					$mmm = "UPDATE `rooms` SET `bed_2`='$u' WHERE `id`='$id' ";
					$x = mysqli_query($con,$mmm) or die(mysqli_error($con));
					echo "id".$id;
					echo "<br>bed".$_GET['bed'];
					echo "<br>va".$va;
					header('location: index.php');
				}else if(isset($_GET['bed']) && $_GET['bed'] == 3){
					$va = $_GET['va'];
					$u = $_GET['user'];
					$id = $_GET['id'];

					$mmm = "UPDATE `rooms` SET `bed_3`='$u' WHERE `id`='$id' ";
					$x = mysqli_query($con,$mmm) or die(mysqli_error($con));
					echo "id".$id;
					echo "<br>bed".$_GET['bed'];
					echo "<br>va".$va;
					header('location: index.php');
				}else if(isset($_GET['bed']) && $_GET['bed'] == 4){
					$va = $_GET['va'];
					$u = $_GET['user'];
					$id = $_GET['id'];

					$mmm = "UPDATE `rooms` SET `bed_4`='$u' WHERE `id`='$id' ";
					$x = mysqli_query($con,$mmm) or die(mysqli_error($con));
					echo "id".$id;
					echo "<br>bed".$_GET['bed'];
					echo "<br>va".$va;
					header('location: index.php');
				}
				else {
					echo "dsf";
				}
			}else{
				echo "Sorry The room is already reserved ";
			}
		}else{
			echo mysqli_error($con) ."erro";
		}
	}


 ?>