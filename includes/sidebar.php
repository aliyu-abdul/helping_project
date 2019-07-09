<nav class="ts-sidebar">
			<ul class="ts-sidebar-menu">
			
				<li class="ts-label">Main</li>
				<?PHP if(isset($_SESSION['id']))
				{ ?>
					<li><a href="dashboard.php"><i class="fa fa-desktop"></i>Dashboard</a></li>
					<li><a href="my-profile.php"><i class="fa fa-user"></i> My Profile</a></li>
<li><a href="change-password.php"><i class="fa fa-files-o"></i>Change Password</a></li>
<li><a href="gen/index.php"><i class="fa fa-file-o"></i>Book Hostel</a></li>

<li><a href="access-log.php"><i class="fa fa-file-o"></i>Access log</a></li>
<?php } else { ?>
				
				<!--<li><a href="registration.php"><i class="fa fa-files-o"></i> User Registration</a></li>-->
				<li><a href="index.php"><i class="fa fa-users"></i> STUDENT Login</a></li>
				<li><a href="admin"><i class="fa fa-user"></i> STAFF Login</a></li>
				<?php } ?>

			</ul>
		</nav>