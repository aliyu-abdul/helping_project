<?php
session_start();
$DB_con = new mysqli('localhost', 'root', '', 'csrs');
$_SESSION['msg']="";
//include("checklogin.php");
//check_login();


if(isset($_POST['Submit']))
{
   
  $regno = mysqli_real_escape_string($DB_con,$_POST['regno']);
    $fn = mysqli_real_escape_string($DB_con,$_POST['fn']);
    $md = mysqli_real_escape_string($DB_con,$_POST['md']);
    $ln = mysqli_real_escape_string($DB_con,$_POST['ln']); 
    $gd = mysqli_real_escape_string($DB_con,$_POST['gd']);
    $ct = mysqli_real_escape_string($DB_con,$_POST['ct']);
    $em = mysqli_real_escape_string($DB_con,$_POST['em']);
    $pas = mysqli_real_escape_string($DB_con,$_POST['pas']); 
  

    
    $sql = "INSERT INTO reg (regno, firstname, middlename, lastname, gender, contact, email, password, updatedate,passupdate) " . 
    "VALUES ('$regno', '$fn', '$md', '$ln', '$gd','$ct', '$em','$pas', now(), now())";

    $ires = mysqli_query($DB_con, $sql) or die(mysqli_error($DB_con));
	if($ires){
    $_SESSION['msg'] = "STUDENT REGISTERED SUCCESSFULLY";
	}else{
		$_SESSION['msg'] = "Failed to REGISTER STUDENT";
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

    <title>REGISTER STUDENT</title>
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
                          <span>Manage student</span>
                      </a>
                   
                  </li>

                  <li class="sub-menu">
                      <a href="manage-userss.php" >
                          <i class="fa fa-users"></i>
                          <span>Manage Staffs</span>
                      </a>
                   
                  </li>

                  <li class="sub-menu">
                      <a href="manage-users.php" >
                          <i class="fa fa-users"></i>
                          <span>Add student</span>
                      </a>
                   
                  </li>
                  <li class="sub-menu">
                      <a href="access-log.php" >
                          <i class="fa fa-users"></i>
                          <span>usre log</span>
                      </a>
                   
                  </li>
              
                 
              </ul>
          </div>
      </aside>
     
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i>ADD STUDENT</h3>
             	
				<div class="row">
				
                  
	                  
                  <div class="col-md-12">
                      <div class="content-panel">
                      <p align="center" style="color:#F00;"><?php echo $_SESSION['msg'];?><?php echo $_SESSION['msg']=""; ?></p>
                           <form class="form-horizontal style-form" name="form1" method="post" action="" onSubmit="return valid();">
                           <p style="color:#F00"><?php echo $_SESSION['msg'];?><?php echo $_SESSION['msg']="";?></p>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">REGISTRATION NUMBER</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="regno" required>
                              </div>
                          </div>
                          
                              <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">FIRST NAME</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="fn" required>
                              </div>
                          </div>
                          
                              <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">MIDDLE NAME</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="md" required>
                              </div>
                          </div>
                               <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">LAST NAME </label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="ln" required>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">GENDER</label>
                              <div class="col-sm-10">
                                 
                                  <select name="gd" id="role" class="form-control" required>
                                  <option value="male">MALE</option>
                                  <option value="female">FEMALE</option>
                                  </select>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">CONTACT </label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="ct" required >
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">EMAIL </label>
                              <div class="col-sm-10">
                                  <input type="email" class="form-control" name="em" required >
                              </div>
                          </div>
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label" style="padding-left:40px;">PASSWORD </label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="pas"  required>
                              </div>
                          </div>
                          <div style="margin-left:100px;">
                          <input type="submit" name="Submit" value="SUBMIT" class="btn btn-primary"></div>
                          </form>
                      </div>
                  </div>
              </div>
		</section>
      
      </section></section>
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
