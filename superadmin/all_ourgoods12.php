
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

if(isset($_POST['OK'])){
$id=$_POST['id'];
$product=$_POST['name'];
$cost=$_POST['cost'];
$old=$_POST['qty'];
$qty=$_POST['newqty'];
$sp=$_POST['sp'];
$date=date('d-m-Y');
$month=date('m');
$year=date('Y');
$barcode=$_POST['barcode'];
$tqty=$old+$qty;

$o=$con->query("UPDATE  finals SET qty='$tqty', barcode='$barcode'  WHERE id='$id'") or die(mysqli_error($con));
$gh=$con->query("INSERT INTO supply SET qty='$qty',name='$product',month='$month',date='$date',year='$year',cp='".$_GET['cost']."',sp='".$_GET['sp']."' ") or die(mysqli_error($con));
echo '<meta http-equiv="Refresh" content="0; url= ?adding_goods&link=Adding Goods">';
	 
	 


}
///////////////delete item
if(isset($_GET['delete'])){
	 $id=$_GET['delete'];
	  $dfG=$con->query("DELETE FROM finals where id='$id'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Deleted. Thank You</div>";

  }
  
  /////////////for updates
  $doU=$con->query("SELECT * FROM finals WHERE id='".$_GET['update']."'") or die(mysqli_error($con));
  while($nam=$doU->fetch_assoc()){
	 echo $sha=$nam['name'];
	  $dis=$nam['disc'];
	  $cp=$nam['cost'];
	  $dis=$nam['disc'];
	  $sp=$nam['sp'];
  }
  
  // now update
  if(isset($_POST['Update'])){
	  $shape=$_POST['name'];;
	  $Dis=$_POST['disc'];
	   $C=$_POST['cost'];
	   $S=$_POST['sp'];
	 $id=$_GET['update'];
	  $dfGu=$con->query("UPDATE finals SET name='$shape',disc='$Dis',cost='$C',sp='$S' where id='$id'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Updated. Thank You</div>";



  }
 
  
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
                                          <th>Sector</th>
        <th>NAME</th>
        <th>Qty</th>
        <th>UNITS</th>
        <th>Cost Price</th>
        <th>Selling Price</th>
        <th>Barcode</th>
      
                                        </tr>
                                    </thead>
                                    <tbody>
  <?PHP
	
								$ab= mysql_query("select SUM(qty),SUM(cost*qty),SUM(sp*qty),sector from finals" ) or die (mysql_error());
								$num=1;
								while ($r= mysql_fetch_array ($ab) ){
							?>                                    
   
   <?php $d=$con->query("SELECT * FROM finals order by id DESC  ") or die(mysqli_error($con));
$i=1;
?>
                                    
                                       <?php while($df=$d->fetch_assoc()){ ?>

      <tr>
       
            <td><?php  echo $i++; ?></td>
         <td style="color:#f00"><?php echo $df['sector']; ?></td>

        <td><?php echo $name=$df['name']; ?></td>
        <td><?php echo $df['qty']; ?></td>
         <td><?php echo $df['disc']; ?></td>
         <td><?php echo $df['cost']; ?></td>
 <td><?php echo $df['sp']; ?></td>

 <td><?php echo $df['barcode']; ?></td>
       
      
                                            
                                        </tr>
                                     
                                       <?php } } ?>
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