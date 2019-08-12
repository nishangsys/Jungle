
    <!-- END PAGE LEVEL  STYLES -->
       <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    
    
    <?php
$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item

if(isset($_POST['saves'])){
$shape=$_POST['name'];
$disc=$_POST['disc'];
$cost=$_POST['cost'];
$qty=$_POST['qty'];
$sp=$_POST['sp'];
//$df=$con->query("DELETE FROM finals where name='$shape' and disc='$disc' and branch='$branch'") or die(mysqli_error($con));
$o=$con->query("SELECT * FROM finals WHERE name='$shape' ") or die(mysqli_error($con));

if(mysqli_num_rows($o)>0){
	echo "<script>alert('ERROR. $shape is already registered use a different Name ')</script>";
}
else {



$do=$con->query("INSERT INTO finals SET name='$shape',disc='$disc',branch='$branch',qty='$qty',cost='$cost',sp='$sp'  ") or die(mysqli_error($con));
$message= "<div class='alert alert-success'>".$_POST['name']." Successfully Registered. Thank You</div>";
}
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
   

                        <form class="form-inline" action="" method="post">
                                       
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"></label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd" value="<?php echo $_GET['product']; ?>" name="name" placeholder="Product Name" style="border:1px solid#000" >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php 
	   
  $d=$con->query("SELECT * FROM codes where id='1'  ") or die(mysqli_error($con));
  while($v=$d->fetch_assoc()){
	  $l=$v['l']+1;
	  $code="NIS".$l."".$dy;
  }
  
  ; ?>" name="code" required placeholder="Category:" readonly style="border:2px solid#f00" >
    </div>
  </div>
 




   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $cp; ?>" name="cost"  placeholder="Cost Price:" style="border:1px solid#000"   >
    </div>
  </div>
 





    
                         <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"></label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd"  name="sp" placeholder="Selling Price:" style="border:1px solid#000"  >
    </div>
  </div>  
  
  
      <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"></label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" id="pwd"  name="qty" placeholder="Qty:" style="width:60px; border:1px solid#000" >
    </div>
  </div>  
  
  
  
  
  
  
  
  
  <button type="submit" name="saves" class="btn btn-info">Save</button>
  
  
    
  <?php
  if($_GET['update']!=''){
	  echo '<button class="btn btn-primary"><i class="icon-pencil icon-white"></i> UPDATE</button>';
  }
  ?>
  </div>
  </div>

  </form>

<a href="?multi_add&MULTI STOCK">
<button class="btn btn-info"><i class="icon-plus icon-white"></i> MULTI STOCK</button></a></span> 

 <iframe src="../content/all_ourgoods12.php" allowFullScreen style="width: 70%;
			float:left;
			background: #FFF;
            border:none;
            height:900px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
	 