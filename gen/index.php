<?php
session_start();
$con = mysqli_connect('localhost','root','','csrs') or die("Could not connect to the server");
if($_SESSION['id']){
	$u = $_SESSION['id'];
	$quq = "SELECT * FROM reg WHERE id='$u'";
	$x = mysqli_query($con,$quq);
	while($vuta = mysqli_fetch_assoc($x)){
		$name = $vuta['regno'];

?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CSRS</title>
    <style>
    </style>
    <link rel="stylesheet" href="bootstrap.css" type="text/css">
</head>
<body>
	<?php
		if($vuta['gender'] == "Female" || $vuta['gender'] == "female"){
			?>
    <div class="container-fluid">
            <div class="panel-heading">
                    <p class="text-center h3">BOOK ROOM (HOSTEL SECTION)</p>
                       </div>
            
            <div class="container"> 
                <h1>BLOCK 1</h1>
                <marquee behavior="" direction="">THIS FOR GIRLS ONLY</marquee>
                <form action="" method="POST">

                    <fieldset><legend><h1>RESERVE ROOM</h1></legend> 
                        <h3>KEY</h3>
                        <input type="button" class="btn btn-info" value="V">RESERVED  <input type="button" class="btn btn-success" value="X">AVAILABLE
            <table class="table responsive">
            <?php 
            	$q = "SELECT * FROM `rooms` ";
            	$qq = mysqli_query($con,$q);
            	while($qqq = mysqli_fetch_assoc($qq)){
            ?>
            	<th><?php echo $qqq['room_no']; ?></th>
            	<th></th>
            <?php }  ?>

            <tr>  
            <?php 
            	$q1 = "SELECT * FROM `rooms` ";
            	$qq1 = mysqli_query($con,$q1);
            	while($qqq1 = mysqli_fetch_assoc($qq1)){
            		if($qqq1['bed_1'] == ""){
            			$va = "X";
            			$st = "success";
            		}else{
            			$va = "V";
            			$st = "info";
            			$message = "The room is already reserved!!";
            		}
            		$idd = $qqq1['room_no'];
            		$m = "user";
            ?>
				<td>
				<?php
					if($va == "X"){
					?>
					<a href="reserve.php?va=<?php echo $va; ?>&user=<?php echo $name; ?>&id=<?php echo $idd?>&bed=1" class="btn btn-<?php echo $st; ?>" ><?php echo $va; ?></a>
					<?php
					}else{
						?>
						<a class="btn btn-<?php echo $st; ?>" onclick="return alert('The room is reserved!!');"><?php echo $va; ?></a>
						<?php
					}
				?>
				</td>
				<td>
					</td>
					
			<?php }  ?>
			</tr>
			<tr>  
            <?php 
            	$q2 = "SELECT * FROM `rooms` ";
            	$qq2 = mysqli_query($con,$q2);
            	while($qqq2 = mysqli_fetch_assoc($qq2)){
            		if($qqq2['bed_2'] == ""){
            			$va = "X";
            			$st = "success";
            		}else{
            			$va = "V";
            			$st = "info";
            		}
            		$idd = $qqq2['room_no'];
            		$m = "mimi";
            ?>
				<td>
				<?php
					if($va == "X"){
					?>
					<a href="reserve.php?va=<?php echo $va; ?>&user=<?php echo $name; ?>&id=<?php echo $idd?>&bed=2" class="btn btn-<?php echo $st; ?>" ><?php echo $va; ?></a>
					<?php
					}else{
						?>
						<a class="btn btn-<?php echo $st; ?>" onclick="return alert('The room is reserved!!');"><?php echo $va; ?></a>
						<?php
					}
				?>
				</td>
				<td>
					</td>
					
			<?php }  ?>
			</tr>

			<tr>  
            <?php 
            	$q3 = "SELECT * FROM `rooms` ";
            	$qq3 = mysqli_query($con,$q3);
            	while($qqq3 = mysqli_fetch_assoc($qq3)){
            		if($qqq3['bed_3'] == ""){
            			$va = "X";
            			$st = "success";
            		}else{
            			$va = "V";
            			$st = "info";
            		}
            		$idd = $qqq3['room_no'];
            		$m = "mimi";
            ?>
				<td>
				<?php
					if($va == "X"){
					?>
					<a href="reserve.php?va=<?php echo $va; ?>&user=<?php echo $name; ?>&id=<?php echo $idd?>&bed=3" class="btn btn-<?php echo $st; ?>" ><?php echo $va; ?></a>
					<?php
					}else{
						?>
						<a class="btn btn-<?php echo $st; ?>" onclick="return alert('The room is reserved!!');"><?php echo $va; ?></a>
						<?php
					}
				?>
				</td>
				<td>
					</td>
					
			<?php }  ?>
			</tr>

			<tr>  
            <?php 
            	$q4 = "SELECT * FROM `rooms` ";
            	$qq4 = mysqli_query($con,$q4);
            	while($qqq4 = mysqli_fetch_assoc($qq4)){
            		if($qqq4['bed_4'] == ""){
            			$va = "X";
            			$st = "success";
            		}else{
            			$va = "V";
            			$st = "info";
            		}
            		$idd = $qqq4['room_no'];
            		$m = "mimi";
            ?>
				<td>
				<?php
					if($va == "X"){
					?>
					<a href="reserve.php?va=<?php echo $va; ?>&user=<?php echo $name; ?>&id=<?php echo $idd?>&bed=4" class="btn btn-<?php echo $st; ?>" ><?php echo $va; ?></a>
					<?php
					}else{
						?>
						<a class="btn btn-<?php echo $st; ?>" onclick="return alert('The room is reserved!!');"><?php echo $va; ?></a>
						<?php
					}
				?>
				</td>
				<td>
					</td>
					
			<?php }  ?>
			</tr>
			</table>

			</fieldset>
                </form>
            </div>
		<?php }else if($vuta['gender'] == "Male" || $vuta['gender'] == "male"){ ?>
				<div class="container">
    		<h1>BLOCK 2</h1>
    			<marquee behavior="" direction="">THIS IS FOR BOYS ONLY</marquee>
    			<form action="" method="POST">

            <fieldset><legend><h1>RESERVE ROOM</h1></legend> 
                <h3>KEY</h3>
                <input type="button" class="btn btn-info" value="V">RESERVED  <input type="button" class="btn btn-success" value="X">AVAILABLE
                <table class="table responsive">
            <?php 
            	$q = "SELECT * FROM `boys_rooms` ";
            	$qq = mysqli_query($con,$q);
            	while($qqq = mysqli_fetch_assoc($qq)){
            ?>
            	<th><?php echo $qqq['room_no']; ?></th>
            	<th></th>
            <?php }  ?>

            <tr>  
            <?php 
            	$q1 = "SELECT * FROM `boys_rooms` ";
            	$qq1 = mysqli_query($con,$q1);
            	while($qqq1 = mysqli_fetch_assoc($qq1)){
            		if($qqq1['bed_1'] == ""){
            			$va = "X";
            			$st = "success";
            		}else{
            			$va = "V";
            			$st = "info";
            			$message = "The room is already reserved!!";
            		}
            		$idd = $qqq1['room_no'];
            		$m = "user";
            ?>
				<td>
				<?php
					if($va == "X"){
					?>
					<a href="reserve.php?va=<?php echo $va; ?>&user=<?php echo $name; ?>&id=<?php echo $idd?>&bed=1&gender=boy" class="btn btn-<?php echo $st; ?>" ><?php echo $va; ?></a>
					<?php
					}else{
						?>
						<a class="btn btn-<?php echo $st; ?>" onclick="return alert('The room is reserved!!');"><?php echo $va; ?></a>
						<?php
					}
				?>
				</td>
				<td>
					</td>
					
			<?php }  ?>
			</tr>
			<tr>  
            <?php 
            	$q2 = "SELECT * FROM `boys_rooms` ";
            	$qq2 = mysqli_query($con,$q2);
            	while($qqq2 = mysqli_fetch_assoc($qq2)){
            		if($qqq2['bed_2'] == ""){
            			$va = "X";
            			$st = "success";
            		}else{
            			$va = "V";
            			$st = "info";
            		}
            		$idd = $qqq2['room_no'];
            		$m = "mimi";
            ?>
				<td>
				<?php
					if($va == "X"){
					?>
					<a href="reserve.php?va=<?php echo $va; ?>&user=<?php echo $name; ?>&id=<?php echo $idd?>&bed=2&gender=boy" class="btn btn-<?php echo $st; ?>" ><?php echo $va; ?></a>
					<?php
					}else{
						?>
						<a class="btn btn-<?php echo $st; ?>" onclick="return alert('The room is reserved!!');"><?php echo $va; ?></a>
						<?php
					}
				?>
				</td>
				<td>
					</td>
					
			<?php }  ?>
			</tr>

			<tr>  
            <?php 
            	$q3 = "SELECT * FROM `boys_rooms` ";
            	$qq3 = mysqli_query($con,$q3);
            	while($qqq3 = mysqli_fetch_assoc($qq3)){
            		if($qqq3['bed_3'] == ""){
            			$va = "X";
            			$st = "success";
            		}else{
            			$va = "V";
            			$st = "info";
            		}
            		$idd = $qqq3['room_no'];
            		$m = "mimi";
            ?>
				<td>
				<?php
					if($va == "X"){
					?>
					<a href="reserve.php?va=<?php echo $va; ?>&user=<?php echo $name; ?>&id=<?php echo $idd?>&bed=3&gender=boy" class="btn btn-<?php echo $st; ?>" ><?php echo $va; ?></a>
					<?php
					}else{
						?>
						<a class="btn btn-<?php echo $st; ?>" onclick="return alert('The room is reserved!!');"><?php echo $va; ?></a>
						<?php
					}
				?>
				</td>
				<td>
					</td>
					
			<?php }  ?>
			</tr>

			<tr>  
            <?php 
            	$q4 = "SELECT * FROM `boys_rooms` ";
            	$qq4 = mysqli_query($con,$q4);
            	while($qqq4 = mysqli_fetch_assoc($qq4)){
            		if($qqq4['bed_4'] == ""){
            			$va = "X";
            			$st = "success";
            		}else{
            			$va = "V";
            			$st = "info";
            		}
            		$idd = $qqq4['room_no'];
            		$m = "mimi";
            ?>
				<td>
				<?php
					if($va == "X"){
					?>
					<a href="reserve.php?va=<?php echo $va; ?>&user=<?php echo $name; ?>&id=<?php echo $idd?>&bed=4&gender=boy" class="btn btn-<?php echo $st; ?>" ><?php echo $va; ?></a>
					<?php
					}else{
						?>
						<a class="btn btn-<?php echo $st; ?>" onclick="return alert('The room is reserved!!');"><?php echo $va; ?></a>
						<?php
					}
				?>
				</td>
				<td>
					</td>
					
			<?php } 
				}
				?>
			</tr>
			</table>

			</fieldset>
                </form>
            </div>
<?php } ?>

</body>
</html>
<?php }  ?>