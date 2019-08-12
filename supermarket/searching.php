<?php
include '../includes/dbc.php';

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

    
   
<?php 
$today=date('d-m-Y');
$d=$con->query("SELECT * FROM customers where reg_date='$today' and status!='2' order by client_id DESC LIMIT 2  ") or die(mysqli_error($con));
$i=1;
?>

       <table class="table table-bordered">
    <thead>
      <tr>
              <th>#</th>

        <th>Names</th>
        <th>Contact</th>
         <th>Action</th>
        
      </tr>
    </thead>
    <tbody>
    
      <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
         <?php
		if($i%2==0)
 {
     echo '<tr bgcolor="Bisque">';
 }
 else
 {
    echo '<tr bgcolor="White">';
 }
		
		?>
           <td><?php  echo $i++; ?></td>
                                            <td><?php echo $bu['stu_name']; ?></td>  
                                            <td><?php echo $bu['tel']; ?></td>  
                                              <td>
                                              
                                              
                                              
                                              <a href="index.php?my_client&link=Chosing My clients Hair style&serve=<?php echo $bu['stu_name']; ?>&tel=<?php  echo $bu['tel']; ?>&addr=<?php  echo $bu['address']; ?>&id=<?php echo $bu['client_id']; ?>" style="font-weight:bold; color:#033" target="new"><button class="btn btn-success"><i class="icon-briefcase icon-white"></i> Service  Client</button></a></td>
                   
      </tr>
        <?php } ?>
       
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                
        </h3>
        <?php $d=$con->query("SELECT * FROM names order by name  ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                            <th>#</th>
                                             <th>Name</th>
        <th>Contact</th> 
         <th>Adrees</th> 
          <th>Action</th> 
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
           <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['name']; ?></td>
                                            <td><?php  echo $bu['sector']; ?></td>
                                            <td><?php  echo $bu['dept']; ?></td>
                                           
       <td> 
       <a href="?servicing_client&link=Add Client&serve=<?php echo $bu['name']; ?>&tel=<?php  echo $bu['sector']; ?>&addr=<?php  echo $bu['dept']; ?>&id=<?php echo $bu['id']; ?>"><button class="btn btn-primary"   >Service <?php  echo $bu['name']; ?> </button></a>
       
       </td>
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
                            </div></div>
                   


   
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
    </div>
    </table>
    <?php
	 if(isset($_GET['serve'])){
	 $name=$_GET['serve'];
	 $tel=$_GET['tel'];
	 $addr=$_GET['addr'];
	 $date=date('d-m-Y');
	 $yaer=date('Y');
	 $yid=$_GET['id'];
	 $dfG=$con->query("insert into customers set stu_name='$name',tel='$tel',reg_date='$date',address='$addr',year='$yaer',yourid='$yid'") or die(mysqli_error($con));
	  	  	echo '<meta http-equiv="Refresh" content="0; url= ?go_ahead&link='.$name.'&roll='.$yid.'">';
	 
	 

  }
	?>
    
    
    
    
    
    
    