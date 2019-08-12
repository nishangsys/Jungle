
  
  
   <div class="row">
 
        <div class="col-sm-12">
        
        
         
    <?php
	$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item

if(isset($_POST['OK'])){
$shape=$_POST['name'];
$disc=$_POST['tel'];
$cost=$_POST['cost'];
$qty=$_POST['qty'];
$add=$_POST['addr'];

$df122=$con->query("DELETE FROM names where name='$shape' ") or die(mysqli_error($con));




$do=$con->query("INSERT INTO names SET name='$shape',sector='$disc',dept='$add'  ") or die(mysqli_error($con));
$message= "<div class='alert alert-success'>".$_POST['name']." Successfully Registered. Thank You</div>";
	echo '<meta http-equiv="Refresh" stock="0; url=?chose_clients&link=Serve a Client">';
	 
}

///////////////delete item
if(isset($_GET['delete'])){
	 $id=$_GET['delete'];
	  $dfG=$con->query("DELETE FROM names where id='$id'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Deleted. Thank You</div>";

  }
  
  /////////////for updates
  $doU=$con->query("SELECT * FROM names WHERE id='".$_GET['update']."'") or die(mysqli_error($con));
  while($nam=$doU->fetch_assoc()){
	 $sha=$nam['name'];
	  $dis=$nam['disc'];
	  $contact=$nam['sector'];
	  $address=$nam['dept'];
	  $sp=$nam['sp'];
  }
  
  // now update
  if(isset($_POST['Update'])){
	  $shape=$_POST['name'];;
	  $tel=$_POST['tel'];
	   $addr=$_POST['addr'];
	
	  $dfGu=$con->query("UPDATE names SET name='$shape',sector='$tel',dept='$addr' where id='".$_GET['update']."'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Updated. Thank You</div>";

  }
 
  
?>
  <?PHP
						 echo $message;
						?>

  <form class="form-horizontal" role="form" method="post" action="" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Customer's Names</label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd" value="<?php echo $sha; ?>" name="name" placeholder="Name:" >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> Contact</label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $contact; ?>" name="tel" required placeholder="Contact:" >
    </div>
  </div>
 


   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Address </label>
    <div class="col-sm-10"> 
      <input type="text"  class="form-control" id="pwd" value="<?php echo $address; ?>" name="addr"  placeholder="Address:" >
    </div>
  </div>
 
 <div class="form-group">
    <label class="control-label col-sm-2" for="pwd"> </label>
    <div class="col-sm-10"> 
  <button type="submit" name="OK" class="btn btn-info">SAVE</button>
  </div>
  </div>

    
  <?php
  if($_GET['update']!=''){
	  echo '<button type="submit" name="Update" class="btn btn-primary">UPDATE</button>';
  }
  ?>
 
  </form>





</div>





