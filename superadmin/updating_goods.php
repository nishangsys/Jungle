
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
	   $qtty=$_POST['qtty'];
	 $id=$_GET['update'];
	  $dfGu=$con->query("UPDATE finals SET name='$shape',disc='$Dis',cost='$C',sp='$S',qty='$qtty' where id='$id'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Updated. Thank You</div>";



  }
 
  
?>




  <?PHP if(isset($_GET['change_name'])){
	$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item

if(isset($_POST['OK'])){
$shape=$_POST['name'];
$disc=$_POST['disc'];
$cost=$_POST['cost'];
$qty=$_POST['qty'];
$sp=$_POST['sp'];
//$df=$con->query("DELETE FROM finals where name='$shape' and disc='$disc' and branch='$branch'") or die(mysqli_error($con));
$o=$con->query("SELECT * FROM finals WHERE name='$shape' and disc='$disc' and branch='$branch'") or die(mysqli_error($con));
while($cc=$o->fetch_assoc()){
	$av=$cc['qty'];
	$nqty=$av+$qty;
}
if(mysqli_num_rows($o)>0){
	$dfGu=$con->query("UPDATE finals SET qty='$nqty',cost='$cost',name='$shape' WHERE name='$shape' AND disc='$disc'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Updated. Thank You</div>";
}
else {



$do=$con->query("INSERT INTO finals SET name='$shape',disc='$disc',branch='$branch',qty='0',cost='$cost',sp='$sp'  ") or die(mysqli_error($con));
$message= "<div class='alert alert-success'>".$_POST['name']." Successfully Registered. Thank You</div>";
}
}
///////////////delete item
if(isset($_GET['delete'])){
	 $id=$_GET['delete'];
	  $dfG=$con->query("DELETE FROM finals where id='$id'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-danger'>Item Successfully Deleted. Thank You</div>";
	    echo '<meta http-equiv="Refresh" content="0; url=?add_goods.php ">';

  }
  
  /////////////for updates
  $doU=$con->query("SELECT * FROM finals WHERE id='".$_GET['add_good']."'") or die(mysqli_error($con));
  while($nam=$doU->fetch_assoc()){
	 $sha=$nam['name'];
	  $dis=$nam['disc'];
	  $cp=$nam['cost'];
	  $dis=$nam['disc'];
	  $sp=$nam['sp'];
	  $id=$nam['id'];
	    $qty=$nam['qty'];
  }
  
  // now update
  if(isset($_POST['Update'])){
	  $shape=$_POST['name'];;
	  $Dis=$_POST['disc'];
	   $C=$_POST['cost'];
	   $S=$_POST['sp'];
	   $idd=$_POST['id'];
	 $id=$_GET['update'];
	 $qtty=$_POST['qtty'];
	  $dfGu12=$con->query("UPDATE finals SET name='$shape',disc='$Dis',cost='$C',sp='$S',qty='$qtty' where id='$idd'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Updated. Thank You</div>";
	   
		 echo '<meta http-equiv="Refresh" content="0; url=?recordin_goods ">';

  }
 
  
						?>
                        
                        <form class="form-inline" action="" method="post" style="background:#063; padding:10px 0px">
                                       
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"></label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd" value="<?php echo $sha; ?>" name="name" placeholder="Product"  style="background:#FF9; border:2px solid#f00" >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $dis; ?>" name="disc" required placeholder="Units of Measureemts:" style="background:#FF9; border:2px solid#f00" >
    </div>
  </div>
 


   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $cp; ?>" name="cost" required placeholder="Cost Price:" style="width:120px;background:#FF9; border:2px solid#f00"  >
    </div>
  </div>
 





    
                         <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"></label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd" value="<?php echo $sp; ?>" name="sp" placeholder="Selling Price:" style="width:120px;background:#FF9; border:2px solid#f00"  >
    </div>
  </div>  
  
  
  
  
                         <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"></label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd" value="<?php echo $qty; ?>" name="qtty" placeholder="Qty:" style="width:120px;background:#FF9; border:2px solid#f00"  >
    </div>
  </div>  
  
  <input type="hidden"  value="<?php echo $id; ?>" name="id" >
  
  
  
  
  
 <button class="btn btn-default" name="Update"><i class="icon-pencil icon-white"></i> UPDATE</button>
  
  
   
  </div>
  </div>

  </form>

   
<?php }  else{
	
	?>
                        <form class="form-inline" action="" method="post" style="background:#000; color:#fff; padding:10px 0px ">
                                       
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Product</label>
    <div class="col-sm-10"> 
      <input type="text" required="required" class="form-control" id="pwd" value="<?php echo $_GET['product']; ?>" name="names" readonly style="background:#FF9; border:2px solid#f00"  >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Current Stock </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $_GET['qty']; ?>" name="qty" required placeholder=":" style="width:80px;background:#FF9; border:2px solid#f00" readonly >
    </div>
  </div>
 


   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">New Qty </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" name="newqty"  style="width:100px"  >
    </div>
  </div>
 
 
 
 
 
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> Barcode</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" name="barcode"  style="width:200px" placeholder="Barcode"  >
    </div>
  </div>
 


<input type="hidden"  id="pwd" name="id" value="<?php echo $_GET['add_good']; ?>"  >
  
  
  
  
  
  
  
  <button type="submit" name="OK" class="btn btn-default">Update</button>
  
  
    
  <?php
  if($_GET['update']!=''){
	  echo '<button class="btn btn-primary"><i class="icon-pencil icon-white"></i> UPDATE</button>';
  }
  ?>
  </div>
  </div>

  </form>
<?php } ?>

       <hr>
                        <div class="panel-body"  >
                            <div class="table-responsive" style="margin-top:20px">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example" style="margin-top:20px">
                                
        </h3>
        <?php $d=$con->query("SELECT * FROM finals order by name  ") or die(mysqli_error($con));
$i=1;
?>
 <thead>
                                        <tr>
                                          <th>S/N</th>
        <th>NAME</th>
        <th>Qty</th>
        
        <th>Barcode</th>
        <th>ACTION</th>
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($df=$d->fetch_assoc()){ ?>

      <tr>
       
            <td><?php  echo $i++; ?></td>
        <td><?php echo $name=$df['name']; ?></td>
        <td><?php echo $df['qty']; ?></td>
        
 <td><?php echo $df['barcode']; ?></td>
         <td>
          
          <a href="UPDATE/index.php" target="_new">
<button class="btn btn-success" ><i class="icon-plus icon-white"></i> New Stock/Barcode</button>

</a>|
     <a href="?change_name&link=Adding Goods&add_good=<?php echo $df['id']; ?>&qty=<?php echo $df['qty']; ?>&cost=<?php echo $df['cost']; ?>&product=<?php echo $df['name']; ?>&sp=<?php echo $df['sp']; ?>">
<button class="btn btn-primary"><i class="icon-edit icon-white"></i> UPDATE Price/Qty</button>

</a>


</a>

 <a href="?change_name&link=Adding Goods&delete=<?php echo $df['id']; ?>&qty=<?php echo $df['qty']; ?>&cost=<?php echo $df['cost']; ?>&product=<?php echo $df['name']; ?>&sp=<?php echo $df['sp']; ?>">
<button class="btn btn-danger" onclick="return confirm('Are You sure about that?')"><i class="icon-trash icon-white"></i> DELETE </button>

</a>




</td>

       
      
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
  
   
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