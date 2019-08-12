<?php include '../includes/dbc.php'; ?>

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
                           <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                
        </h3>
        <?php $d=$con->query("SELECT * FROM commands order by id DESC ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
        <th>Contact</th> 
         <th>Adress</th> 
          <th>Appointment</th> 
           <th>Date</th> 
            <th>Days Left</th> 
          <th>Action</th> 
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['name']; ?></td>
                                            <td><?php  echo $bu['tel']; ?></td>
                                            <td><?php  echo $bu['email']; ?></td>
                                            <td><?php  echo $bu['message']; ?></td>
                                            <td><?php  echo $bu['date']; ?></td>
                                            <td><?php 

$today=date('d-m-Y'); 	
	 $date1 = date_create($bu['date']);
        //echo "Start date: ".$date1->format("d-m-Y")."<br>";
        $date2 = date_create($today);
		
        //echo "End date: ".$date2->format("d-m-Y")."<br>";
		if($date2>$date1){
			echo "<span class='error'> Expired</span>";
		}
		
		elseif ($date2==$date1){
						echo "<span class='error'>Only today </span>";

		}
		
		else{
			
        $diff = date_diff($date1,$date2);
	
        echo $diff->format(" %m month %d day")."&nbsp;"."Left"."<br>";
		
		} 
; ?></td>
                                           
       <td>
        <a href="?delete=<?php echo $bu['id']; ?>"><button class="btn btn-danger" onClick="return confirm('Are you sure you want to delete <?php echo $bu['name']; ?>')"  >Cancel</button></a>
       
      
       </td>
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                    </table>
                                         <!--END MAIN WRAPPER -->

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
                
</div></div>

                                   </table>

<?php
if(isset($_GET['delete'])){
	$id=$_GET['delete'];
  $sql = $con->query("DELETE FROM commands where id='$id' ") or die(mysqli_error($con))   ;

		 echo '<meta http-equiv="Refresh" stock="0; url=appointments.php ">';
}
?>