
    	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
	<link rel="stylesheet" type="text/css" href="../css/another.css">
   
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
    <!--END GLOBAL STYLES -->

    <!-- PAGE LEVEL STYLES -->
    <link href="../assets/css/layout2.css" rel="stylesheet" />
       <link href="../assets/plugins/flot/examples/examples.css" rel="stylesheet" />
       <link rel="stylesheet" href="../assets/plugins/timeline/timeline.css" />
    
    <?php
$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item
include '../includes/dbc.php';


 
  
?>
  <?PHP
						 echo $message;
						?>
          <div class="panel-body"  >
                            <div class="table-responsive" style="margin-top:20px">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example" style="margin-top:20px">
                                
        </h3>
      
 <thead>
                                        <tr>
                                          <th>S/N</th>
                                          <th>Clothe Name</th>
        <th>Price </th>
      
      
        <th>Action</th>
      
                                        </tr>
                                    </thead>
                                    <tbody>
  <?PHP
	
								$ab= mysql_query("select * from clothes  where type='1' order by id DESC" ) or die (mysql_error());
								$i=1;
								while ($df= mysql_fetch_array ($ab) ){
							?>                                    
   
  

      <tr>
       
            <td><?php  echo $i++; ?></td>
         <td ><?php echo $df['name']; ?></td>

        <td><?php echo $name=$df['code']; ?></td>
     
<td><a href="?add_clothe&link=Adding Clothe types&delete=<?php echo $df['id']; ?>"><button class="btn btn-danger"><i class="icon-cross icon-white"></i> DELETE</button></a></td>

       
      
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
                                <table>
                                         
                           
  
   
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
    </script></div>
 </div>
 </table>
 </div>
 </div>
 
  <?php
 ///////////////delete item
if(isset($_GET['delete'])){
	 $id=$_GET['delete'];
	  $dfG=$con->query("DELETE FROM clothes where id='$id'") or die(mysqli_error($con));
	  
	   $message= "<div class='alert alert-success'>Item Successfully Deleted. Thank You</div>";
	   echo '<meta http-equiv="Refresh" content="0; url=all_clothes12.php ">';

  }
  
 ?>