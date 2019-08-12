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
        <?php $d=$con->query("SELECT product,price,opening_stocks,closing_stocks,SUM(qty),date,froms FROM basket WHERE opening_stocks!='' group by id order by id DESC") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Product</th>
        <th>Price</th> 
         <th>Old Stock</th> 
         <th>Qty Sold</th> 
          <th>Current Stock</th>    <th>Date</th>
         
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
           
                                            <td><?php  echo $bu['product']; ?></td>
                                                     <td><?php  echo $bu['price']; ?></td>
                                     
                                            <td><?php  echo $bu['opening_stocks']; ?></td>
                                               <td><?php  echo $bu['SUM(qty)']; ?></td>
                                            
                                                  <td><?php  echo $bu['opening_stocks']-$bu['SUM(qty)']; ?></td>
                                                         <td><?php  echo $bu['date']; ?></td>
                                            
                                            
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

		 echo '<meta http-equiv="Refresh" content="0; url=appointments.php ">';
}
?>