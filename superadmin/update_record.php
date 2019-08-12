<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/mystyle.css">
	<link rel="stylesheet" type="text/css" href="../css/another.css">
   
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/theme.css" />
    <link rel="stylesheet" href="../assets/css/MoneAdmin.css" />
    <link rel="stylesheet" href="../assets/plugins/Font-Awesome/css/font-awesome.css" />
        <?php 
		include '../includes/dbc.php';
?>
        
        
        
       
       
       
  <div class="col-sm-12" style="clear:both; ">
          <div class="well">
         
	     
    <?php
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
  $doU=$con->query("SELECT * FROM finals WHERE id='".$_GET['update']."'") or die(mysqli_error($con));
  while($nam=$doU->fetch_assoc()){
	 $sha=$nam['name'];
	  $dis=$nam['disc'];
	  $cp=$nam['cost'];
	  $dis=$nam['disc'];
	  $sp=$nam['sp'];
	  $id=$nam['id'];
  }
  
  // now update
  if(isset($_POST['Update'])){
	  $shape=$_POST['name'];;
	  $Dis=$_POST['disc'];
	   $C=$_POST['cost'];
	   $S=$_POST['sp'];
	   $idd=$_POST['id'];
	 $id=$_GET['update'];
	  $dfGu12=$con->query("UPDATE finals SET name='$shape',disc='$Dis',cost='$C',sp='$S' where id='$idd'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Updated. Thank You</div>";
	   
		 echo '<meta http-equiv="Refresh" content="0; url=?add_goods.php ">';

  }
 
  
?>
  <?PHP
						 echo $message;
						?>
   

                        <form class="form-inline" action="" method="post">
                                       
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"></label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd" value="<?php echo $sha; ?>" name="name" placeholder="Product"  >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $dis; ?>" name="disc" required placeholder="Units of Measureemts:" >
    </div>
  </div>
 


   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $cp; ?>" name="cost" required placeholder="Cost Price:" style="width:120px" >
    </div>
  </div>
 





    
                         <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"></label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd" value="<?php echo $sp; ?>" name="sp" placeholder="Selling Price:" style="width:120px" >
    </div>
  </div>  
  
  
  <input type="hidden"  value="<?php echo $id; ?>" name="id" >
  
  
  
  
  
 <button class="btn btn-primary" name="Update"><i class="icon-pencil icon-white"></i> UPDATE</button>
  
  
   
  </div>
  </div>

  </form>


                        <div class="panel-body" style="clear:both"  >
                        
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
        <th>Category</th>
        <th>Cost Price</th>
        <th>Selling Price</th>
        <th>ACTION</th>
        
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php while($df=$d->fetch_assoc()){ ?>

      <tr>
       
            <td><?php  echo $i++; ?></td>
        <td><?php echo $name=$df['name']; ?></td>
        <td><?php echo $df['qty']; ?></td>
         <td><?php echo $df['disc']; ?></td>
         <td><?php echo $df['cost']; ?></td>
 <td><?php echo $df['sp']; ?></td>


         <td>
            <a href="?add_goods&link=Adding Goods&update=<?php echo $df['id']; ?>">
        <button class="btn btn-primary"><i class="icon-pencil icon-white"></i>  UPDATE NAME OR PRICE </button>    
          <a href="?add_goods&link=Adding Goods&delete=<?php echo $df['id']; ?>"onclick="return (confirm('Are you sure you wish to delete this item'))">
     <button class="btn btn-danger"><i class="icon-remove icon-white"></i> DELETE</button>
     
        
</a></td>

       
      
                                            
                                        </tr>
                                     
                                       <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            </div>




        </div>
       <!--END PAGE CONTENT -->


    </div>

     <!--END MAIN WRAPPER -->

    </div>
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
    
    </div>
   </div>