
    	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
	<link rel="stylesheet" type="text/css" href="../css/another.css">
   
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
    <script language="JavaScript" src="../js/pop-up.js"></script>
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
                            
             
	 <?php	
	
	   echo $message
	 ?> 
    
	                
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example" style="margin-top:20px">
                                
        </h3>
      
 <thead>
                                        <tr>
                                          <th>S/N</th>
       <th>Name</th>
        <th>Contact</th> 
        <th>Sector</th>
         <th>Photo</th> 
          
        <th>ACTION</th>
        
                                        </tr>
                                    </thead>
                                    <tbody>

 
 </tr>
   <?php $d=$con->query("SELECT * FROM hair_stylists order by id DESC ") or die(mysqli_error($con));
$i=1;
?>
                                    
                                       <?php while($bu=$d->fetch_assoc()){ ?>

      <tr>
       
          <td><?php  echo $i++; ?></td>
                                            <td><?php  echo $bu['name']; ?></td>
                                             <td><?php  echo $bu['sector']; ?></td>
                                            <td><?php  echo $bu['tel']; ?></td>
                                            
                                            <td><img src="../photo/<?php  echo $bu['photo']; ?>" style="width:50px; height:50px" /></td>
                                  
          
   <td>  <a href=javascript:popcontact('updateme.php?tabs=<?php echo $bu['id']; ?>&area=0') style="color:#fff; text-decoration:blink text-align:center; font-weight:bold;">      
<button class="btn btn-success"><i class="icon-edit icon-white"></i> UPDATE PHOTO</button>

</a>

  
  




</td>

       
      
                                            
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