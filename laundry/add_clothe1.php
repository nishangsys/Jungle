
  
  
   <div class="row">
 
        <div class="col-sm-12">
        
        
         
    <?php
	$_POST = array_map("ucwords", $_POST);
	
	////////////////insert item

if(isset($_POST['OK'])){
$shape=$_POST['name'];
$code=$_POST['code'];


$df122=$con->query("DELETE FROM clothes where name='$shape' and code='$code' and type='1' ") or die(mysqli_error($con));




$do=$con->query("INSERT INTO clothes SET name='$shape',code='$code',type='1'  ") or die(mysqli_error($con));
$message= "<div class='alert alert-success'>".$_POST['name']." Successfully Registered. Thank You</div>";
	echo '<meta http-equiv="Refresh" content="0; url=?add_clothe1">';
	 
}

///////////////delete item
if(isset($_GET['delete'])){
	 $id=$_GET['delete'];
	  $dfG=$con->query("DELETE FROM names where id='$id'") or die(mysqli_error($con));
	   $message= "<div class='alert alert-success'>Item Successfully Deleted. Thank You</div>";

  }
  
 
  
?>
  <?PHP
						 echo $message;
						?>
                        
                        <div class="alert alert-info">
  <strong>Define Prices for Measurements in KG</strong> 
</div>

  <form class="form-horizontal" role="form" method="post" action="" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Clothe Names</label>
    <div class="col-sm-10"> 
      <input type="text" required class="form-control" id="pwd" value="<?php echo $sha; ?>" name="name" placeholder="Name:" >
    </div>
  </div>
  
  
  
   
  
  
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Price </label>
    <div class="col-sm-10"> 
      <input type="number"  class="form-control" id="pwd" value="<?php echo $contact; ?>" name="code" placeholder="Price" required="required" >
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

 
        <div class="col-sm-12">
 <iframe src="../laundry/all_clothes12.php" allowFullScreen style="width: 97%;
			float:left;
			background: #FFF;
            border:none;
            height:900px;
            overflow:hidden;
			border-radius: 5px;
		
 "></iframe>
          </div>
          </div>
  
  
  