   <?php
$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item



 
  
?>
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
    <!--END GLOBAL STYLES -->

    <!-- PAGE LEVEL STYLES -->
    <link href="../assets/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
    <!-- END PAGE LEVEL  STYLES -->
       <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
     <!-- END HEAD -->
     <!-- BEGIN BODY -->
<body class="padTop53 " >

     <!-- MAIN WRAPPER -->
    <div id="wrap">


         <!-- HEADER SECTION -->
        <div id="top">

      
        <!--PAGE CONTENT -->
        <div id="content">


                <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                           <th>S/N</th>
                                          <th>Clothe Name</th>
        <th>Code</th>
      
      
        <th>Action</th>
                              
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <?PHP
	
								$ab= mysql_query("select * from clothes order by id DESC" ) or die (mysql_error());
								$i=1;
								while ($df= mysql_fetch_array ($ab) ){
							?>                                    
   
  
                                        <tr class="odd gradeX">

            <td><?php  echo $i++; ?></td>
         <td ><?php echo $df['name']; ?></td>

        <td><?php echo $name=$df['code']; ?></td>
     
<td><a href="index.php?add_clothe&link=Adding Clothe types&delete=<?php echo $df['id']; ?>"><button class="btn btn-danger"><i class="icon-cross icon-white"></i> DELETE</button></a></td>
                                        </tr>
                                        
                                        <?php } ?> 
                                    </tbody>
                                </table>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
          
                         

       <!--END PAGE CONTENT -->


    </div>

     <!--END MAIN WRAPPER -->

 
    <!--END FOOTER -->
     <!-- GLOBAL SCRIPTS -->
    <script src="../assets/plugins/jquery-2.0.3.min.js"></script>
     <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <!-- END GLOBAL SCRIPTS -->
        <!-- PAGE LEVEL SCRIPTS -->
    <script src="../assets/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="../assets/plugins/dataTables/dataTables.bootstrap.js"></script>
     <script>
         $(document).ready(function () {
             $('#dataTables-example').dataTable();
         });
    </script>
     <!-- END PAGE LEVEL SCRIPTS -->
</body>
     <!-- END BODY -->
</html>
