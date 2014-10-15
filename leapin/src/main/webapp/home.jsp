<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>LEAPin</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <script src="assets/js/chart-master/Chart.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="home" class="logo"><b>LEAPin</b></a>
            <!--logo end-->
            
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="j_spring_security_logout">Logout</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
            
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
                  <li class="mt">
                      <a class="active" href="index.html">
                          <i class="fa fa-dashboard"></i>
                          <span>Programs</span>
                      </a>
                  </li>

                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
          	<div style="text-align:'right'">${msg}</div>
			<h3><i class="fa fa-angle-right"></i> Add Program</h3>
              <!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                      <form class="form-horizontal style-form"  method="post" modelAttribute="program" action="saveProgram">
                          <div class="form-group">
                              <label class="col-sm-1 col-sm-1 control-label">Name</label>
                              <div class="col-sm-3">
                                  <input type="text" class="form-control" name="name" placeholder="e.g. M.Sc in Psychology">
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">Type</label>
                              <div class="col-sm-3">
                                  <input type="text" class="form-control" name="type" placeholder="e.g. Regular or Part Time">
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">Degree</label>
                              <div class="col-sm-3">
                                  <input type="text" class="form-control" name="degree" placeholder="e.g. Graduate or Post Graduate">
                              </div>
                          </div>
                         
                          <div class="form-group">
                              <label class="col-sm-1 col-sm-1 control-label">Level</label>
                              <div class="col-sm-3">
                                  <input type="text" class="form-control" name="level" placeholder="e.g. UG,PG, Higher Studies">
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">Duration</label>
                              <div class="col-sm-3">
                                  <input type="text" class="form-control" name="duration" placeholder="e.g. 3 months, 2 years 6 months">
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">Seats</label>
                              <div class="col-sm-3">
                                  <input type="text" class="form-control" name="seats" placeholder="e.g. 60">
                              </div>
                          </div>
                          
                          <div class="form-group">
                              <label class="col-sm-1 col-sm-1 control-label">Qualification</label>
                              <div class="col-sm-3">
                              	<textarea class="form-control" rows="3" name="qualification" placeholder="e.g. Graduation with 50%"></textarea>
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">Fee Structure</label>
                              <div class="col-sm-3">
                              	<textarea class="form-control" rows="3"  name="fee" placeholder="e.g. 2000 per semester"></textarea>
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">Admission Procedure</label>
                              <div class="col-sm-3">
                              	<textarea class="form-control" rows="3"  name="admissionProcedure" placeholder="e.g. Entrance Exam"></textarea>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-1 col-sm-1 control-label">Admission Syllabus</label>
                              <div class="col-sm-3">
                              	<textarea class="form-control" rows="3" name="admissionSyllabus" placeholder="e.g. Entrance exam syllabus"></textarea>
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">Reservation</label>
                              <div class="col-sm-3">
                              	<textarea class="form-control" rows="3" name="quota" placeholder="e.g. 15% OBC, 27% SC & ST "></textarea>
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">Notifications</label>
                              <div class="col-sm-3">
                              	<textarea class="form-control" rows="3"  name="formNotification" placeholder="Notification start dates"></textarea>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-1 col-sm-1 control-label">Session Commencment</label>
                              <div class="col-sm-3">
                              	<textarea class="form-control" rows="3" name="sessionCommencement" placeholder="Session start dates"></textarea>
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">Accomodation Information</label>
                              <div class="col-sm-3">
                              	<textarea class="form-control" rows="3" name="accomodationInfo" placeholder="Hostel availability and procedure"></textarea>
                              </div>
                              
                          </div>
                          
                           <div class="form-group cc">
                              <label class="col-sm-1 col-sm-1 control-label">Course </label>
                              <div class="col-sm-3">
                                  <input type="text"  class="form-control course" name="courses[0].name" placeholder="e.g. Applied Physics">
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">Cateogry</label>
                              <div class="col-sm-3">
                                  <input type="text"  class="form-control category" name="courses[0].category" placeholder="e.g. Physics">
                              </div>
                               <div class="col-md-4">
           							 <button type="button" class="btn btn-default addButton">
                						<i class="fa fa-plus"></i>
            						</button>
       							</div>
                          </div>
                          
                         
    
    						<div class="form-group">
                              <label class="col-sm-1 col-sm-1 control-label">Institute Name</label>
                              <div class="col-sm-3">
                                  <input type="text"  class="form-control" name="instituteName" placeholder="e.g. Delhi University">
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">City</label>
                              <div class="col-sm-3">
                                  <input type="text"  class="form-control" name="city.name" placeholder="e.g. Delhi">
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">State</label>
                              <div class="col-sm-3">
                                  <input type="text" class="form-control" name="state" placeholder="e.g. Delhi">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-1 col-sm-1 control-label">Program Link</label>
                              <div class="col-sm-3">
                                  <input type="text" class="form-control"  name="link" placeholder="e.g. www.mca.du.ac.in">
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">Institute Link</label>
                              <div class="col-sm-3">
                                  <input type="text" class="form-control" name="instituteLink" placeholder="e.g. www.du.ac.in">
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label"></label>
                              <div class="col-sm-3">
                                  <button type="submit" class="btn btn-theme">Submit</button>
                              </div>
                               
                          </div>
                      </form>
                  </div>
          		</div><!-- col-lg-12-->     
          			
          	</div><!-- /row -->
          </section>
      </section>

      <!--main content end-->
		 <!-- The option field template containing an option field and a Remove button -->
					    <div class="form-group hide" id="optionTemplate">
					        <label class="col-sm-1 col-sm-1 control-label">Course </label>
                              <div class="col-sm-3">
                                  <input type="text"  class="form-control course" placeholder="e.g. Applied Physics">
                              </div>
                              <label class="col-sm-1 col-sm-1 control-label">Cateogry</label>
                              <div class="col-sm-3">
                                  <input type="text"  class="form-control category" placeholder="e.g. Physics">
                              </div>
					        <div class="col-md-4">
					            <button type="button" class="btn btn-default removeButton">
					                <i class="fa fa-minus"></i>
					            </button>
					        </div>
					    </div>      

      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="index.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="assets/js/sparkline-chart.js"></script>    
	<script src="assets/js/zabuto_calendar.js"></script>	
	
	<script src="assets/js/common.js" type="text/javascript">
       
	</script>
	<script src="assets/js/validator.min.js" type="text/javascript"></script>
	<script type="application/javascript">
       
    </script>
  

  </body>
</html>
