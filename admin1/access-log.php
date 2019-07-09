<?php
session_start();
include'dbconnection.php';
//include("checklogin.php");
//check_login();
if(isset($_GET['id']))
{
$adminid=$_GET['id'];
$msg=mysqli_query($con,"delete from reg where id='$adminid'");
if($msg)
{
echo "<script>alert('Data deleted');</script>";
}

}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>ADMIN SECTION</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
  </head>

  <body>

  <section id="container" >
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <a href="#" class="logo"><b>Admin Dashboard</b></a>
            <div class="nav notify-row" id="top_menu">
               
                         
                   
                </ul>
            </div>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="logout.php">Logout</a></li>
            	</ul>
            </div>
        </header>
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="#"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered"></h5>
              	  	
                 

                  <li class="sub-menu">
                      <a href="manage-users.php" >
                          <i class="fa fa-users"></i>
                          <span>Manage STUDENT</span>
                      </a>
                   
                  </li>

                  <li class="sub-menu">
                      <a href="manage-userss.php" >
                          <i class="fa fa-users"></i>
                          <span>Manage Staffs</span>
                      </a>
                   
                  </li>

				  <li class="sub-menu">
                      <a href="access-log.php" >
                          <i class="fa fa-users"></i>
                          <span>usre log</span>
                      </a>
                   
                  </li>

                  <li class="sub-menu">
                      <a href="update-profile.php" >
                          <i class="fa fa-users"></i>
                          <span>Add STUDENT</span>
                      </a>
                   
                  </li>
              
                 
              </ul>
          </div>
      </aside>
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right">All User Details</i> </h3>
				<div class="row">
				
                  
	                  
                  <div class="col-md-12">
                      <div class="content-panel">
                          <table class="table table-striped table-advance table-hover">
	                  	  	  <h4><i class="fa fa-angle-right"></i>  ALL STUDENT DETAILS </h4>
	                  	  	  <hr>
                              <thead>
                              <tr>
							  <th>Sno.</th>
											<th>User Id</th>
											<th>User Email</th>
											<th>IP</th>
											<th>City</th>
											<th>Country</th>
											<th>Login Time</th>
                              </tr>
                              </thead>
                              <tbody>
                              <?php $ret=mysqli_query($con,"select * from userlog ");
							  $cnt=1;
							  while($row=mysqli_fetch_array($ret))
							  {?>
                              <tr>
                              <td><?php echo $cnt;?></td>
                                  
                                  <td><?php echo $row['userId'];?></td>
                                  <td><?php echo $row['userEmail'];?></td>
                                  <td><?php echo $row['userIp'];?></td> 
                                 <td><?php echo $row['city'];?></td>
                                 <td><?php echo $row['country'];?></td>
                                 <td><?php echo $row['loginTime'];?></td>
           
                              </tr>
                              <?php $cnt=$cnt+1; }?>
                             
                              </tbody>
                          </table>
                      </div>
                  </div>
              </div>
		</section>
      </section
  ></section>
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/common-scripts.js"></script>
  <script>
      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
